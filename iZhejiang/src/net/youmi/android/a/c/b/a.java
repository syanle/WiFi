// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.b;


public class a extends net.youmi.android.a.b.e.a
{

    private static String b = a();

    private static String a()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("3c5b4c5859635209", "FTZNgRJZOBk5");
        }
        catch (Throwable throwable)
        {
            return "Test";
        }
        return s;
    }

    public static void a(String s)
    {
        if (a)
        {
            a(4, b, null, s, new Object[0]);
        }
    }

    public static void a(String s, Throwable throwable)
    {
        if (a)
        {
            a(4, b, throwable, s, new Object[0]);
        }
    }

    public static transient void a(String s, Object aobj[])
    {
        if (a)
        {
            a(4, b, null, s, aobj);
        }
    }

    public static void a(Throwable throwable)
    {
        if (a)
        {
            a(6, b, throwable, null, new Object[0]);
        }
    }

    public static void a(boolean flag)
    {
        a = flag;
    }

    public static void b(String s)
    {
        if (a)
        {
            a(6, b, null, s, new Object[0]);
        }
    }

    public static void b(String s, Throwable throwable)
    {
        if (a)
        {
            a(6, b, throwable, s, new Object[0]);
        }
    }

    public static transient void b(String s, Object aobj[])
    {
        if (a)
        {
            a(6, b, null, s, aobj);
        }
    }

    public static void b(Throwable throwable)
    {
        if (a)
        {
            a(3, b, throwable, null, new Object[0]);
        }
    }

    public static void c(String s)
    {
        if (a)
        {
            a(5, b, null, s, new Object[0]);
        }
    }

    public static transient void c(String s, Object aobj[])
    {
        if (a)
        {
            a(3, b, null, s, aobj);
        }
    }

    public static void d(String s)
    {
        if (a)
        {
            a(3, b, null, s, new Object[0]);
        }
    }

}
