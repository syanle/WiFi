// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;


// Referenced classes of package net.youmi.android.offers:
//            c, PointsEarnNotify, EarnPointsOrderList

class d
    implements Runnable
{

    final PointsEarnNotify a;
    final EarnPointsOrderList b;
    final c c;

    d(c c1, PointsEarnNotify pointsearnnotify, EarnPointsOrderList earnpointsorderlist)
    {
        c = c1;
        a = pointsearnnotify;
        b = earnpointsorderlist;
        super();
    }

    public void run()
    {
        a.onPointEarn(net.youmi.android.offers.c.a(c), b);
    }
}
