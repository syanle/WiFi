// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import net.youmi.android.offers.PointsChangeNotify;

// Referenced classes of package net.youmi.android.offers.d.b:
//            b

class c
    implements Runnable
{

    final PointsChangeNotify a;
    final int b;
    final b c;

    c(b b1, PointsChangeNotify pointschangenotify, int i)
    {
        c = b1;
        a = pointschangenotify;
        b = i;
        super();
    }

    public void run()
    {
        a.onPointBalanceChange(b);
    }
}
