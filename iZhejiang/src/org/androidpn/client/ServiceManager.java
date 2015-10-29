// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.Log;
import com.githang.android.apnbb.NotifierConfig;
import java.util.Properties;
import org.jivesoftware.smack.SmackConfiguration;

// Referenced classes of package org.androidpn.client:
//            LogUtil, NotificationSettingsActivity, NotificationService

public final class ServiceManager
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/ServiceManager);
    private static ServiceManager mInstance;
    private String apiKey;
    private String callbackActivityClassName;
    private String callbackActivityPackageName;
    private Context context;
    private Properties props;
    private SharedPreferences sharedPrefs;
    private String version;
    private String xmppHost;
    private String xmppPort;

    public ServiceManager(Context context1)
    {
        version = "0.7.0";
        context = context1;
        mInstance = this;
        if (context1 instanceof Activity)
        {
            Log.i(LOGTAG, "Callback Activity...");
            Activity activity = (Activity)context1;
            callbackActivityPackageName = activity.getPackageName();
            callbackActivityClassName = activity.getClass().getName();
        }
        props = loadProperties();
        apiKey = props.getProperty("apiKey", "1234567890");
        xmppHost = props.getProperty("xmppHost", "60.191.109.207");
        xmppPort = props.getProperty("xmppPort", "5222");
        NotifierConfig.packetListener = props.getProperty("packetListener", null);
        NotifierConfig.iq = props.getProperty("iq", null);
        NotifierConfig.iqProvider = props.getProperty("iqProvider", null);
        NotifierConfig.notifyActivity = props.getProperty("notifyActivity", null);
        Log.i(LOGTAG, (new StringBuilder("apiKey=")).append(apiKey).toString());
        Log.i(LOGTAG, (new StringBuilder("xmppHost=")).append(xmppHost).toString());
        Log.i(LOGTAG, (new StringBuilder("xmppPort=")).append(xmppPort).toString());
        Log.i(LOGTAG, (new StringBuilder("packetListener=")).append(NotifierConfig.packetListener).toString());
        Log.i(LOGTAG, (new StringBuilder("iq=")).append(NotifierConfig.iq).toString());
        Log.i(LOGTAG, (new StringBuilder("iqProvider=")).append(NotifierConfig.iqProvider).toString());
        Log.i(LOGTAG, (new StringBuilder("notifyActivity")).append(NotifierConfig.notifyActivity).toString());
        sharedPrefs = context1.getSharedPreferences("client_preferences", 0);
        context1 = sharedPrefs.edit();
        context1.putString("API_KEY", apiKey);
        context1.putString("VERSION", version);
        context1.putString("XMPP_HOST", xmppHost);
        context1.putInt("XMPP_PORT", Integer.parseInt(xmppPort));
        context1.putString("CALLBACK_ACTIVITY_PACKAGE_NAME", callbackActivityPackageName);
        context1.putString("CALLBACK_ACTIVITY_CLASS_NAME", callbackActivityClassName);
        context1.commit();
        SmackConfiguration.setKeepAliveInterval(60000);
    }

    public static ServiceManager getInstance(Context context1)
    {
        if (mInstance == null)
        {
            mInstance = new ServiceManager(context1);
        }
        return mInstance;
    }

    private Properties loadProperties()
    {
        Properties properties = new Properties();
        try
        {
            int i = context.getResources().getIdentifier("androidpn", "raw", context.getPackageName());
            properties.load(context.getResources().openRawResource(i));
        }
        catch (Exception exception)
        {
            Log.e(LOGTAG, "Could not find the properties file.", exception);
            return properties;
        }
        return properties;
    }

    public static void viewNotificationSettings(Context context1)
    {
        context1.startActivity((new Intent()).setClass(context1, org/androidpn/client/NotificationSettingsActivity));
    }

    public void connectToPnServer()
    {
        NotificationService notificationservice = NotificationService.getNotificationService();
        if (notificationservice != null)
        {
            notificationservice.connect();
            return;
        } else
        {
            Log.e("ServiceManager", "connectToPnServer: getNotificationService is null ");
            return;
        }
    }

    public void disconnectPnServer()
    {
        NotificationService notificationservice = NotificationService.getNotificationService();
        if (notificationservice != null)
        {
            notificationservice.disconnect();
            return;
        } else
        {
            Log.e("ServiceManager", "connectToPnServer: disconnectPnServer is null ");
            return;
        }
    }

    public void setNotificationIcon(int i)
    {
        android.content.SharedPreferences.Editor editor = sharedPrefs.edit();
        editor.putInt("NOTIFICATION_ICON", i);
        editor.commit();
    }

    public void startService()
    {
        (new Thread(new Runnable() {

            final ServiceManager this$0;

            public void run()
            {
                Intent intent = NotificationService.getIntent(context);
                context.startService(intent);
            }

            
            {
                this$0 = ServiceManager.this;
                super();
            }
        })).start();
    }

    public void stopService()
    {
        Intent intent = NotificationService.getIntent(context);
        context.stopService(intent);
    }


}
