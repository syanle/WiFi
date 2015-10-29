// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;


public final class d
{

    private long a;
    private int b;
    private String c;
    private String d;
    private int e;

    public d()
    {
        a = 0L;
        b = 0;
        e = 0;
    }

    public long a()
    {
        return a;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(long l)
    {
        a = l;
    }

    public void a(String s)
    {
        c = s;
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        e = i;
    }

    public void b(String s)
    {
        d = s;
    }

    public String c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public int e()
    {
        return e;
    }

    public String toString()
    {
        String s;
        try
        {
            s = String.format("URL:[%s],MD5:[%s],VersionCode:[%d],Size:[%d],Update:[%d]", new Object[] {
                c, d, Integer.valueOf(b), Integer.valueOf(e), Long.valueOf(a)
            });
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
