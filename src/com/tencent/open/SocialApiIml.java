// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.connect.common.b;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.sdkutil.PKDialog;
import com.tencent.sdkutil.ServerSetting;
import com.tencent.sdkutil.TDialog;
import com.tencent.sdkutil.Util;
import com.tencent.tauth.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.open:
//            VoiceHelper

public class SocialApiIml extends b
{

    private Activity mActivity;
    ProgressDialog mProgressDialog;

    public SocialApiIml(Context context, QQToken qqtoken)
    {
        super(context, qqtoken);
    }

    private void askgift(Activity activity, String s, Bundle bundle, IUiListener iuilistener)
    {
        Intent intent;
        mActivity = activity;
        intent = getAgentIntentWithTarget("com.tencent.open.agent.RequestFreegiftActivity");
        bundle.putAll(composeActivityParams());
        if (!"action_ask".equals(s)) goto _L2; else goto _L1
_L1:
        bundle.putString("type", "request");
_L4:
        handleIntent(activity, intent, s, bundle, ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"), iuilistener);
        return;
_L2:
        if ("action_gift".equals(s))
        {
            bundle.putString("type", "freegift");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void dismissProgressDl()
    {
        if (!mActivity.isFinishing() && mProgressDialog != null && mProgressDialog.isShowing())
        {
            mProgressDialog.dismiss();
            mProgressDialog = null;
        }
    }

    private DelayStartParam generateDelayStParam(Bundle bundle, String s, String s1, IUiListener iuilistener)
    {
        Intent intent = new Intent();
        intent.setClassName(Constants.PACKAGE_QZONE, "com.tencent.open.agent.AgentActivity");
        DelayStartParam delaystartparam = new DelayStartParam();
        delaystartparam.agentIntent = intent;
        delaystartparam.params = bundle;
        delaystartparam.h5Url = s1;
        delaystartparam.listener = iuilistener;
        delaystartparam.action = s;
        return delaystartparam;
    }

    private void handleIntent(Activity activity, Intent intent, String s, Bundle bundle, String s1, IUiListener iuilistener)
    {
        Log.i("SocialApiIml", (new StringBuilder()).append("SocialApiIml handleIntent ").append(s).append(" params=").append(bundle).append(" activityIntent=").append(intent).toString());
        if (intent != null)
        {
            intent.putExtra("key_action", s);
            intent.putExtra("key_params", bundle);
            mActivityIntent = intent;
            startAssitActivity(activity, iuilistener);
        } else
        {
            intent = getTargetActivityIntent("com.tencent.open.agent.AgentActivity");
            s = new EncryptTokenListener(iuilistener, s, s1, bundle);
            bundle = getTargetActivityIntent("com.tencent.open.agent.EncryTokenActivity");
            if (bundle != null && intent != null && intent.getComponent() != null && bundle.getComponent() != null && intent.getComponent().getPackageName().equals(bundle.getComponent().getPackageName()))
            {
                bundle.putExtra("oauth_consumer_key", mToken.getAppId());
                bundle.putExtra("openid", mToken.getOpenId());
                bundle.putExtra("access_token", mToken.getAccessToken());
                bundle.putExtra("key_action", "action_check_token");
                mActivityIntent = bundle;
                if (hasActivityForIntent())
                {
                    startAssitActivity(activity, s);
                    return;
                }
            } else
            {
                Log.e("source", (new StringBuilder()).append("tencent&sdk&qazxc***14969%%").append(mToken.getAccessToken()).append(mToken.getAppId()).append(mToken.getOpenId()).append("qzone3.4").toString());
                intent = Util.encrypt((new StringBuilder()).append("tencent&sdk&qazxc***14969%%").append(mToken.getAccessToken()).append(mToken.getAppId()).append(mToken.getOpenId()).append("qzone3.4").toString());
                Log.e("result", intent);
                activity = new JSONObject();
                try
                {
                    activity.put("encry_token", intent);
                }
                // Misplaced declaration of an exception variable
                catch (Intent intent)
                {
                    intent.printStackTrace();
                }
                s.onComplete(activity);
                return;
            }
        }
    }

    private void showDialog(Context context, String s, Bundle bundle, String s1, IUiListener iuilistener)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", "OpenUi, showDialog --start");
        CookieSyncManager.createInstance(context);
        bundle.putString("oauth_consumer_key", mToken.getAppId());
        if (mToken.isSessionValid())
        {
            bundle.putString("access_token", mToken.getAccessToken());
        }
        context = mToken.getOpenId();
        if (context != null)
        {
            bundle.putString("openid", context);
        }
        try
        {
            bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            bundle.putString("pf", "openmobile_android");
        }
        context = new StringBuilder();
        context.append(s1);
        context.append(Util.encodeUrl(bundle));
        context = context.toString();
        WnsClientLog.getInstance().d("openSDK_LOG", "OpenUi, showDialog TDialog");
        if ("action_challenge".equals(s) || "action_brag".equals(s))
        {
            WnsClientLog.getInstance().d("openSDK_LOG", "OpenUi, showDialog PKDialog");
            (new PKDialog(mActivity, s, context, iuilistener, mToken)).show();
            return;
        } else
        {
            (new TDialog(mActivity, s, context, iuilistener, mToken)).show();
            return;
        }
    }

    private void startVoiceView(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.voice");
        String s = ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/not_support.html?");
        if (intent == null && isCheckFunctionEnabled())
        {
            if (mProgressDialog == null || !mProgressDialog.isShowing())
            {
                mProgressDialog = new ProgressDialog(activity);
                mProgressDialog.setTitle("\u8BF7\u7A0D\u5019");
                mProgressDialog.show();
            }
            getTargetActivityIntentForNew(activity, "action_voice", new CheckListener(generateDelayStParam(bundle, "action_voice", s, iuilistener)));
            return;
        } else
        {
            handleIntent(activity, intent, "action_voice", bundle, s, iuilistener);
            return;
        }
    }

    public void ask(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        askgift(activity, "action_ask", bundle, iuilistener);
    }

    public void brag(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mActivity = activity;
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.BragActivity");
        bundle.putAll(composeActivityParams());
        handleIntent(activity, intent, "action_brag", bundle, ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"), iuilistener);
    }

    public void challenge(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mActivity = activity;
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.ChallengeActivity");
        bundle.putAll(composeActivityParams());
        handleIntent(activity, intent, "action_challenge", bundle, ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?"), iuilistener);
    }

    protected void getTargetActivityIntentForNew(Activity activity, String s, IUiListener iuilistener)
    {
        Intent intent = new Intent();
        intent.setClassName(Constants.PACKAGE_QZONE, "com.tencent.open.agent.AgentActivity");
        intent.putExtra("key_action", "action_check");
        Bundle bundle = new Bundle();
        bundle.putString("apiName", s);
        intent.putExtra("key_params", bundle);
        mActivityIntent = intent;
        startAssitActivity(activity, iuilistener);
    }

    public void gift(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        askgift(activity, "action_gift", bundle, iuilistener);
    }

    public void grade(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mActivity = activity;
        bundle.putAll(composeActivityParams());
        bundle.putString("version", Util.getAppVersion(activity));
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.AppGradeActivity");
        if (intent == null && isCheckFunctionEnabled())
        {
            mProgressDialog = new ProgressDialog(activity);
            mProgressDialog.setMessage("\u8BF7\u7A0D\u5019...");
            mProgressDialog.show();
            getTargetActivityIntentForNew(activity, "action_grade", new CheckListener(generateDelayStParam(bundle, "action_grade", "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?", iuilistener)));
            return;
        } else
        {
            handleIntent(activity, intent, "action_grade", bundle, "http://qzs.qq.com/open/mobile/rate/sdk_rate.html?", iuilistener);
            return;
        }
    }

    public void invite(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mActivity = activity;
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.AppInvitationActivity");
        bundle.putAll(composeActivityParams());
        handleIntent(activity, intent, "action_invite", bundle, ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"), iuilistener);
    }

    protected boolean isCheckFunctionEnabled()
    {
        Intent intent = new Intent();
        intent.setClassName(Constants.PACKAGE_QZONE, "com.tencent.open.agent.CheckFunctionActivity");
        return Util.isActivityExist(mContext, intent);
    }

    public void story(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mActivity = activity;
        Intent intent = getAgentIntentWithTarget("com.tencent.open.agent.SendStoryActivity");
        bundle.putAll(composeActivityParams());
        handleIntent(activity, intent, "action_story", bundle, ServerSetting.getInstance().getEnvUrl(mContext, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"), iuilistener);
    }

    public void voice(final Activity activity, final Bundle params, final IUiListener listener)
    {
        Log.v("voice", (new StringBuilder()).append("voice params=").append(params).toString());
        mActivity = activity;
        params.putAll(composeActivityParams());
        params.putString("version", Util.getAppVersion(activity));
        if (!VoiceHelper.hasSDCard())
        {
            listener.onError(new UiError(-12, "\u68C0\u6D4B\u4E0D\u5230SD\u5361\uFF0C\u65E0\u6CD5\u53D1\u9001\u8BED\u97F3\uFF01", "\u68C0\u6D4B\u4E0D\u5230SD\u5361\uFF0C\u65E0\u6CD5\u53D1\u9001\u8BED\u97F3\uFF01"));
            return;
        }
        if (params.containsKey("image_date"))
        {
            Bitmap bitmap = (Bitmap)params.getParcelable("image_date");
            if (bitmap != null)
            {
                mProgressDialog = new ProgressDialog(activity);
                mProgressDialog.setTitle("\u8BF7\u7A0D\u5019\uFF0C\u6B63\u5728\u67E5\u8BE2\u2026");
                mProgressDialog.show();
                (new VoiceHelper(new _cls1())).execute(new Bitmap[] {
                    bitmap
                });
                return;
            }
        }
        startVoiceView(activity, params, listener);
    }

    public void writeEncryToken(Context context)
    {
        String s = mToken.getAccessToken();
        Object obj = mToken.getAppId();
        Object obj1 = mToken.getOpenId();
        if (s != null && s.length() > 0 && obj != null && ((String) (obj)).length() > 0 && obj1 != null && ((String) (obj1)).length() > 0)
        {
            s = Util.encrypt((new StringBuilder()).append("tencent&sdk&qazxc***14969%%").append(s).append(((String) (obj))).append(((String) (obj1))).append("qzone3.4").toString());
        } else
        {
            s = null;
        }
        obj = new WebView(context);
        obj1 = ((WebView) (obj)).getSettings();
        ((WebSettings) (obj1)).setDomStorageEnabled(true);
        ((WebSettings) (obj1)).setJavaScriptEnabled(true);
        ((WebSettings) (obj1)).setDatabaseEnabled(true);
        s = (new StringBuilder()).append("<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = 'qq.com';localStorage[\"").append(mToken.getOpenId()).append("_").append(mToken.getAppId()).append("\"]=\"").append(s).append("\";</script></head><body></body></html>").toString();
        context = ServerSetting.getInstance().getEnvUrl(context, "http://qzs.qq.com");
        ((WebView) (obj)).loadDataWithBaseURL(context, s, "text/html", "utf-8", context);
    }







    private class DelayStartParam
    {

        String action;
        Intent agentIntent;
        String h5Url;
        IUiListener listener;
        Bundle params;

        public DelayStartParam()
        {
        }
    }


    private class EncryptTokenListener
        implements IUiListener
    {

        private String mAction;
        private Bundle mBundle;
        private IUiListener mListener;
        private String mUrl;
        final SocialApiIml this$0;

        public void onCancel()
        {
            mListener.onCancel();
        }

        public void onComplete(JSONObject jsonobject)
        {
            try
            {
                jsonobject = jsonobject.getString("encry_token");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi, EncrytokenListener() onComplete error", jsonobject);
                jsonobject = null;
            }
            mBundle.putString("encrytoken", jsonobject);
            showDialog(mActivity, mAction, mBundle, mUrl, mListener);
            if (TextUtils.isEmpty(jsonobject))
            {
                Log.d("miles", "The token get from qq or qzone is empty. Write temp token to localstorage.");
                writeEncryToken(
// JavaClassFileOutputException: get_constant: invalid tag

        public void onError(UiError uierror)
        {
            WnsClientLog.getInstance().d("openSDK_LOG", (new StringBuilder()).append("OpenApi, EncryptTokenListener() onError").append(uierror.errorMessage).toString());
            mListener.onError(uierror);
        }

        EncryptTokenListener(IUiListener iuilistener, String s, String s1, Bundle bundle)
        {
            this$0 = SocialApiIml.this;
            super();
            mListener = iuilistener;
            mAction = s;
            mUrl = s1;
            mBundle = bundle;
        }
    }


    private class CheckListener
        implements IUiListener
    {

        DelayStartParam delayStartParam;
        final SocialApiIml this$0;

        public void onCancel()
        {
            dismissProgressDl();
            VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
            handleIntent(mActivity, null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
        }

        public void onComplete(JSONObject jsonobject)
        {
            Log.d("TAG", (new StringBuilder()).append("CheckListener--onComplete--response = ").append(jsonobject.toString()).toString());
            boolean flag1 = false;
            boolean flag = flag1;
            if (jsonobject != null)
            {
                try
                {
                    flag = jsonobject.getBoolean("check_result");
                }
                // Misplaced declaration of an exception variable
                catch (JSONObject jsonobject)
                {
                    jsonobject.printStackTrace();
                    flag = flag1;
                }
            }
            dismissProgressDl();
            if (flag)
            {
                Log.d("TAG", (new StringBuilder()).append("CheckListener---delayStartParam.agentIntent = ").append(delayStartParam.agentIntent).append(" delayStartParam.action = ").append(delayStartParam.action).toString());
                handleIntent(mActivity, delayStartParam.agentIntent, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
                return;
            } else
            {
                VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
                handleIntent(mActivity, null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
                return;
            }
        }

        public void onError(UiError uierror)
        {
            dismissProgressDl();
            VoiceHelper.clearImageCacheFile(delayStartParam.params.getString("image_date"));
            handleIntent(mActivity, null, delayStartParam.action, delayStartParam.params, delayStartParam.h5Url, delayStartParam.listener);
        }

        public CheckListener(DelayStartParam delaystartparam)
        {
            this$0 = SocialApiIml.this;
            super();
            delayStartParam = delaystartparam;
        }
    }


    private class _cls1
        implements VoiceHelper.ImageCallback
    {

        final SocialApiIml this$0;
        final Activity val$activity;
        final IUiListener val$listener;
        final Bundle val$params;

        public void onFailed(String s)
        {
            params.remove("image_date");
            s = new UiError(-5, "\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548", "\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548");
            listener.onError(s);
            dismissProgressDl();
        }

        public void onSuccess(String s)
        {
            params.remove("image_date");
            if (!TextUtils.isEmpty(s))
            {
                params.putString("image_date", s);
            }
            startVoiceView(activity, params, listener);
        }

        _cls1()
        {
            this$0 = SocialApiIml.this;
            params = bundle;
            activity = activity1;
            listener = iuilistener;
            super();
        }
    }

}
