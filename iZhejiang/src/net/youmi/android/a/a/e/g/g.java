// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;

import android.content.Context;
import net.youmi.android.a.b.k.f;

// Referenced classes of package net.youmi.android.a.a.e.g:
//            c

public class g extends c
{

    private int a;
    private int b;
    private int c;
    private int d;
    private double e;
    private double f;
    private boolean g;

    public g(int i, int j)
    {
        super(i, j);
        a = -9999;
        b = -9999;
        c = 0;
        d = 0;
        e = 0.0D;
        f = 0.0D;
        g = false;
    }

    public int a(Context context)
    {
        int i;
        try
        {
            context = net.youmi.android.a.b.k.f.a(context);
            if (f > 0.0D && e > 0.0D)
            {
                return (int)((double)context.b() * e);
            }
            if (context.b() > context.c())
            {
                return d;
            }
            i = c;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return 0;
        }
        return i;
    }

    public void a(double d1)
    {
        double d2 = 1.0D;
        double d3 = 0.0D;
        if (d1 < 0.0D)
        {
            d1 = d3;
        }
        if (d1 > 1.0D)
        {
            d1 = d2;
        }
        e = d1;
    }

    public void a(boolean flag)
    {
        g = flag;
    }

    public int b(Context context)
    {
        int i;
        try
        {
            context = net.youmi.android.a.b.k.f.a(context);
            if (f > 0.0D && e > 0.0D)
            {
                return (int)((double)context.c() * f);
            }
            if (context.b() > context.c())
            {
                return c;
            }
            i = d;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return 0;
        }
        return i;
    }

    public void b(double d1)
    {
        double d2 = 1.0D;
        double d3 = 0.0D;
        if (d1 < 0.0D)
        {
            d1 = d3;
        }
        if (d1 > 1.0D)
        {
            d1 = d2;
        }
        f = d1;
    }

    public void d(int i)
    {
        a = i;
    }

    public void e(int i)
    {
        b = i;
    }

    public void f(int i)
    {
        c = i;
    }

    public void g(int i)
    {
        d = i;
    }

    public int s()
    {
        return a;
    }

    public int t()
    {
        return b;
    }

    public int u()
    {
        return c;
    }

    public int v()
    {
        return d;
    }

    public boolean w()
    {
        return g;
    }

    public double x()
    {
        return e;
    }

    public double y()
    {
        return f;
    }
}
