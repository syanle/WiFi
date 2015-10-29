// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import org.apache.http.Header;

public class b
{

    Header a[];
    private int b;
    private int c;
    private long d;
    private String e;
    private long f;
    private boolean g;
    private boolean h;
    private Header i[];
    private Exception j;

    public b()
    {
        c = 0;
        f = -1L;
        g = false;
        h = false;
    }

    public int a()
    {
        return b;
    }

    public void a(int k)
    {
        b = k;
    }

    public void a(long l)
    {
        d = l;
    }

    public void a(Exception exception)
    {
        j = exception;
    }

    public void a(String s)
    {
        e = s;
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public void a(Header aheader[])
    {
        a = aheader;
    }

    public void b(int k)
    {
        c = k;
    }

    public void b(long l)
    {
        f = l;
    }

    public void b(Header aheader[])
    {
        i = aheader;
    }

    public Header[] b()
    {
        return a;
    }

    public int c()
    {
        return c;
    }

    public long d()
    {
        return d;
    }

    public long e()
    {
        return f;
    }

    public boolean f()
    {
        return h;
    }

    public Header[] g()
    {
        return i;
    }
}
