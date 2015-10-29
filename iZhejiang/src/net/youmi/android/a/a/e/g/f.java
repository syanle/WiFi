// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;

import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;

public class f
{

    private long a;
    private String b;
    private String c;
    private int d;
    private boolean e;

    public f(long l, String s, String s1)
    {
        e = false;
        a = l;
        a(s);
        b(s1);
        e();
    }

    public f(String s, String s1)
    {
        e = false;
        a(s);
        b(s1);
        e();
    }

    private void a(String s)
    {
        b = net.youmi.android.a.b.b.e.b(s);
    }

    private void b(String s)
    {
        c = net.youmi.android.a.b.b.e.b(s);
    }

    private void e()
    {
        String s = "u0h1WrllOLGt_";
        if (b != null)
        {
            s = (new StringBuilder()).append("u0h1WrllOLGt_").append(b).toString();
        }
        String s1 = s;
        if (c != null)
        {
            s1 = (new StringBuilder()).append(s).append(c).toString();
        }
        d = g.a(s1).hashCode();
        boolean flag;
        if (b != null && c != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }

    public String a()
    {
        return b;
    }

    public long b()
    {
        return a;
    }

    public String c()
    {
        return c;
    }

    public boolean d()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        if (obj != null)
        {
            if (obj == this)
            {
                return true;
            }
            if (obj instanceof f)
            {
                int i;
                int j;
                boolean flag;
                try
                {
                    i = ((f)obj).d;
                    j = d;
                }
                catch (Throwable throwable)
                {
                    return super.equals(obj);
                }
                if (i == j)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return d;
    }
}
