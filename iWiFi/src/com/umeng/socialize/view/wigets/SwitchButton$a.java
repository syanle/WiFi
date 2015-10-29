// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.os.Handler;
import android.os.SystemClock;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            d, SwitchButton

private class <init> extends d
{

    private static final float k = 400F;
    final SwitchButton j;

    protected void a(float f)
    {
        SwitchButton.a(j, f);
        SwitchButton.c(j, SwitchButton.b(j, SwitchButton.e(j)));
        j.invalidate();
    }

    protected void b()
    {
        if (c)
        {
            c();
            if (f <= SwitchButton.f(j))
            {
                c = false;
                f = SwitchButton.f(j);
                SwitchButton.c(j, true);
            } else
            if (f >= SwitchButton.g(j))
            {
                c = false;
                f = SwitchButton.g(j);
                SwitchButton.c(j, false);
            } else
            {
                i = i + 16L;
                d.sendMessageAtTime(d.obtainMessage(1000), i);
            }
            a(f);
        }
    }

    public void b(boolean flag)
    {
        long l = SystemClock.uptimeMillis();
        e = l;
        float f;
        if (flag)
        {
            f = -400F;
        } else
        {
            f = 400F;
        }
        g = f;
        this.f = SwitchButton.e(j);
        i = l + 16L;
        c = true;
        d.removeMessages(1000);
        d.sendMessageAtTime(d.obtainMessage(1000), i);
    }

    private (SwitchButton switchbutton)
    {
        j = switchbutton;
        super();
    }

    j(SwitchButton switchbutton, j j1)
    {
        this(switchbutton);
    }
}
