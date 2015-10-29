// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.view.animation.DecelerateInterpolator;
import net.youmi.android.a.a.h.a;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            d, b, k

class e
    implements Runnable
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public void run()
    {
        if (net.youmi.android.a.a.i.a.d.a(a) == -1L)
        {
            net.youmi.android.a.a.i.a.d.a(a, System.currentTimeMillis());
        }
        long l = System.currentTimeMillis() - net.youmi.android.a.a.i.a.d.a(a);
        if (l < 10000L)
        {
            int i = Math.min(99, Math.round(d.b(a).getInterpolation((float)l / 10000F) * 100F));
            if (net.youmi.android.a.a.i.a.b.a(a.a) != null)
            {
                net.youmi.android.a.a.i.a.b.a(a.a).a((new StringBuilder()).append(net.youmi.android.a.a.h.a.x()).append(" ").append(i).append("%").toString());
                return;
            }
        }
    }
}
