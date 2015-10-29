// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.graphics.Color;
import android.graphics.drawable.Drawable;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            k, l

class m
{

    private k a;
    private float b;
    private int c;
    private Drawable d;
    private int e;
    private int f;

    private m(k k)
    {
        b = -1F;
        c = -1;
        e = 0;
        f = Color.argb(150, 0, 0, 0);
        a = k;
    }

    m(k k, l l)
    {
        this(k);
    }

    public m a(float f1)
    {
        b = f1;
        return this;
    }

    public m a(int i)
    {
        c = i;
        return this;
    }

    public m a(Drawable drawable)
    {
        d = drawable;
        return this;
    }

    public m b(int i)
    {
        e = i;
        return this;
    }
}
