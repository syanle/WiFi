// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import com.tencent.record.b.c;

// Referenced classes of package com.tencent.record.debug:
//            b

public abstract class i
{

    private volatile int a;
    private volatile boolean b;
    private b c;

    public i()
    {
        this(63, true, b.a);
    }

    public i(int j, boolean flag, b b1)
    {
        a = 63;
        b = true;
        c = b.a;
        a(j);
        a(flag);
        a(b1);
    }

    public void a(int j)
    {
        a = j;
    }

    protected abstract void a(int j, Thread thread, long l, String s, String s1, Throwable throwable);

    public void a(b b1)
    {
        c = b1;
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public void b(int j, Thread thread, long l, String s, String s1, Throwable throwable)
    {
        if (d() && com.tencent.record.b.c.a(a, j))
        {
            a(j, thread, l, s, s1, throwable);
        }
    }

    public boolean d()
    {
        return b;
    }

    public b e()
    {
        return c;
    }
}
