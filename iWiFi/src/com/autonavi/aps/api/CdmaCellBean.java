// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;


public class CdmaCellBean
{

    private int a;
    private int b;
    private String c;
    private String d;
    private int e;
    private int f;
    private int g;
    private int h;

    public CdmaCellBean()
    {
        h = 10;
    }

    public int getBid()
    {
        return g;
    }

    public int getLat()
    {
        return a;
    }

    public int getLon()
    {
        return b;
    }

    public String getMcc()
    {
        return c;
    }

    public String getMnc()
    {
        return d;
    }

    public int getNid()
    {
        return f;
    }

    public int getSid()
    {
        return e;
    }

    public int getSignal()
    {
        return h;
    }

    public void setBid(int i)
    {
        g = i;
    }

    public void setLat(int i)
    {
        if (i < 0x7fffffff)
        {
            a = i;
        }
    }

    public void setLon(int i)
    {
        if (a < 0x7fffffff)
        {
            b = i;
        }
    }

    public void setMcc(String s)
    {
        c = s;
    }

    public void setMnc(String s)
    {
        d = s;
    }

    public void setNid(int i)
    {
        f = i;
    }

    public void setSid(int i)
    {
        e = i;
    }

    public void setSignal(int i)
    {
        h = i;
    }
}
