// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;


public class TaxiInfo
{

    private float a;
    private String b;
    private int c;
    private int d;
    private float e;
    private float f;

    public TaxiInfo()
    {
    }

    public String getDesc()
    {
        return b;
    }

    public int getDistance()
    {
        return c;
    }

    public int getDuration()
    {
        return d;
    }

    public float getPerKMPrice()
    {
        return e;
    }

    public float getStartPrice()
    {
        return f;
    }

    public float getTotalPrice()
    {
        return a;
    }

    public void setDesc(String s)
    {
        b = s;
    }

    public void setDistance(int i)
    {
        c = i;
    }

    public void setDuration(int i)
    {
        d = i;
    }

    public void setPerKMPrice(float f1)
    {
        e = f1;
    }

    public void setStartPrice(float f1)
    {
        f = f1;
    }

    public void setTotalPrice(float f1)
    {
        a = f1;
    }
}
