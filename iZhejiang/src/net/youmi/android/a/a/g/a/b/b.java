// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a.b;

import java.io.Serializable;

public class b
    implements Serializable
{

    private String a;
    private String b;
    private long c;
    private long d;
    private long e;
    private int f;
    private int g;

    public b()
    {
        g = 0;
    }

    public String a()
    {
        return b;
    }

    public void a(int i)
    {
        f = i;
    }

    public void a(long l)
    {
        c = l;
    }

    public void a(String s)
    {
        b = s;
    }

    public String b()
    {
        return a;
    }

    public void b(int i)
    {
        g = i;
    }

    public void b(long l)
    {
        d = l;
    }

    public void b(String s)
    {
        a = s;
    }

    public long c()
    {
        return c;
    }

    public void c(long l)
    {
        e = l;
    }

    public long d()
    {
        return d;
    }

    public long e()
    {
        return e;
    }

    public int f()
    {
        return f;
    }

    public int g()
    {
        return g;
    }

    public String toString()
    {
        String s;
        try
        {
            s = (new StringBuilder()).append("AdData :\n  appName: ").append(b).append("\n  pkgName_md5: ").append(a).append("\n  installTime: ").append(c).append("\n  RequiredExperienceTime: ").append(e).append("\n  lastOpenTime: ").append(d).append("\n  runningStatus: ").append(f).append("\n  signinAction: ").append(g).toString();
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
