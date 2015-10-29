// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphUser;
import com.facebook.widget.WebDialog;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            AppEventsLogger, SessionLoginBehavior, FacebookException, ResContainer, 
//            Request, HttpMethod, AccessToken, RequestBatch, 
//            SessionDefaultAudience, GetTokenClient, AccessTokenSource, FacebookOperationCanceledException, 
//            FacebookServiceException, FacebookRequestError, Response

class AuthorizationClient
    implements Serializable
{
    static class AuthDialogBuilder extends com.facebook.widget.WebDialog.Builder
    {

        private static final String OAUTH_DIALOG = "oauth";
        static final String REDIRECT_URI = "fbconnect://success";
        private String e2e;

        public WebDialog build()
        {
            Bundle bundle = getParameters();
            bundle.putString("redirect_uri", "fbconnect://success");
            bundle.putString("client_id", getApplicationId());
            bundle.putString("e2e", e2e);
            return new WebDialog(getContext(), "oauth", bundle, getTheme(), getListener());
        }

        public AuthDialogBuilder setE2E(String s)
        {
            e2e = s;
            return this;
        }

        public AuthDialogBuilder(Context context1, String s, Bundle bundle)
        {
            super(context1, s, "oauth", bundle);
        }
    }

    abstract class AuthHandler
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        Map methodLoggingExtras;
        final AuthorizationClient this$0;

        protected void addLoggingExtra(String s, Object obj)
        {
            if (methodLoggingExtras == null)
            {
                methodLoggingExtras = new HashMap();
            }
            Map map = methodLoggingExtras;
            if (obj == null)
            {
                obj = null;
            } else
            {
                obj = obj.toString();
            }
            map.put(s, obj);
        }

        void cancel()
        {
        }

        abstract String getNameForLogging();

        boolean needsInternetPermission()
        {
            return false;
        }

        boolean needsRestart()
        {
            return false;
        }

        boolean onActivityResult(int i, int j, Intent intent)
        {
            return false;
        }

        abstract boolean tryAuthorize(AuthorizationRequest authorizationrequest);

        AuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }

    static class AuthorizationRequest
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private final String applicationId;
        private final String authId;
        private final SessionDefaultAudience defaultAudience;
        private boolean isLegacy;
        private final SessionLoginBehavior loginBehavior;
        private List permissions;
        private final String previousAccessToken;
        private final int requestCode;
        private final transient StartActivityDelegate startActivityDelegate;

        String getApplicationId()
        {
            return applicationId;
        }

        String getAuthId()
        {
            return authId;
        }

        SessionDefaultAudience getDefaultAudience()
        {
            return defaultAudience;
        }

        SessionLoginBehavior getLoginBehavior()
        {
            return loginBehavior;
        }

        List getPermissions()
        {
            return permissions;
        }

        String getPreviousAccessToken()
        {
            return previousAccessToken;
        }

        int getRequestCode()
        {
            return requestCode;
        }

        StartActivityDelegate getStartActivityDelegate()
        {
            return startActivityDelegate;
        }

        boolean isLegacy()
        {
            return isLegacy;
        }

        boolean needsNewTokenValidation()
        {
            return previousAccessToken != null && !isLegacy;
        }

        void setIsLegacy(boolean flag)
        {
            isLegacy = flag;
        }

        void setPermissions(List list)
        {
            permissions = list;
        }

        AuthorizationRequest(SessionLoginBehavior sessionloginbehavior, int i, boolean flag, List list, SessionDefaultAudience sessiondefaultaudience, String s, String s1, 
                StartActivityDelegate startactivitydelegate, String s2)
        {
            isLegacy = false;
            loginBehavior = sessionloginbehavior;
            requestCode = i;
            isLegacy = flag;
            permissions = list;
            defaultAudience = sessiondefaultaudience;
            applicationId = s;
            previousAccessToken = s1;
            startActivityDelegate = startactivitydelegate;
            authId = s2;
        }
    }

    static interface BackgroundProcessingListener
    {

        public abstract void onBackgroundProcessingStarted();

        public abstract void onBackgroundProcessingStopped();
    }

    class GetTokenAuthHandler extends AuthHandler
    {

        private static final long serialVersionUID = 1L;
        private transient GetTokenClient getTokenClient;
        final AuthorizationClient this$0;

        void cancel()
        {
            if (getTokenClient != null)
            {
                getTokenClient.cancel();
                getTokenClient = null;
            }
        }

        String getNameForLogging()
        {
            return "get_token";
        }

        void getTokenCompleted(AuthorizationRequest authorizationrequest, Bundle bundle)
        {
            getTokenClient = null;
            notifyBackgroundProcessingStop();
            if (bundle == null) goto _L2; else goto _L1
_L1:
            ArrayList arraylist;
            Object obj;
            arraylist = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            obj = authorizationrequest.getPermissions();
            if (arraylist != null && (obj == null || arraylist.containsAll(((Collection) (obj)))))
            {
                authorizationrequest = AccessToken.createFromNativeLogin(bundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE);
                authorizationrequest = Result.createTokenResult(pendingRequest, authorizationrequest);
                completeAndValidate(authorizationrequest);
                return;
            }
            bundle = new ArrayList();
            obj = ((List) (obj)).iterator();
_L6:
            if (((Iterator) (obj)).hasNext()) goto _L4; else goto _L3
_L3:
            if (!bundle.isEmpty())
            {
                addLoggingExtra("new_permissions", TextUtils.join(",", bundle));
            }
            authorizationrequest.setPermissions(bundle);
_L2:
            tryNextHandler();
            return;
_L4:
            String s = (String)((Iterator) (obj)).next();
            if (!arraylist.contains(s))
            {
                bundle.add(s);
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        boolean tryAuthorize(AuthorizationRequest authorizationrequest)
        {
            getTokenClient = new GetTokenClient(context, authorizationrequest.getApplicationId());
            if (!getTokenClient.start())
            {
                return false;
            } else
            {
                notifyBackgroundProcessingStart();
                authorizationrequest = authorizationrequest. new com.facebook.internal.PlatformServiceClient.CompletedListener() {

                    final GetTokenAuthHandler this$1;
                    private final AuthorizationRequest val$request;

                    public void completed(Bundle bundle)
                    {
                        getTokenCompleted(request, bundle);
                    }

            
            {
                this$1 = final_gettokenauthhandler;
                request = AuthorizationRequest.this;
                super();
            }
                };
                getTokenClient.setCompletedListener(authorizationrequest);
                return true;
            }
        }

        GetTokenAuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }

    abstract class KatanaAuthHandler extends AuthHandler
    {

        private static final long serialVersionUID = 1L;
        final AuthorizationClient this$0;

        protected boolean tryIntent(Intent intent, int i)
        {
            if (intent == null)
            {
                return false;
            }
            try
            {
                getStartActivityDelegate().startActivityForResult(intent, i);
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent)
            {
                return false;
            }
            return true;
        }

        KatanaAuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }

    class KatanaLoginDialogAuthHandler extends KatanaAuthHandler
    {

        private static final long serialVersionUID = 1L;
        private String applicationId;
        private String callId;
        final AuthorizationClient this$0;

        private Result createCancelOrErrorResult(AuthorizationRequest authorizationrequest, Intent intent)
        {
            Object obj = intent.getExtras();
            String s = ((Bundle) (obj)).getString("com.facebook.platform.status.ERROR_TYPE");
            if ("UserCanceled".equals(s) || "PermissionDenied".equals(s))
            {
                return Result.createCancelResult(authorizationrequest, intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"));
            }
            String s1 = ((Bundle) (obj)).getString("com.facebook.platform.status.ERROR_JSON");
            Object obj1 = null;
            obj = obj1;
            if (s1 != null)
            {
                try
                {
                    obj = (new JSONObject(s1)).getString("error_code");
                }
                catch (JSONException jsonexception)
                {
                    jsonexception = obj1;
                }
            }
            return Result.createErrorResult(authorizationrequest, s, intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"), ((String) (obj)));
        }

        private Result handleResultOk(Intent intent)
        {
            Bundle bundle = intent.getExtras();
            String s = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
            if (s == null)
            {
                return Result.createTokenResult(pendingRequest, AccessToken.createFromNativeLogin(bundle, AccessTokenSource.FACEBOOK_APPLICATION_NATIVE));
            }
            if ("ServiceDisabled".equals(s))
            {
                addLoggingExtra("service_disabled", "1");
                return null;
            } else
            {
                return createCancelOrErrorResult(pendingRequest, intent);
            }
        }

        private void logEvent(String s, String s1, String s2)
        {
            if (s2 != null)
            {
                AppEventsLogger appeventslogger = AppEventsLogger.newLogger(context, applicationId);
                Bundle bundle = new Bundle();
                bundle.putString("app_id", applicationId);
                bundle.putString("action_id", s2);
                bundle.putLong(s1, System.currentTimeMillis());
                appeventslogger.logSdkEvent(s, null, bundle);
            }
        }

        String getNameForLogging()
        {
            return "katana_login_dialog";
        }

        boolean onActivityResult(int i, int j, Intent intent)
        {
            logEvent("fb_dialogs_native_login_dialog_complete", "fb_native_login_dialog_complete_time", callId);
            if (intent == null)
            {
                intent = Result.createCancelResult(pendingRequest, "Operation canceled");
            } else
            if (NativeProtocol.isServiceDisabledResult20121101(intent))
            {
                intent = null;
            } else
            if (j == 0)
            {
                intent = createCancelOrErrorResult(pendingRequest, intent);
            } else
            if (j != -1)
            {
                intent = Result.createErrorResult(pendingRequest, "Unexpected resultCode from authorization.", null);
            } else
            {
                intent = handleResultOk(intent);
            }
            if (intent != null)
            {
                completeAndValidate(intent);
            } else
            {
                tryNextHandler();
            }
            return true;
        }

        boolean tryAuthorize(AuthorizationRequest authorizationrequest)
        {
            applicationId = authorizationrequest.getApplicationId();
            Intent intent = NativeProtocol.createLoginDialog20121101Intent(context, authorizationrequest.getApplicationId(), new ArrayList(authorizationrequest.getPermissions()), authorizationrequest.getDefaultAudience().getNativeProtocolAudience());
            if (intent == null)
            {
                return false;
            } else
            {
                callId = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
                addLoggingExtra("call_id", callId);
                addLoggingExtra("protocol_version", Integer.valueOf(intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0)));
                addLoggingExtra("permissions", TextUtils.join(",", intent.getStringArrayListExtra("com.facebook.platform.extra.PERMISSIONS")));
                addLoggingExtra("write_privacy", intent.getStringExtra("com.facebook.platform.extra.WRITE_PRIVACY"));
                logEvent("fb_dialogs_native_login_dialog_start", "fb_native_login_dialog_start_time", callId);
                return tryIntent(intent, authorizationrequest.getRequestCode());
            }
        }

        KatanaLoginDialogAuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }

    class KatanaProxyAuthHandler extends KatanaAuthHandler
    {

        private static final long serialVersionUID = 1L;
        private String applicationId;
        final AuthorizationClient this$0;

        private Result handleResultOk(Intent intent)
        {
            Result result = null;
            Bundle bundle = intent.getExtras();
            String s = bundle.getString("error");
            intent = s;
            if (s == null)
            {
                intent = bundle.getString("error_type");
            }
            String s2 = bundle.getString("error_code");
            String s1 = bundle.getString("error_message");
            s = s1;
            if (s1 == null)
            {
                s = bundle.getString("error_description");
            }
            s1 = bundle.getString("e2e");
            if (!Utility.isNullOrEmpty(s1))
            {
                logWebLoginCompleted(applicationId, s1);
            }
            if (intent == null && s2 == null && s == null)
            {
                intent = AccessToken.createFromWebBundle(pendingRequest.getPermissions(), bundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB);
                result = Result.createTokenResult(pendingRequest, intent);
            } else
            if (!ServerProtocol.errorsProxyAuthDisabled.contains(intent))
            {
                if (ServerProtocol.errorsUserCanceled.contains(intent))
                {
                    return Result.createCancelResult(pendingRequest, null);
                } else
                {
                    return Result.createErrorResult(pendingRequest, intent, s, s2);
                }
            }
            return result;
        }

        String getNameForLogging()
        {
            return "katana_proxy_auth";
        }

        boolean onActivityResult(int i, int j, Intent intent)
        {
            if (intent == null)
            {
                intent = Result.createCancelResult(pendingRequest, "Operation canceled");
            } else
            if (j == 0)
            {
                intent = Result.createCancelResult(pendingRequest, intent.getStringExtra("error"));
            } else
            if (j != -1)
            {
                intent = Result.createErrorResult(pendingRequest, "Unexpected resultCode from authorization.", null);
            } else
            {
                intent = handleResultOk(intent);
            }
            if (intent != null)
            {
                completeAndValidate(intent);
            } else
            {
                tryNextHandler();
            }
            return true;
        }

        boolean tryAuthorize(AuthorizationRequest authorizationrequest)
        {
            applicationId = authorizationrequest.getApplicationId();
            String s = AuthorizationClient.getE2E();
            Intent intent = NativeProtocol.createProxyAuthIntent(context, authorizationrequest.getApplicationId(), authorizationrequest.getPermissions(), s);
            addLoggingExtra("e2e", s);
            return tryIntent(intent, authorizationrequest.getRequestCode());
        }

        KatanaProxyAuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }

    static interface OnCompletedListener
    {

        public abstract void onCompleted(Result result);
    }

    static class Result
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        final Code code;
        final String errorCode;
        final String errorMessage;
        Map loggingExtras;
        final AuthorizationRequest request;
        final AccessToken token;

        static Result createCancelResult(AuthorizationRequest authorizationrequest, String s)
        {
            return new Result(authorizationrequest, Code.CANCEL, null, s, null);
        }

        static Result createErrorResult(AuthorizationRequest authorizationrequest, String s, String s1)
        {
            return createErrorResult(authorizationrequest, s, s1, null);
        }

        static Result createErrorResult(AuthorizationRequest authorizationrequest, String s, String s1, String s2)
        {
            s = TextUtils.join(": ", Utility.asListNoNulls(new String[] {
                s, s1
            }));
            return new Result(authorizationrequest, Code.ERROR, null, s, s2);
        }

        static Result createTokenResult(AuthorizationRequest authorizationrequest, AccessToken accesstoken)
        {
            return new Result(authorizationrequest, Code.SUCCESS, accesstoken, null, null);
        }

        private Result(AuthorizationRequest authorizationrequest, Code code1, AccessToken accesstoken, String s, String s1)
        {
            request = authorizationrequest;
            token = accesstoken;
            errorMessage = s;
            code = code1;
            errorCode = s1;
        }
    }

    static final class Result.Code extends Enum
    {

        public static final Result.Code CANCEL;
        private static final Result.Code ENUM$VALUES[];
        public static final Result.Code ERROR;
        public static final Result.Code SUCCESS;
        private final String loggingValue;

        public static Result.Code valueOf(String s)
        {
            return (Result.Code)Enum.valueOf(com/facebook/AuthorizationClient$Result$Code, s);
        }

        public static Result.Code[] values()
        {
            Result.Code acode[] = ENUM$VALUES;
            int i = acode.length;
            Result.Code acode1[] = new Result.Code[i];
            System.arraycopy(acode, 0, acode1, 0, i);
            return acode1;
        }

        String getLoggingValue()
        {
            return loggingValue;
        }

        static 
        {
            SUCCESS = new Result.Code("SUCCESS", 0, "success");
            CANCEL = new Result.Code("CANCEL", 1, "cancel");
            ERROR = new Result.Code("ERROR", 2, "error");
            ENUM$VALUES = (new Result.Code[] {
                SUCCESS, CANCEL, ERROR
            });
        }

        private Result.Code(String s, int i, String s1)
        {
            super(s, i);
            loggingValue = s1;
        }
    }

    static interface StartActivityDelegate
    {

        public abstract Activity getActivityContext();

        public abstract void startActivityForResult(Intent intent, int i);
    }

    class WebViewAuthHandler extends AuthHandler
    {

        private static final long serialVersionUID = 1L;
        private String applicationId;
        private String e2e;
        private transient WebDialog loginDialog;
        final AuthorizationClient this$0;

        private String loadCookieToken()
        {
            return getStartActivityDelegate().getActivityContext().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
        }

        private void saveCookieToken(String s)
        {
            android.content.SharedPreferences.Editor editor = getStartActivityDelegate().getActivityContext().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit();
            editor.putString("TOKEN", s);
            if (!editor.commit())
            {
                Utility.logd("Facebook-AuthorizationClient", "Could not update saved web view auth handler token.");
            }
        }

        void cancel()
        {
            if (loginDialog != null)
            {
                loginDialog.dismiss();
                loginDialog = null;
            }
        }

        String getNameForLogging()
        {
            return "web_view";
        }

        boolean needsInternetPermission()
        {
            return true;
        }

        boolean needsRestart()
        {
            return true;
        }

        void onWebDialogComplete(AuthorizationRequest authorizationrequest, Bundle bundle, FacebookException facebookexception)
        {
            if (bundle != null)
            {
                if (bundle.containsKey("e2e"))
                {
                    e2e = bundle.getString("e2e");
                }
                bundle = AccessToken.createFromWebBundle(authorizationrequest.getPermissions(), bundle, AccessTokenSource.WEB_VIEW);
                authorizationrequest = Result.createTokenResult(pendingRequest, bundle);
                CookieSyncManager.createInstance(context).sync();
                saveCookieToken(bundle.getToken());
            } else
            if (facebookexception instanceof FacebookOperationCanceledException)
            {
                authorizationrequest = Result.createCancelResult(pendingRequest, "User canceled log in.");
            } else
            {
                e2e = null;
                authorizationrequest = null;
                bundle = facebookexception.getMessage();
                if (facebookexception instanceof FacebookServiceException)
                {
                    bundle = ((FacebookServiceException)facebookexception).getRequestError();
                    authorizationrequest = String.format("%d", new Object[] {
                        Integer.valueOf(bundle.getErrorCode())
                    });
                    bundle = bundle.toString();
                }
                authorizationrequest = Result.createErrorResult(pendingRequest, null, bundle, authorizationrequest);
            }
            if (!Utility.isNullOrEmpty(e2e))
            {
                logWebLoginCompleted(applicationId, e2e);
            }
            completeAndValidate(authorizationrequest);
        }

        boolean tryAuthorize(AuthorizationRequest authorizationrequest)
        {
            applicationId = authorizationrequest.getApplicationId();
            Bundle bundle = new Bundle();
            if (!Utility.isNullOrEmpty(authorizationrequest.getPermissions()))
            {
                String s = TextUtils.join(",", authorizationrequest.getPermissions());
                bundle.putString("scope", s);
                addLoggingExtra("scope", s);
            }
            String s1 = authorizationrequest.getPreviousAccessToken();
            if (!Utility.isNullOrEmpty(s1) && s1.equals(loadCookieToken()))
            {
                bundle.putString("access_token", s1);
                addLoggingExtra("access_token", "1");
            } else
            {
                Utility.clearFacebookCookies(context);
                addLoggingExtra("access_token", "0");
            }
            authorizationrequest = authorizationrequest. new com.facebook.widget.WebDialog.OnCompleteListener() {

                final WebViewAuthHandler this$1;
                private final AuthorizationRequest val$request;

                public void onComplete(Bundle bundle, FacebookException facebookexception)
                {
                    onWebDialogComplete(request, bundle, facebookexception);
                }

            
            {
                this$1 = final_webviewauthhandler;
                request = AuthorizationRequest.this;
                super();
            }
            };
            e2e = AuthorizationClient.getE2E();
            addLoggingExtra("e2e", e2e);
            loginDialog = ((com.facebook.widget.WebDialog.Builder)(new AuthDialogBuilder(getStartActivityDelegate().getActivityContext(), applicationId, bundle)).setE2E(e2e).setOnCompleteListener(authorizationrequest)).build();
            loginDialog.show();
            return true;
        }

        WebViewAuthHandler()
        {
            this$0 = AuthorizationClient.this;
            super();
        }
    }


    static final String EVENT_EXTRAS_APP_CALL_ID = "call_id";
    static final String EVENT_EXTRAS_DEFAULT_AUDIENCE = "default_audience";
    static final String EVENT_EXTRAS_IS_LEGACY = "is_legacy";
    static final String EVENT_EXTRAS_LOGIN_BEHAVIOR = "login_behavior";
    static final String EVENT_EXTRAS_MISSING_INTERNET_PERMISSION = "no_internet_permission";
    static final String EVENT_EXTRAS_NEW_PERMISSIONS = "new_permissions";
    static final String EVENT_EXTRAS_NOT_TRIED = "not_tried";
    static final String EVENT_EXTRAS_PERMISSIONS = "permissions";
    static final String EVENT_EXTRAS_PROTOCOL_VERSION = "protocol_version";
    static final String EVENT_EXTRAS_REQUEST_CODE = "request_code";
    static final String EVENT_EXTRAS_SERVICE_DISABLED = "service_disabled";
    static final String EVENT_EXTRAS_TRY_LEGACY = "try_legacy";
    static final String EVENT_EXTRAS_TRY_LOGIN_ACTIVITY = "try_login_activity";
    static final String EVENT_EXTRAS_WRITE_PRIVACY = "write_privacy";
    static final String EVENT_NAME_LOGIN_COMPLETE = "fb_mobile_login_complete";
    private static final String EVENT_NAME_LOGIN_METHOD_COMPLETE = "fb_mobile_login_method_complete";
    private static final String EVENT_NAME_LOGIN_METHOD_START = "fb_mobile_login_method_start";
    static final String EVENT_NAME_LOGIN_START = "fb_mobile_login_start";
    static final String EVENT_PARAM_AUTH_LOGGER_ID = "0_auth_logger_id";
    static final String EVENT_PARAM_ERROR_CODE = "4_error_code";
    static final String EVENT_PARAM_ERROR_MESSAGE = "5_error_message";
    static final String EVENT_PARAM_EXTRAS = "6_extras";
    static final String EVENT_PARAM_LOGIN_RESULT = "2_result";
    static final String EVENT_PARAM_METHOD = "3_method";
    private static final String EVENT_PARAM_METHOD_RESULT_SKIPPED = "skipped";
    static final String EVENT_PARAM_TIMESTAMP = "1_timestamp_ms";
    private static final String TAG = "Facebook-AuthorizationClient";
    private static final String WEB_VIEW_AUTH_HANDLER_STORE = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
    private static final String WEB_VIEW_AUTH_HANDLER_TOKEN_KEY = "TOKEN";
    private static final long serialVersionUID = 1L;
    private transient AppEventsLogger appEventsLogger;
    transient BackgroundProcessingListener backgroundProcessingListener;
    transient boolean checkedInternetPermission;
    transient Context context;
    AuthHandler currentHandler;
    List handlersToTry;
    Map loggingExtras;
    transient OnCompletedListener onCompletedListener;
    AuthorizationRequest pendingRequest;
    transient StartActivityDelegate startActivityDelegate;

    AuthorizationClient()
    {
    }

    private void addLoggingExtra(String s, String s1, boolean flag)
    {
        if (loggingExtras == null)
        {
            loggingExtras = new HashMap();
        }
        String s2 = s1;
        if (loggingExtras.containsKey(s))
        {
            s2 = s1;
            if (flag)
            {
                s2 = (new StringBuilder(String.valueOf((String)loggingExtras.get(s)))).append(",").append(s1).toString();
            }
        }
        loggingExtras.put(s, s2);
    }

    private void completeWithFailure()
    {
        complete(Result.createErrorResult(pendingRequest, "Login attempt failed.", null));
    }

    private AppEventsLogger getAppEventsLogger()
    {
        if (appEventsLogger == null || appEventsLogger.getApplicationId() != pendingRequest.getApplicationId())
        {
            appEventsLogger = AppEventsLogger.newLogger(context, pendingRequest.getApplicationId());
        }
        return appEventsLogger;
    }

    private static String getE2E()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("init", System.currentTimeMillis());
        }
        catch (JSONException jsonexception) { }
        return jsonobject.toString();
    }

    private List getHandlerTypes(AuthorizationRequest authorizationrequest)
    {
        ArrayList arraylist = new ArrayList();
        SessionLoginBehavior sessionloginbehavior = authorizationrequest.getLoginBehavior();
        if (sessionloginbehavior.allowsKatanaAuth())
        {
            if (!authorizationrequest.isLegacy())
            {
                arraylist.add(new GetTokenAuthHandler());
                arraylist.add(new KatanaLoginDialogAuthHandler());
            }
            arraylist.add(new KatanaProxyAuthHandler());
        }
        if (sessionloginbehavior.allowsWebViewAuth())
        {
            arraylist.add(new WebViewAuthHandler());
        }
        return arraylist;
    }

    private void logAuthorizationMethodComplete(String s, Result result, Map map)
    {
        logAuthorizationMethodComplete(s, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private void logAuthorizationMethodComplete(String s, String s1, String s2, String s3, Map map)
    {
        if (pendingRequest != null) goto _L2; else goto _L1
_L1:
        s1 = newAuthorizationLoggingBundle("");
        s1.putString("2_result", Result.Code.ERROR.getLoggingValue());
        s1.putString("5_error_message", "Unexpected call to logAuthorizationMethodComplete with null pendingRequest.");
_L4:
        s1.putString("3_method", s);
        s1.putLong("1_timestamp_ms", System.currentTimeMillis());
        getAppEventsLogger().logSdkEvent("fb_mobile_login_method_complete", null, s1);
        return;
_L2:
        Bundle bundle = newAuthorizationLoggingBundle(pendingRequest.getAuthId());
        if (s1 != null)
        {
            bundle.putString("2_result", s1);
        }
        if (s2 != null)
        {
            bundle.putString("5_error_message", s2);
        }
        if (s3 != null)
        {
            bundle.putString("4_error_code", s3);
        }
        s1 = bundle;
        if (map != null)
        {
            s1 = bundle;
            if (!map.isEmpty())
            {
                bundle.putString("6_extras", (new JSONObject(map)).toString());
                s1 = bundle;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void logAuthorizationMethodStart(String s)
    {
        Bundle bundle = newAuthorizationLoggingBundle(pendingRequest.getAuthId());
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("3_method", s);
        getAppEventsLogger().logSdkEvent("fb_mobile_login_method_start", null, bundle);
    }

    private void logWebLoginCompleted(String s, String s1)
    {
        AppEventsLogger appeventslogger = AppEventsLogger.newLogger(context, s);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", s1);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", s);
        appeventslogger.logSdkEvent("fb_dialogs_web_login_dialog_complete", null, bundle);
    }

    static Bundle newAuthorizationLoggingBundle(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", s);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    private void notifyBackgroundProcessingStart()
    {
        if (backgroundProcessingListener != null)
        {
            backgroundProcessingListener.onBackgroundProcessingStarted();
        }
    }

    private void notifyBackgroundProcessingStop()
    {
        if (backgroundProcessingListener != null)
        {
            backgroundProcessingListener.onBackgroundProcessingStopped();
        }
    }

    private void notifyOnCompleteListener(Result result)
    {
        if (onCompletedListener != null)
        {
            onCompletedListener.onCompleted(result);
        }
    }

    void authorize(AuthorizationRequest authorizationrequest)
    {
        if (authorizationrequest != null)
        {
            if (pendingRequest != null)
            {
                throw new FacebookException("Attempted to authorize while a request is pending.");
            }
            if (!authorizationrequest.needsNewTokenValidation() || checkInternetPermission())
            {
                pendingRequest = authorizationrequest;
                handlersToTry = getHandlerTypes(authorizationrequest);
                tryNextHandler();
                return;
            }
        }
    }

    void cancelCurrentHandler()
    {
        if (currentHandler != null)
        {
            currentHandler.cancel();
        }
    }

    boolean checkInternetPermission()
    {
        if (checkedInternetPermission)
        {
            return true;
        }
        if (checkPermission("android.permission.INTERNET") != 0)
        {
            Object obj = ResContainer.getResContainer();
            String s = context.getString(((ResContainer) (obj)).getResourceId(context, ResContainer.ResType.STRING, "com_facebook_internet_permission_error_title"));
            obj = context.getString(((ResContainer) (obj)).getResourceId(context, ResContainer.ResType.STRING, "com_facebook_internet_permission_error_message"));
            complete(Result.createErrorResult(pendingRequest, s, ((String) (obj))));
            return false;
        } else
        {
            checkedInternetPermission = true;
            return true;
        }
    }

    int checkPermission(String s)
    {
        return context.checkCallingOrSelfPermission(s);
    }

    void complete(Result result)
    {
        if (currentHandler != null)
        {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), result, currentHandler.methodLoggingExtras);
        }
        if (loggingExtras != null)
        {
            result.loggingExtras = loggingExtras;
        }
        handlersToTry = null;
        currentHandler = null;
        pendingRequest = null;
        loggingExtras = null;
        notifyOnCompleteListener(result);
    }

    void completeAndValidate(Result result)
    {
        if (result.token != null && pendingRequest.needsNewTokenValidation())
        {
            validateSameFbidAndFinish(result);
            return;
        } else
        {
            complete(result);
            return;
        }
    }

    void continueAuth()
    {
        if (pendingRequest == null || currentHandler == null)
        {
            throw new FacebookException("Attempted to continue authorization without a pending request.");
        }
        if (currentHandler.needsRestart())
        {
            currentHandler.cancel();
            tryCurrentHandler();
        }
    }

    Request createGetPermissionsRequest(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s);
        return new Request(null, "me/permissions", bundle, HttpMethod.GET, null);
    }

    Request createGetProfileIdRequest(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s);
        return new Request(null, "me", bundle, HttpMethod.GET, null);
    }

    RequestBatch createReauthValidationBatch(final Result pendingResult)
    {
        final ArrayList fbids = new ArrayList();
        final ArrayList tokenPermissions = new ArrayList();
        Object obj2 = pendingResult.token.getToken();
        Object obj1 = new Request.Callback() {

            final AuthorizationClient this$0;
            private final ArrayList val$fbids;

            public void onCompleted(Response response)
            {
                try
                {
                    response = (GraphUser)response.getGraphObjectAs(com/facebook/model/GraphUser);
                }
                // Misplaced declaration of an exception variable
                catch (Response response)
                {
                    return;
                }
                if (response == null)
                {
                    break MISSING_BLOCK_LABEL_28;
                }
                fbids.add(response.getId());
            }

            
            {
                this$0 = AuthorizationClient.this;
                fbids = arraylist;
                super();
            }
        };
        String s = pendingRequest.getPreviousAccessToken();
        Object obj = createGetProfileIdRequest(s);
        ((Request) (obj)).setCallback(((Request.Callback) (obj1)));
        obj2 = createGetProfileIdRequest(((String) (obj2)));
        ((Request) (obj2)).setCallback(((Request.Callback) (obj1)));
        obj1 = createGetPermissionsRequest(s);
        ((Request) (obj1)).setCallback(new Request.Callback() {

            final AuthorizationClient this$0;
            private final ArrayList val$tokenPermissions;

            public void onCompleted(Response response)
            {
                try
                {
                    response = (GraphMultiResult)response.getGraphObjectAs(com/facebook/model/GraphMultiResult);
                }
                // Misplaced declaration of an exception variable
                catch (Response response)
                {
                    return;
                }
                if (response == null)
                {
                    break MISSING_BLOCK_LABEL_65;
                }
                response = response.getData();
                if (response == null)
                {
                    break MISSING_BLOCK_LABEL_65;
                }
                if (response.size() == 1)
                {
                    response = (GraphObject)response.get(0);
                    tokenPermissions.addAll(response.asMap().keySet());
                }
            }

            
            {
                this$0 = AuthorizationClient.this;
                tokenPermissions = arraylist;
                super();
            }
        });
        obj = new RequestBatch(new Request[] {
            obj, obj2, obj1
        });
        ((RequestBatch) (obj)).setBatchApplicationId(pendingRequest.getApplicationId());
        ((RequestBatch) (obj)).addCallback(new RequestBatch.Callback() {

            final AuthorizationClient this$0;
            private final ArrayList val$fbids;
            private final Result val$pendingResult;
            private final ArrayList val$tokenPermissions;

            public void onBatchCompleted(RequestBatch requestbatch)
            {
                if (fbids.size() != 2 || fbids.get(0) == null || fbids.get(1) == null || !((String)fbids.get(0)).equals(fbids.get(1)))
                {
                    break MISSING_BLOCK_LABEL_101;
                }
                requestbatch = AccessToken.createFromTokenWithRefreshedPermissions(pendingResult.token, tokenPermissions);
                requestbatch = Result.createTokenResult(pendingRequest, requestbatch);
_L1:
                complete(requestbatch);
                notifyBackgroundProcessingStop();
                return;
                requestbatch = Result.createErrorResult(pendingRequest, "User logged in as different Facebook user.", null);
                  goto _L1
                requestbatch;
                complete(Result.createErrorResult(pendingRequest, "Caught exception", requestbatch.getMessage()));
                notifyBackgroundProcessingStop();
                return;
                requestbatch;
                notifyBackgroundProcessingStop();
                throw requestbatch;
            }

            
            {
                this$0 = AuthorizationClient.this;
                fbids = arraylist;
                pendingResult = result;
                tokenPermissions = arraylist1;
                super();
            }
        });
        return ((RequestBatch) (obj));
    }

    BackgroundProcessingListener getBackgroundProcessingListener()
    {
        return backgroundProcessingListener;
    }

    boolean getInProgress()
    {
        return pendingRequest != null && currentHandler != null;
    }

    OnCompletedListener getOnCompletedListener()
    {
        return onCompletedListener;
    }

    StartActivityDelegate getStartActivityDelegate()
    {
        if (startActivityDelegate != null)
        {
            return startActivityDelegate;
        }
        if (pendingRequest != null)
        {
            return new StartActivityDelegate() {

                final AuthorizationClient this$0;

                public Activity getActivityContext()
                {
                    return pendingRequest.getStartActivityDelegate().getActivityContext();
                }

                public void startActivityForResult(Intent intent, int i)
                {
                    pendingRequest.getStartActivityDelegate().startActivityForResult(intent, i);
                }

            
            {
                this$0 = AuthorizationClient.this;
                super();
            }
            };
        } else
        {
            return null;
        }
    }

    boolean onActivityResult(int i, int j, Intent intent)
    {
        if (i == pendingRequest.getRequestCode())
        {
            return currentHandler.onActivityResult(i, j, intent);
        } else
        {
            return false;
        }
    }

    void setBackgroundProcessingListener(BackgroundProcessingListener backgroundprocessinglistener)
    {
        backgroundProcessingListener = backgroundprocessinglistener;
    }

    void setContext(final Activity activity)
    {
        context = activity;
        startActivityDelegate = new StartActivityDelegate() {

            final AuthorizationClient this$0;
            private final Activity val$activity;

            public Activity getActivityContext()
            {
                return activity;
            }

            public void startActivityForResult(Intent intent, int i)
            {
                activity.startActivityForResult(intent, i);
            }

            
            {
                this$0 = AuthorizationClient.this;
                activity = activity1;
                super();
            }
        };
    }

    void setContext(Context context1)
    {
        context = context1;
        startActivityDelegate = null;
    }

    void setOnCompletedListener(OnCompletedListener oncompletedlistener)
    {
        onCompletedListener = oncompletedlistener;
    }

    void startOrContinueAuth(AuthorizationRequest authorizationrequest)
    {
        if (getInProgress())
        {
            continueAuth();
            return;
        } else
        {
            authorize(authorizationrequest);
            return;
        }
    }

    boolean tryCurrentHandler()
    {
        if (currentHandler.needsInternetPermission() && !checkInternetPermission())
        {
            addLoggingExtra("no_internet_permission", "1", false);
            return false;
        }
        boolean flag = currentHandler.tryAuthorize(pendingRequest);
        if (flag)
        {
            logAuthorizationMethodStart(currentHandler.getNameForLogging());
            return flag;
        } else
        {
            addLoggingExtra("not_tried", currentHandler.getNameForLogging(), true);
            return flag;
        }
    }

    void tryNextHandler()
    {
        if (currentHandler != null)
        {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), "skipped", null, null, currentHandler.methodLoggingExtras);
        }
        do
        {
            if (handlersToTry == null || handlersToTry.isEmpty())
            {
                if (pendingRequest != null)
                {
                    completeWithFailure();
                }
                return;
            }
            currentHandler = (AuthHandler)handlersToTry.remove(0);
        } while (!tryCurrentHandler());
    }

    void validateSameFbidAndFinish(Result result)
    {
        if (result.token == null)
        {
            throw new FacebookException("Can't validate without a token");
        } else
        {
            result = createReauthValidationBatch(result);
            notifyBackgroundProcessingStart();
            result.executeAsync();
            return;
        }
    }




}
