// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;


// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class d extends c
{

    private static int d;
    private static long n;
    public String a;
    public int b;
    public String c;

    public d()
    {
        c = "";
    }

    protected String a()
    {
        return "[EVT]";
    }

    protected void a(long l)
    {
        n = l;
    }

    protected int b()
    {
        return 5000;
    }

    protected int c()
    {
        return 30;
    }

    protected long d()
    {
        return (long)d;
    }

    protected long e()
    {
        return n;
    }

    protected void f()
    {
        d++;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|').append(a);
        stringbuilder.append('|').append(b);
        stringbuilder.append('|').append(c);
        return stringbuilder.toString();
    }
}
