// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;


// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class a extends c
{

    private static int c;
    private static long d;
    public int a;
    public String b;

    public a()
    {
    }

    protected String a()
    {
        return "[API]";
    }

    protected void a(long l)
    {
        d = l;
    }

    protected int b()
    {
        return 5000;
    }

    protected int c()
    {
        return 50;
    }

    protected long d()
    {
        return (long)c;
    }

    protected long e()
    {
        return d;
    }

    protected void f()
    {
        c++;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|').append(a);
        stringbuilder.append('|').append(b);
        return stringbuilder.toString();
    }
}
