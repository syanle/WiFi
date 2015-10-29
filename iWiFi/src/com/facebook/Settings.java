// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            LoggingBehavior, Response, FacebookRequestError, AppEventsLogger, 
//            Request, RequestBatch, FacebookException

public final class Settings
{

    private static final String ANALYTICS_EVENT = "event";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final String ATTRIBUTION_KEY = "attribution";
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    private static final String AUTO_PUBLISH = "auto_publish";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY = new ThreadFactory() {

        private final AtomicInteger counter = new AtomicInteger(0);

        public Thread newThread(Runnable runnable)
        {
            return new Thread(runnable, (new StringBuilder("FacebookSdk #")).append(counter.incrementAndGet()).toString());
        }

    };
    private static final BlockingQueue DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
    private static final String FACEBOOK_COM = "facebook.com";
    private static final Object LOCK = new Object();
    private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static final String TAG = com/facebook/Settings.getCanonicalName();
    private static volatile String appVersion;
    private static volatile Executor executor;
    private static volatile String facebookDomain = "facebook.com";
    private static final HashSet loggingBehaviors;
    private static volatile boolean shouldAutoPublishInstall;

    public Settings()
    {
    }

    public static final void addLoggingBehavior(LoggingBehavior loggingbehavior)
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.add(loggingbehavior);
        }
        return;
        loggingbehavior;
        hashset;
        JVM INSTR monitorexit ;
        throw loggingbehavior;
    }

    public static final void clearLoggingBehaviors()
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.clear();
        }
        return;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getAppVersion()
    {
        return appVersion;
    }

    private static Executor getAsyncTaskExecutor()
    {
        Object obj;
        try
        {
            obj = android/os/AsyncTask.getField("THREAD_POOL_EXECUTOR");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        try
        {
            obj = ((Field) (obj)).get(null);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        if (obj == null)
        {
            return null;
        }
        if (!(obj instanceof Executor))
        {
            return null;
        } else
        {
            return (Executor)obj;
        }
    }

    public static String getAttributionId(ContentResolver contentresolver)
    {
        String s;
        try
        {
            contentresolver = contentresolver.query(ATTRIBUTION_ID_CONTENT_URI, new String[] {
                "aid"
            }, null, null, null);
        }
        // Misplaced declaration of an exception variable
        catch (ContentResolver contentresolver)
        {
            Log.d(TAG, (new StringBuilder("Caught unexpected exception in getAttributionId(): ")).append(contentresolver.toString()).toString());
            return null;
        }
        if (contentresolver == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (!contentresolver.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_88;
        }
        s = contentresolver.getString(contentresolver.getColumnIndex("aid"));
        contentresolver.close();
        return s;
        return null;
    }

    public static Executor getExecutor()
    {
        Object obj1 = LOCK;
        obj1;
        JVM INSTR monitorenter ;
        Executor executor1;
        if (executor != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        executor1 = getAsyncTaskExecutor();
        Object obj;
        obj = executor1;
        if (executor1 != null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        obj = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
        executor = ((Executor) (obj));
        obj1;
        JVM INSTR monitorexit ;
        return executor;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getFacebookDomain()
    {
        return facebookDomain;
    }

    public static final Set getLoggingBehaviors()
    {
        Set set;
        synchronized (loggingBehaviors)
        {
            set = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
        }
        return set;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getMigrationBundle()
    {
        return "fbsdk:20130708";
    }

    public static String getSdkVersion()
    {
        return "3.5.2";
    }

    public static boolean getShouldAutoPublishInstall()
    {
        return shouldAutoPublishInstall;
    }

    public static final boolean isLoggingBehaviorEnabled(LoggingBehavior loggingbehavior)
    {
        HashSet hashset = loggingBehaviors;
        hashset;
        JVM INSTR monitorenter ;
        boolean flag;
        if (loggingBehaviors.contains(loggingbehavior))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hashset;
        JVM INSTR monitorexit ;
        return flag;
        loggingbehavior;
        hashset;
        JVM INSTR monitorexit ;
        throw loggingbehavior;
    }

    public static boolean publishInstallAndWait(Context context, String s)
    {
        context = publishInstallAndWaitForResponse(context, s);
        return context != null && context.getError() == null;
    }

    public static Response publishInstallAndWaitForResponse(Context context, String s)
    {
        return publishInstallAndWaitForResponse(context, s, false);
    }

    static Response publishInstallAndWaitForResponse(Context context, String s, boolean flag)
    {
        if (context == null || s == null)
        {
            try
            {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Utility.logd("Facebook-publish", context);
            }
            return new Response(null, null, new FacebookRequestError(null, context));
        }
        String s1;
        String s2;
        String s3;
        SharedPreferences sharedpreferences;
        String s4;
        long l;
        s4 = getAttributionId(context.getContentResolver());
        sharedpreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
        s1 = (new StringBuilder(String.valueOf(s))).append("ping").toString();
        s2 = (new StringBuilder(String.valueOf(s))).append("json").toString();
        l = sharedpreferences.getLong(s1, 0L);
        s3 = sharedpreferences.getString(s2, null);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        setShouldAutoPublishInstall(false);
        Object obj;
        obj = com.facebook.model.GraphObject.Factory.create();
        ((GraphObject) (obj)).setProperty("event", "MOBILE_APP_INSTALL");
        ((GraphObject) (obj)).setProperty("attribution", s4);
        ((GraphObject) (obj)).setProperty("auto_publish", Boolean.valueOf(flag));
        if (AppEventsLogger.getLimitEventUsage(context))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        ((GraphObject) (obj)).setProperty("application_tracking_enabled", Boolean.valueOf(flag));
        ((GraphObject) (obj)).setProperty("application_package_name", context.getPackageName());
        obj = Request.newPostRequest(null, String.format("%s/activities", new Object[] {
            s
        }), ((GraphObject) (obj)), null);
        if (l == 0L) goto _L2; else goto _L1
_L1:
        s = null;
        context = s;
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        context = com.facebook.model.GraphObject.Factory.create(new JSONObject(s3));
_L4:
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_297;
        }
        return (Response)Response.createResponsesFromString("true", null, new RequestBatch(new Request[] {
            obj
        }), true).get(0);
        return new Response(null, null, context, true);
_L2:
        if (s4 != null)
        {
            break MISSING_BLOCK_LABEL_325;
        }
        throw new FacebookException("No attribution id returned from the Facebook application");
        if (!Utility.queryAppSettings(s, false).supportsAttribution())
        {
            throw new FacebookException("Install attribution has been disabled on the server.");
        }
        context = ((Request) (obj)).executeAndWait();
        s = sharedpreferences.edit();
        s.putLong(s1, System.currentTimeMillis());
        if (context.getGraphObject() != null && context.getGraphObject().getInnerJSONObject() != null)
        {
            s.putString(s2, context.getGraphObject().getInnerJSONObject().toString());
        }
        s.commit();
        return context;
        context;
        context = s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void publishInstallAsync(Context context, String s)
    {
        publishInstallAsync(context, s, null);
    }

    public static void publishInstallAsync(final Context applicationContext, final String applicationId, final Request.Callback callback)
    {
        applicationContext = applicationContext.getApplicationContext();
        getExecutor().execute(new Runnable() {

            private final Context val$applicationContext;
            private final String val$applicationId;
            private final Request.Callback val$callback;

            public void run()
            {
                Response response = Settings.publishInstallAndWaitForResponse(applicationContext, applicationId);
                if (callback != null)
                {
                    (new Handler(Looper.getMainLooper())).post(response. new Runnable() {

                        final _cls2 this$1;
                        private final Request.Callback val$callback;
                        private final Response val$response;

                        public void run()
                        {
                            callback.onCompleted(response);
                        }

            
            {
                this$1 = final__pcls2;
                callback = callback1;
                response = Response.this;
                super();
            }
                    });
                }
            }

            
            {
                applicationContext = context;
                applicationId = s;
                callback = callback1;
                super();
            }
        });
    }

    public static final void removeLoggingBehavior(LoggingBehavior loggingbehavior)
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.remove(loggingbehavior);
        }
        return;
        loggingbehavior;
        hashset;
        JVM INSTR monitorexit ;
        throw loggingbehavior;
    }

    public static void setAppVersion(String s)
    {
        appVersion = s;
    }

    public static void setExecutor(Executor executor1)
    {
        Validate.notNull(executor1, "executor");
        synchronized (LOCK)
        {
            executor = executor1;
        }
        return;
        executor1;
        obj;
        JVM INSTR monitorexit ;
        throw executor1;
    }

    public static void setFacebookDomain(String s)
    {
        facebookDomain = s;
    }

    public static void setShouldAutoPublishInstall(boolean flag)
    {
        shouldAutoPublishInstall = flag;
    }

    static 
    {
        loggingBehaviors = new HashSet(Arrays.asList(new LoggingBehavior[] {
            LoggingBehavior.DEVELOPER_ERRORS
        }));
    }
}
