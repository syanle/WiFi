// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.umeng.common.Log;
import com.umeng.common.a.c;
import com.umeng.common.b;
import com.umeng.common.util.DeltaUpdate;
import java.io.File;

// Referenced classes of package com.umeng.common.net:
//            DownloadingService, d

class f extends Handler
{

    final DownloadingService a;

    f(DownloadingService downloadingservice)
    {
        a = downloadingservice;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 5 6: default 28
    //                   5 29
    //                   6 386;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        a.a a1 = (a.a)message.obj;
        int i = message.arg2;
        Intent intent;
        boolean flag;
        try
        {
            message = message.getData().getString("filename");
            Log.c(DownloadingService.a(), "Cancel old notification....");
            Notification notification = new Notification(0x1080082, com.umeng.common.net.DownloadingService.b(a).getString(c.j(com.umeng.common.net.DownloadingService.b(a))), System.currentTimeMillis());
            intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(0x10000000);
            intent.setDataAndType(Uri.fromFile(new File(message)), "application/vnd.android.package-archive");
            PendingIntent pendingintent = PendingIntent.getActivity(com.umeng.common.net.DownloadingService.b(a), 0, intent, 0x8000000);
            notification.setLatestEventInfo(com.umeng.common.net.DownloadingService.b(a), a1.b, com.umeng.common.net.DownloadingService.b(a).getString(c.j(com.umeng.common.net.DownloadingService.b(a))), pendingintent);
            notification.flags = 16;
            DownloadingService.a(a, (NotificationManager)a.getSystemService("notification"));
            com.umeng.common.net.DownloadingService.c(a).notify(i + 1, notification);
            Log.c(DownloadingService.a(), "Show new  notification....");
            flag = DownloadingService.a(a).a(com.umeng.common.net.DownloadingService.b(a));
            Log.c(DownloadingService.a(), String.format("isAppOnForeground = %1$B", new Object[] {
                Boolean.valueOf(flag)
            }));
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            Log.b(DownloadingService.a(), (new StringBuilder()).append("can not install. ").append(message.getMessage()).toString());
            com.umeng.common.net.DownloadingService.c(a).cancel(i + 1);
            return;
        }
        if (!flag) goto _L5; else goto _L4
_L4:
        if (!a1.h)
        {
            com.umeng.common.net.DownloadingService.c(a).cancel(i + 1);
            com.umeng.common.net.DownloadingService.b(a).startActivity(intent);
        }
_L5:
        Log.a(DownloadingService.a(), String.format("%1$10s downloaded. Saved to: %2$s", new Object[] {
            a1.b, message
        }));
        return;
_L3:
        a.a a2 = (a.a)message.obj;
        int j = message.arg2;
        message = message.getData().getString("filename");
        com.umeng.common.net.DownloadingService.c(a).cancel(j);
        Object obj = new Notification(0x1080081, com.umeng.common.net.DownloadingService.b(a).getString(c.l(com.umeng.common.net.DownloadingService.b(a))), System.currentTimeMillis());
        Object obj1 = PendingIntent.getActivity(com.umeng.common.net.DownloadingService.b(a), 0, new Intent(), 0x8000000);
        ((Notification) (obj)).setLatestEventInfo(com.umeng.common.net.DownloadingService.b(a), b.w(com.umeng.common.net.DownloadingService.b(a)), com.umeng.common.net.DownloadingService.b(a).getString(c.l(com.umeng.common.net.DownloadingService.b(a))), ((PendingIntent) (obj1)));
        com.umeng.common.net.DownloadingService.c(a).notify(j + 1, ((Notification) (obj)));
        obj = message.replace(".patch", ".apk");
        obj1 = DeltaUpdate.a(a);
        d d1 = DownloadingService.a(a);
        d1.getClass();
        (new d.c(d1, com.umeng.common.net.DownloadingService.b(a), j, a2, ((String) (obj)), com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b())).execute(new String[] {
            obj1, obj, message
        });
        return;
    }
}
