// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import java.util.ArrayList;

public final class c
{

    private long a;
    private ArrayList b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public c()
    {
        a = 0L;
    }

    public ArrayList a()
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        return b;
    }

    public void a(long l)
    {
        a = l;
    }

    public void a(String s)
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        if (!b.contains(s))
        {
            b.add(s);
        }
    }

    public String b()
    {
        return c;
    }

    public void b(String s)
    {
        c = s;
    }

    public String c()
    {
        return d;
    }

    public void c(String s)
    {
        d = s;
    }

    public String d()
    {
        return e;
    }

    public void d(String s)
    {
        e = s;
    }

    public String e()
    {
        return f;
    }

    public void e(String s)
    {
        f = s;
    }

    public String f()
    {
        return g;
    }

    public void f(String s)
    {
        g = s;
    }

    public String g()
    {
        return h;
    }

    public void g(String s)
    {
        h = s;
    }

    public String h()
    {
        return j;
    }

    public void h(String s)
    {
        j = s;
    }

    public String i()
    {
        return i;
    }

    public void i(String s)
    {
        i = s;
    }

    public long j()
    {
        return a;
    }

    public String toString()
    {
        Object obj = new StringBuilder();
        if (b != null && b.size() > 0)
        {
            int k = 0;
            do
            {
                try
                {
                    if (k >= b.size())
                    {
                        break;
                    }
                    ((StringBuilder) (obj)).append((String)b.get(k));
                    ((StringBuilder) (obj)).append("|||||||");
                }
                catch (Throwable throwable)
                {
                    return super.toString();
                }
                k++;
            } while (true);
        }
        obj = String.format("Author:[%s],Cat:[%s],Price:[%s],Size:[%s],Keyword:[%s],VersionName:[%s],UpdateDate:[%s],Desc:[%s],Update:[%d],SS:[%s]", new Object[] {
            g, f, c, e, h, i, j, d, Long.valueOf(a), ((StringBuilder) (obj)).toString()
        });
        return ((String) (obj));
    }
}
