// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

// Referenced classes of package net.youmi.android.a.a.j.b:
//            f

final class m
    implements Runnable
{

    final f a;
    private final Interpolator b = new DecelerateInterpolator();
    private final int c;
    private int d;
    private final int e;
    private final int f;
    private final long g;
    private boolean h;
    private long i;

    public m(f f1, int j, int k, long l)
    {
        a = f1;
        super();
        d = -1;
        h = true;
        i = -1L;
        c = j;
        e = k;
        g = l;
        f = c - e;
    }

    public void a()
    {
        h = false;
        a.removeCallbacks(this);
    }

    public void run()
    {
        if (g <= 0L)
        {
            a.scrollTo(0, e);
            return;
        }
        net.youmi.android.a.a.j.b.f.a(a, true);
        if (i == -1L)
        {
            i = System.currentTimeMillis();
        } else
        {
            long l = Math.max(Math.min(((System.currentTimeMillis() - i) * 1000L) / g, 1000L), 0L);
            float f1 = f;
            int j = Math.round(b.getInterpolation((float)l / 1000F) * f1);
            d = c - j;
            a.scrollTo(0, d);
        }
        if (h && e != d)
        {
            a.postDelayed(this, 8L);
            return;
        } else
        {
            net.youmi.android.a.a.j.b.f.a(a, false);
            return;
        }
    }
}
