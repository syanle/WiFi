// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.view.View;
import android.widget.RelativeLayout;
import net.youmi.android.a.b.i.k;

// Referenced classes of package net.youmi.android.spot:
//            a, b

class e
    implements android.view.View.OnClickListener
{

    final a a;

    private e(a a1)
    {
        a = a1;
        super();
    }

    e(a a1, b b)
    {
        this(a1);
    }

    public void onClick(View view)
    {
        if (view != net.youmi.android.spot.a.b(a)) goto _L2; else goto _L1
_L1:
        if (net.youmi.android.spot.a.e(a) != 0) goto _L4; else goto _L3
_L3:
        net.youmi.android.spot.a.f(a);
_L6:
        return;
_L4:
        if (net.youmi.android.spot.a.e(a) == 1)
        {
            if (net.youmi.android.spot.a.g(a) != null)
            {
                net.youmi.android.spot.a.g(a).setVisibility(0);
                return;
            } else
            {
                net.youmi.android.spot.a.f(a);
                return;
            }
        }
        if (net.youmi.android.spot.a.e(a) == 2)
        {
            if (k.c(net.youmi.android.spot.a.c(a)).equals("wifi"))
            {
                net.youmi.android.spot.a.f(a);
                return;
            }
            if (net.youmi.android.spot.a.g(a) != null)
            {
                net.youmi.android.spot.a.g(a).setVisibility(0);
                return;
            } else
            {
                net.youmi.android.spot.a.f(a);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == net.youmi.android.spot.a.a(a))
        {
            a.d();
            return;
        }
        if (view.getId() == 4)
        {
            net.youmi.android.spot.a.f(a);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
