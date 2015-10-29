// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


// Referenced classes of package com.mapabc.mapapi.core:
//            m

public class o
{

    private static o h;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    private o()
    {
        this(null);
    }

    private o(m m1)
    {
        a = "http://emap.mapabc.com";
        b = "http://tm.mapabc.com";
        c = "http://search1.mapabc.com:80";
        d = "http://ds.mapabc.com:8888";
        e = "http://si.mapabc.com";
        f = "http://tmds.mapabc.com";
        g = "http://apis.mapabc.com/sisserver";
        if (m1 != null)
        {
            if (m1.d != null)
            {
                if (m1.d.b != null && !m1.d.b.i.equals(""))
                {
                    d = m1.d.b.i;
                }
                if (m1.d.c != null && !m1.d.c.i.equals(""))
                {
                    f = m1.d.c.i;
                }
            }
            if (m1.e != null)
            {
                if (m1.e.a != null && !m1.e.a.equals(""))
                {
                    c = m1.e.a;
                }
                if (m1.e.b != null && !m1.e.b.equals(""))
                {
                    g = m1.e.b;
                }
            }
        }
    }

    public static o a()
    {
        com/mapabc/mapapi/core/o;
        JVM INSTR monitorenter ;
        o o1 = a(((m) (null)));
        com/mapabc/mapapi/core/o;
        JVM INSTR monitorexit ;
        return o1;
        Exception exception;
        exception;
        throw exception;
    }

    public static o a(m m1)
    {
        com/mapabc/mapapi/core/o;
        JVM INSTR monitorenter ;
        if (h == null)
        {
            h = new o(m1);
        }
        m1 = h;
        com/mapabc/mapapi/core/o;
        JVM INSTR monitorexit ;
        return m1;
        m1;
        throw m1;
    }

    public void a(String s)
    {
        e = s;
    }

    public String b()
    {
        return a;
    }

    public void b(String s)
    {
        f = s;
    }

    public String c()
    {
        return b;
    }

    public void c(String s)
    {
        a = s;
    }

    public String d()
    {
        return c;
    }

    public void d(String s)
    {
        b = s;
    }

    public String e()
    {
        return g;
    }

    public void e(String s)
    {
        c = s;
    }

    public String f()
    {
        return e;
    }

    public void f(String s)
    {
        d = s;
    }

    public String g()
    {
        return f;
    }

    public String h()
    {
        return d;
    }
}
