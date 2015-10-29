// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import com.githang.android.apnbb.NotifierConfig;
import java.util.List;
import org.jivesoftware.smack.packet.IQ;

// Referenced classes of package org.androidpn.client:
//            LogUtil

public class Notifier
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/Notifier);
    private static int requestCode = 1000;
    private Context context;
    private NotificationManager notificationManager;
    private SharedPreferences sharedPrefs;

    public Notifier(Context context1)
    {
        context = context1;
        sharedPrefs = context1.getSharedPreferences("client_preferences", 0);
        notificationManager = (NotificationManager)context1.getSystemService("notification");
    }

    private Notification createNotification(String s)
    {
        Notification notification = new Notification();
        notification.icon = getNotificationIcon();
        notification.defaults = 4;
        if (isNotificationSoundEnabled())
        {
            notification.defaults = notification.defaults | 1;
        }
        if (isNotificationVibrateEnabled())
        {
            notification.defaults = notification.defaults | 2;
        }
        notification.flags = notification.flags | 0x10;
        notification.when = System.currentTimeMillis();
        notification.tickerText = s;
        return notification;
    }

    private int getNotificationIcon()
    {
        return sharedPrefs.getInt("NOTIFICATION_ICON", 0);
    }

    private boolean isNotificationEnabled()
    {
        return sharedPrefs.getBoolean("SETTINGS_NOTIFICATION_ENABLED", true);
    }

    private boolean isNotificationSoundEnabled()
    {
        return sharedPrefs.getBoolean("SETTINGS_SOUND_ENABLED", true);
    }

    private boolean isNotificationToastEnabled()
    {
        return sharedPrefs.getBoolean("SETTINGS_TOAST_ENABLED", false);
    }

    private boolean isNotificationVibrateEnabled()
    {
        return sharedPrefs.getBoolean("SETTINGS_VIBRATE_ENABLED", true);
    }

    private boolean isiWiFiClientRunning(Context context1)
    {
        context1 = (android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context1.getSystemService("activity")).getRunningTasks(1).get(0);
        ((android.app.ActivityManager.RunningTaskInfo) (context1)).topActivity.getClassName();
        context1 = ((android.app.ActivityManager.RunningTaskInfo) (context1)).topActivity.getPackageName();
        return context1 != null && context1.equals("com.pubinfo.freewifialliance");
    }

    public void notify(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        Log.d(LOGTAG, "notify()...");
        Log.d(LOGTAG, (new StringBuilder("notificationId=")).append(s).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationApiKey=")).append(s1).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationTitle=")).append(s2).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationMessage=")).append(s3).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationUri=")).append(s4).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationPushType=")).append(s5).toString());
        if (!isNotificationEnabled()) goto _L2; else goto _L1
_L1:
        if (isNotificationToastEnabled())
        {
            Toast.makeText(context, s3, 1).show();
        }
        s6 = createNotification(s3);
        s1 = null;
        s = s1;
        if (s5 == null) goto _L4; else goto _L3
_L3:
        s = s1;
        if (s5.length() <= 0) goto _L4; else goto _L5
_L5:
        s = s1;
        if (s4 == null) goto _L4; else goto _L6
_L6:
        s = s1;
        if (s4.length() <= 0) goto _L4; else goto _L7
_L7:
        if (!s5.equalsIgnoreCase("push_update") && !s5.equalsIgnoreCase("push_url") && !s5.equalsIgnoreCase("push_news")) goto _L9; else goto _L8
_L8:
        s = new Intent("android.intent.action.VIEW", Uri.parse(s4));
_L4:
        s1 = s;
        if (true)
        {
            s1 = s;
            if (s == null)
            {
                s1 = context.getSharedPreferences("client_preferences", 0);
                s = s1.getString("CALLBACK_ACTIVITY_PACKAGE_NAME", "");
                s1 = s1.getString("CALLBACK_ACTIVITY_CLASS_NAME", "");
                s1 = (new Intent()).setClassName(s, s1);
            }
        }
        if (s1 != null)
        {
            s1.setFlags(0x20000000);
            s1.setFlags(0x4000000);
        }
        s = PendingIntent.getActivity(context, requestCode, s1, 0x8000000);
        s6.setLatestEventInfo(context, s2, s3, s);
        notificationManager.notify(requestCode, s6);
        requestCode++;
        return;
_L9:
        if (s5.equalsIgnoreCase("push_intent"))
        {
            s = new Intent(s4);
        } else
        if (s5.equalsIgnoreCase("push_app_redirect"))
        {
            boolean flag = isiWiFiClientRunning(context);
            if (s4.equalsIgnoreCase("connection"))
            {
                if (flag)
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.CenterPage");
                } else
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.LoadingView");
                }
                s.putExtra("center_page_tab_current_index", 0);
            } else
            if (s4.equalsIgnoreCase("near"))
            {
                if (flag)
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.CenterPage");
                } else
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.LoadingView");
                }
                s.putExtra("center_page_tab_current_index", 1);
            } else
            if (s4.equalsIgnoreCase("mycenter"))
            {
                if (flag)
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.CenterPage");
                } else
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.LoadingView");
                }
                s.putExtra("center_page_tab_current_index", 2);
            } else
            if (s4.equalsIgnoreCase("share"))
            {
                if (flag)
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.CenterPage");
                } else
                {
                    s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.LoadingView");
                }
                s.putExtra("center_page_tab_current_index", 2);
                s.putExtra("QuickSharedShown", true);
            } else
            {
                s = s1;
                if (s4.equalsIgnoreCase("weixin"))
                {
                    if (flag)
                    {
                        s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.CenterPage");
                    } else
                    {
                        s = (new Intent()).setClassName("com.pubinfo.freewifialliance", "com.pubinfo.freewifialliance.view.LoadingView");
                    }
                    s.putExtra("center_page_tab_current_index", 2);
                    s.putExtra("WeixinShown", true);
                }
            }
        } else
        if (s5.equalsIgnoreCase("push_text"))
        {
            s = s1;
        } else
        {
            s = s1;
        }
        if (true) goto _L4; else goto _L2
_L2:
        Log.w(LOGTAG, "Notificaitons disabled.");
        return;
    }

    public void notify(IQ iq, String s, String s1)
    {
        if (!isNotificationEnabled())
        {
            Log.w(LOGTAG, "Notificaitons disabled.");
        } else
        {
            if (isNotificationToastEnabled())
            {
                Toast.makeText(context, s1, 1).show();
            }
            Notification notification = createNotification(s1);
            if (NotifierConfig.notifyActivity != null)
            {
                try
                {
                    Intent intent = new Intent(context, Class.forName(NotifierConfig.notifyActivity));
                    intent.putExtra("INTENT_IQ", iq);
                    iq = PendingIntent.getActivity(context, requestCode, intent, 0x8000000);
                    notification.setLatestEventInfo(context, s, s1, iq);
                    notificationManager.notify(requestCode, notification);
                    requestCode++;
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (IQ iq)
                {
                    Log.e(LOGTAG, iq.getMessage(), iq);
                }
                return;
            }
        }
    }

}
