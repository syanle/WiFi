// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i.a;


public class b
{

    private String a;
    private String b;
    private int c;

    public b()
    {
        a = "";
    }

    int a()
    {
        if (c == 0)
        {
            return 100;
        } else
        {
            return c;
        }
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(String s)
    {
        a = s;
    }

    String b()
    {
        if (a == null)
        {
            return "not set";
        } else
        {
            return a;
        }
    }

    public void b(String s)
    {
        b = s;
    }

    String c()
    {
        if (b == null)
        {
            return "not set";
        } else
        {
            return b;
        }
    }
}
