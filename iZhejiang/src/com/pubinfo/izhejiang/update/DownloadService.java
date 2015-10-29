// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.update;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.widget.RemoteViews;
import com.iwifi.sdk.chinanet.WelcomePage;

public class DownloadService extends Service
{

    private boolean isFirstStart;
    private Handler mHandler;
    private NotificationManager notificationMrg;
    private int old_process;

    public DownloadService()
    {
        old_process = -1;
        isFirstStart = false;
        mHandler = new Handler() {

            final DownloadService this$0;

            public void handleMessage(Message message)
            {
                if (WelcomePage.loading_process >= 99)
                {
                    notificationMrg.cancel(0);
                    stopSelf();
                    return;
                }
                if (WelcomePage.loading_process > old_process)
                {
                    displayNotificationMessage(WelcomePage.loading_process);
                }
                isFirstStart = false;
                message = mHandler.obtainMessage();
                mHandler.sendMessage(message);
                old_process = WelcomePage.loading_process;
            }

            
            {
                this$0 = DownloadService.this;
                super();
            }
        };
    }

    private void displayNotificationMessage(int i)
    {
        Object obj = new Intent(this, getClass());
        ((Intent) (obj)).addFlags(0x20000000);
        obj = PendingIntent.getActivity(this, 0, ((Intent) (obj)), 0);
        Notification notification = new Notification(0x7f02006e, "\u6B63\u5728\u4E0B\u8F7D...", System.currentTimeMillis());
        if (isFirstStart || WelcomePage.loading_process > 97)
        {
            notification.defaults = notification.defaults | 1;
            notification.defaults = notification.defaults | 2;
        }
        notification.flags = notification.flags | 2;
        RemoteViews remoteviews = new RemoteViews(getPackageName(), 0x7f030023);
        remoteviews.setTextViewText(0x7f0a00b4, (new StringBuilder("\u5F53\u524D\u8FDB\u5EA6\uFF1A")).append(i).append("% ").toString());
        remoteviews.setProgressBar(0x7f0a00b5, 100, i, false);
        notification.contentView = remoteviews;
        notification.contentIntent = ((PendingIntent) (obj));
        notificationMrg.notify(0, notification);
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        isFirstStart = true;
        notificationMrg = (NotificationManager)getSystemService("notification");
        mHandler.handleMessage(new Message());
    }

    public void onDestroy()
    {
        super.onDestroy();
    }






}
