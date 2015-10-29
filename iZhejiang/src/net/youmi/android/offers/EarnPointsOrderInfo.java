// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import java.io.Serializable;

public final class EarnPointsOrderInfo
    implements Serializable
{

    private String a;
    private int b;
    private String c;
    private int d;
    private String e;
    private String f;
    private int g;
    private long h;
    private int i;

    public EarnPointsOrderInfo()
    {
    }

    int a()
    {
        return i;
    }

    void a(int j)
    {
        b = j;
    }

    void a(long l)
    {
        h = l;
    }

    void a(String s)
    {
        a = s;
    }

    void b(int j)
    {
        d = j;
    }

    void b(String s)
    {
        c = s;
    }

    void c(int j)
    {
        g = j;
    }

    void c(String s)
    {
        e = s;
    }

    void d(int j)
    {
        i = j;
    }

    void d(String s)
    {
        f = s;
    }

    public String getAppName()
    {
        return f;
    }

    public int getChannelId()
    {
        return b;
    }

    public String getCustomUserID()
    {
        return c;
    }

    public String getMessage()
    {
        return e;
    }

    public String getOrderID()
    {
        return a;
    }

    public int getPoints()
    {
        return g;
    }

    public long getSettlingTime()
    {
        return h;
    }

    public int getStatus()
    {
        return d;
    }
}
