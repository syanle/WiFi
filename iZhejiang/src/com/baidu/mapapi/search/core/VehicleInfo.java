// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;


public class VehicleInfo
{

    private String a;
    private int b;
    private String c;
    private int d;
    private int e;

    public VehicleInfo()
    {
    }

    public int getPassStationNum()
    {
        return b;
    }

    public String getTitle()
    {
        return c;
    }

    public int getTotalPrice()
    {
        return e;
    }

    public String getUid()
    {
        return a;
    }

    public int getZonePrice()
    {
        return d;
    }

    public void setPassStationNum(int i)
    {
        b = i;
    }

    public void setTitle(String s)
    {
        c = s;
    }

    public void setTotalPrice(int i)
    {
        e = i;
    }

    public void setUid(String s)
    {
        a = s;
    }

    public void setZonePrice(int i)
    {
        d = i;
    }
}
