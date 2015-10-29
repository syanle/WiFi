// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.view.animation.DecelerateInterpolator;
import java.util.TimerTask;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            e, b

final class d extends TimerTask
{

    final b a;
    private long b;
    private DecelerateInterpolator c;

    public d(b b1)
    {
        a = b1;
        super();
        b = -1L;
        c = new DecelerateInterpolator();
    }

    static long a(d d1)
    {
        return d1.b;
    }

    static long a(d d1, long l)
    {
        d1.b = l;
        return l;
    }

    static DecelerateInterpolator b(d d1)
    {
        return d1.c;
    }

    public void run()
    {
        m.a().a(new e(this));
    }
}
