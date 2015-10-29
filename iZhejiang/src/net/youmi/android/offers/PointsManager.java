// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.Context;
import net.youmi.android.a.c.b.a;
import net.youmi.android.offers.d.b.b;
import net.youmi.android.offers.d.b.e;

// Referenced classes of package net.youmi.android.offers:
//            c, PointsChangeNotify, PointsEarnNotify

public class PointsManager
{

    private static PointsManager b;
    private static boolean c = true;
    private static boolean d = true;
    private Context a;

    private PointsManager(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            a = context.getApplicationContext();
            return;
        }
    }

    public static PointsManager getInstance(Context context)
    {
        net/youmi/android/offers/PointsManager;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new PointsManager(context);
        }
        context = b;
        net/youmi/android/offers/PointsManager;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static boolean isEnableEarnPointsNotification()
    {
        return c;
    }

    public static boolean isEnableEarnPointsToastTips()
    {
        return d;
    }

    public static void setEnableEarnPointsNotification(boolean flag)
    {
        c = flag;
    }

    public static void setEnableEarnPointsToastTips(boolean flag)
    {
        d = flag;
    }

    public boolean awardPoints(int i)
    {
        boolean flag;
        try
        {
            flag = e.a(a).a(i);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return false;
        }
        return flag;
    }

    public int queryPoints()
    {
        int i;
        try
        {
            i = e.a(a).a();
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return 0;
        }
        return i;
    }

    public void registerNotify(PointsChangeNotify pointschangenotify)
    {
        if (pointschangenotify == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        net.youmi.android.offers.d.b.b.a(a).a(pointschangenotify);
        return;
        pointschangenotify;
        net.youmi.android.a.c.b.a.a(pointschangenotify);
        return;
    }

    public void registerPointsEarnNotify(PointsEarnNotify pointsearnnotify)
    {
        if (pointsearnnotify == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        net.youmi.android.offers.c.a(a).a(pointsearnnotify);
        return;
        pointsearnnotify;
        net.youmi.android.a.c.b.a.a(pointsearnnotify);
        return;
    }

    public boolean spendPoints(int i)
    {
        boolean flag;
        try
        {
            flag = e.a(a).b(i);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return false;
        }
        return flag;
    }

    public void unRegisterNotify(PointsChangeNotify pointschangenotify)
    {
        if (pointschangenotify == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        net.youmi.android.offers.d.b.b.a(a).b(pointschangenotify);
        return;
        pointschangenotify;
        net.youmi.android.a.c.b.a.a(pointschangenotify);
        return;
    }

    public void unRegisterPointsEarnNotify(PointsEarnNotify pointsearnnotify)
    {
        if (pointsearnnotify == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        net.youmi.android.offers.c.a(a).b(pointsearnnotify);
        return;
        pointsearnnotify;
        net.youmi.android.a.c.b.a.a(pointsearnnotify);
        return;
    }

}
