// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;


public final class e
{

    private long a;
    private long b;
    private String c;

    public e()
    {
        b = 0L;
    }

    public long a()
    {
        return a;
    }

    public void a(long l)
    {
        a = l;
    }

    public void a(String s)
    {
        c = s;
    }

    public long b()
    {
        return b;
    }

    public void b(long l)
    {
        b = l;
    }

    public String c()
    {
        return c;
    }

    public String toString()
    {
        String s;
        try
        {
            s = String.format("AverageRating:[%s],Downloads:[%d],Update:[%d]", new Object[] {
                c, Long.valueOf(b), Long.valueOf(a)
            });
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return s;
    }
}
