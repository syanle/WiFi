// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a.b;


public class a
{

    private String a;
    private int b;
    private String c;
    private int d;
    private int e;
    private int f;
    private String g;

    public a()
    {
        f = 5;
    }

    public String a()
    {
        return a;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(String s)
    {
        a = s;
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        d = i;
    }

    public void b(String s)
    {
        c = s;
    }

    public String c()
    {
        return c;
    }

    public void c(int i)
    {
        e = i;
    }

    public void c(String s)
    {
        g = s;
    }

    public int d()
    {
        return d;
    }

    public void d(int i)
    {
        f = i;
    }

    public int e()
    {
        return e;
    }

    public int f()
    {
        return f;
    }

    public String g()
    {
        return g;
    }

    public String toString()
    {
        String s;
        try
        {
            s = (new StringBuilder()).append("AdActionTypeObject :\n  wadid=").append(b).append("\n  packageNameWithMd5=").append(a).append("\n  appName=").append(c).append("\n  at3=").append(d).append("\n  at13=").append(e).append("\n  accountType=").append(f).append("\n  exNotEnoughTips=").append(g).toString();
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
