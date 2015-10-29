// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;

import android.content.Context;
import android.widget.RelativeLayout;

// Referenced classes of package net.youmi.android.a.a.j.b:
//            b, c, e

public abstract class d extends RelativeLayout
    implements b
{

    private c a;
    private c b;

    public d(Context context)
    {
        super(context);
        a = c.a;
        b = c.a;
    }

    private final void a(c c1, c c2)
    {
        switch (e.a[c1.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a();
            return;

        case 2: // '\002'
            b();
            return;

        case 3: // '\003'
            c();
            return;

        case 4: // '\004'
            d();
            break;
        }
    }

    protected abstract void a();

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    protected c getPreState()
    {
        return b;
    }

    public c getState()
    {
        return a;
    }

    public void setState(c c1)
    {
        if (a != c1)
        {
            b = a;
            a = c1;
            a(c1, b);
        }
    }
}
