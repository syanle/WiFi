// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.g;

import java.io.Serializable;

public class e
    implements Serializable
{

    private static String d = null;
    private String a;
    private String b;
    private String c;
    private String e;
    private String f;
    private int g;

    public e()
    {
        e = null;
        g = 1;
    }

    public static void f(String s)
    {
        d = s;
    }

    public static String p()
    {
        return d;
    }

    public void b(String s)
    {
        a = s;
    }

    public void c(String s)
    {
        b = s;
    }

    public void d(String s)
    {
        f = net.youmi.android.a.b.b.e.b(s);
        if (f == null)
        {
            g = 1;
            return;
        } else
        {
            g = 2;
            return;
        }
    }

    public void e(String s)
    {
        c = s;
    }

    public void g(String s)
    {
        e = s;
    }

    public String k()
    {
        return a;
    }

    public String l()
    {
        return b;
    }

    public int m()
    {
        return g;
    }

    public String n()
    {
        return f;
    }

    public String o()
    {
        if (r())
        {
            return (new StringBuilder()).append(net.youmi.android.a.b.b.e.b()).append(p()).append(q()).toString();
        } else
        {
            return c;
        }
    }

    public String q()
    {
        return e;
    }

    public boolean r()
    {
        return !net.youmi.android.a.b.b.e.a(d) && !net.youmi.android.a.b.b.e.a(e);
    }

}
