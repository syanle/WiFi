// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;

public class AppLinkData
{
    public static interface CompletionHandler
    {

        public abstract void onDeferredAppLinkDataFetched(AppLinkData applinkdata);
    }

    static final class DeferredAppLinkDataClient extends PlatformServiceClient
    {

        protected void populateRequestBundle(Bundle bundle)
        {
            bundle.putString("com.facebook.platform.extra.INSTALLDATA_PACKAGE", getContext().getPackageName());
        }

        DeferredAppLinkDataClient(Context context, String s)
        {
            super(context, 0x10004, 0x10005, 0x1332b3a, s);
        }
    }


    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String TAG = com/facebook/AppLinkData.getCanonicalName();
    private JSONObject arguments;
    private String ref[];
    private Uri targetUri;
    private String version;

    private AppLinkData()
    {
    }

    public static AppLinkData createFromActivity(Activity activity)
    {
        Validate.notNull(activity, "activity");
        Intent intent = activity.getIntent();
        if (intent == null)
        {
            activity = null;
        } else
        {
            AppLinkData applinkdata = createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
            activity = applinkdata;
            if (applinkdata == null)
            {
                return createFromUri(intent.getData());
            }
        }
        return activity;
    }

    private static AppLinkData createFromJson(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        AppLinkData applinkdata;
        s = new JSONObject(s);
        String s1 = s.getString("version");
        if (!s.getJSONObject("bridge_args").getString("method").equals("applink") || !s1.equals("2"))
        {
            break MISSING_BLOCK_LABEL_153;
        }
        applinkdata = new AppLinkData();
        applinkdata.version = s1;
        applinkdata.arguments = s.getJSONObject("method_args");
        if (!applinkdata.arguments.has("ref"))
        {
            break MISSING_BLOCK_LABEL_111;
        }
        s = applinkdata.arguments.getString("ref");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        applinkdata.ref = s.split(",");
        s = applinkdata;
        if (!applinkdata.arguments.has("target_url")) goto _L4; else goto _L3
_L3:
        applinkdata.targetUri = Uri.parse(applinkdata.arguments.getString("target_url"));
        return applinkdata;
        s;
        Log.d(TAG, "Unable to parse AppLink JSON");
        return null;
    }

    private static AppLinkData createFromUri(Uri uri)
    {
        if (uri != null);
        return null;
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionhandler)
    {
        fetchDeferredAppLinkData(context, null, completionhandler);
    }

    public static void fetchDeferredAppLinkData(Context context, String s, final CompletionHandler completionHandler)
    {
        Validate.notNull(context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        String s1 = s;
        if (s == null)
        {
            s1 = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(s1, "applicationId");
        context = new DeferredAppLinkDataClient(context, s1);
        context.setCompletedListener(new com.facebook.internal.PlatformServiceClient.CompletedListener() {

            private final CompletionHandler val$completionHandler;

            public void completed(Bundle bundle)
            {
                Object obj;
                long l;
                obj = null;
                if (bundle == null)
                {
                    break MISSING_BLOCK_LABEL_51;
                }
                obj = bundle.getString("com.facebook.platform.APPLINK_ARGS");
                l = bundle.getLong("com.facebook.platform.APPLINK_TAP_TIME_UTC", -1L);
                bundle = AppLinkData.createFromJson(((String) (obj)));
                obj = bundle;
                if (l == -1L)
                {
                    break MISSING_BLOCK_LABEL_51;
                }
                bundle.getArguments().put("com.facebook.platform.APPLINK_TAP_TIME_UTC", l);
                obj = bundle;
_L2:
                completionHandler.onDeferredAppLinkDataFetched(((AppLinkData) (obj)));
                return;
                JSONException jsonexception;
                jsonexception;
                Log.d(AppLinkData.TAG, "Unable to put tap time in AppLinkData.arguments");
                jsonexception = bundle;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                completionHandler = completionhandler;
                super();
            }
        });
        if (!context.start())
        {
            (new Handler(Looper.getMainLooper())).post(new Runnable() {

                private final CompletionHandler val$completionHandler;

                public void run()
                {
                    completionHandler.onDeferredAppLinkDataFetched(null);
                }

            
            {
                completionHandler = completionhandler;
                super();
            }
            });
        }
    }

    public JSONObject getArguments()
    {
        return arguments;
    }

    public String[] getRef()
    {
        return ref;
    }

    public Uri getTargetUri()
    {
        return targetUri;
    }



}
