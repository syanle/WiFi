// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.util.Random;

// Referenced classes of package net.youmi.android.a.b.f:
//            e, f, g

public class h
    implements Cloneable
{

    final g a;
    private int b;
    private int c;
    private int d[];
    private Random e;

    public h(g g)
    {
        a = g;
        super();
        e = new Random();
        d = new int[4];
        c = 0;
        b = -1;
    }

    public h(g g, int i)
    {
        this(g);
        b = i;
    }

    h(g g, e e1)
    {
        this(g, e1.f());
        c = e1.f();
        for (int i = 0; i < d.length; i++)
        {
            d[i] = e1.f();
        }

    }

    public int a()
    {
        if (b >= 0)
        {
            return b;
        }
        this;
        JVM INSTR monitorenter ;
        int i;
        if (b < 0)
        {
            b = e.nextInt(65535);
        }
        i = b;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a(int i)
    {
        return d[i];
    }

    void a(f f1)
    {
        f1.b(a());
        f1.b(256);
        for (int i = 0; i < d.length; i++)
        {
            f1.b(d[i]);
        }

    }

    void b(int i)
    {
        if (d[i] == 65535)
        {
            throw new IllegalStateException("DNS section count cannot be incremented");
        } else
        {
            int ai[] = d;
            ai[i] = ai[i] + 1;
            return;
        }
    }

    public Object clone()
    {
        h h1 = new h(a);
        h1.b = b;
        h1.c = c;
        System.arraycopy(d, 0, h1.d, 0, d.length);
        return h1;
    }
}
