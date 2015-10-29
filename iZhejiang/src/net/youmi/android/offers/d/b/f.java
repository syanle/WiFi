// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.Random;
import net.youmi.android.a.a.g.g.b;
import net.youmi.android.a.a.g.g.c;
import net.youmi.android.a.b.k.a;
import net.youmi.android.a.b.k.j;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.b.k.o;
import net.youmi.android.offers.EarnPointsOrderInfo;
import net.youmi.android.offers.PointsManager;
import net.youmi.android.offers.PointsReceiver;

// Referenced classes of package net.youmi.android.offers.d.b:
//            g

public class f
{

    public static void a(Context context, EarnPointsOrderInfo earnpointsorderinfo)
    {
        if (earnpointsorderinfo != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        a a1 = null;
        if (!PointsManager.isEnableEarnPointsToastTips()) goto _L4; else goto _L3
_L3:
        if (false)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        a1 = j.b(context, context.getPackageName());
_L8:
        if (!((android.app.ActivityManager.RunningTaskInfo)o.f(context).getRunningTasks(0x7fffffff).get(0)).topActivity.getPackageName().equals(context.getPackageName())) goto _L6; else goto _L5
_L5:
        b(context, earnpointsorderinfo, a1);
_L4:
        if (!PointsManager.isEnableEarnPointsNotification()) goto _L1; else goto _L7
_L7:
        a a2;
        a2 = a1;
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        a2 = j.b(context, context.getPackageName());
        a(context, earnpointsorderinfo, a2);
        return;
_L6:
        try
        {
            b b1 = net.youmi.android.a.a.g.g.b.a(context);
            c c1 = new c();
            c1.a(earnpointsorderinfo.getOrderID());
            c1.b(earnpointsorderinfo.getMessage());
            b1.a(c1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
          goto _L4
          goto _L1
        a1 = null;
          goto _L8
    }

    private static void a(Context context, EarnPointsOrderInfo earnpointsorderinfo, a a1)
    {
        String s;
        Notification notification;
        PendingIntent pendingintent;
        int i;
        try
        {
            s = earnpointsorderinfo.getMessage();
            earnpointsorderinfo = earnpointsorderinfo.getOrderID();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (earnpointsorderinfo == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        i = earnpointsorderinfo.hashCode();
_L2:
        earnpointsorderinfo = o.a(context);
        notification = new Notification();
        notification.flags = 16;
        notification.icon = a1.c();
        pendingintent = PendingIntent.getBroadcast(context, i, new Intent(PointsReceiver.getActionName_ViewPoints(context)), 0x8000000);
        notification.setLatestEventInfo(context, (new StringBuilder()).append(a1.a()).append(net.youmi.android.a.a.h.a.A()).toString(), s, pendingintent);
        earnpointsorderinfo.notify(i, notification);
        return;
        i = (new Random(System.currentTimeMillis())).nextInt();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static void b(Context context, EarnPointsOrderInfo earnpointsorderinfo, a a1)
    {
        int i;
        int k;
        try
        {
            earnpointsorderinfo = earnpointsorderinfo.getMessage();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (earnpointsorderinfo == null)
        {
            return;
        }
        i = 0;
        k = net.youmi.android.a.b.k.f.a(context).b();
        i = (int)((double)k * 0.80000000000000004D);
_L2:
        context = new g(context, earnpointsorderinfo, 3500, i);
        m.a().a(context);
        return;
        a1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
