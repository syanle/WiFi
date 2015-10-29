// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import net.youmi.android.a.b.b.e;

public final class g
{

    public int a;
    private long b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    public g()
    {
        b = 0L;
        a = 0;
    }

    public long a()
    {
        return b;
    }

    public void a(int i)
    {
        a = i;
    }

    public void a(long l)
    {
        b = l;
    }

    public void a(String s)
    {
        c = s;
    }

    public String b()
    {
        return c;
    }

    public void b(String s)
    {
        try
        {
            s = net.youmi.android.a.b.b.e.b(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        d = s;
    }

    public String c()
    {
        return d;
    }

    public void c(String s)
    {
        e = s;
    }

    public String d()
    {
        return e;
    }

    public void d(String s)
    {
        g = s;
    }

    public String e()
    {
        return g;
    }

    public void e(String s)
    {
        f = s;
    }

    public String f()
    {
        return f;
    }

    public int g()
    {
        return a;
    }

    public String toString()
    {
        String s;
        try
        {
            s = String.format("AppName:[%s],AppPubID:[%s],PakcageName:[%s],IconUrl:[%s],Slogan:[%s],Update:[%d]", new Object[] {
                c, f, d, e, g, Long.valueOf(b)
            });
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
