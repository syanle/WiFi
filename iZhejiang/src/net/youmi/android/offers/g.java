// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.Context;

// Referenced classes of package net.youmi.android.offers:
//            c, EarnPointsOrderList, f

class g
    implements Runnable
{

    final Context a;
    final EarnPointsOrderList b;
    final f c;

    g(f f, Context context, EarnPointsOrderList earnpointsorderlist)
    {
        c = f;
        a = context;
        b = earnpointsorderlist;
        super();
    }

    public void run()
    {
        net.youmi.android.offers.c.a(a).a(b);
    }
}
