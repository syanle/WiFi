// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.model.LatLng;

public class PoiCitySearchOption
{

    String a;
    String b;
    float c;
    LatLng d;
    int e;
    int f;

    public PoiCitySearchOption()
    {
        a = null;
        b = null;
        c = 12F;
        d = null;
        e = 0;
        f = 10;
    }

    public PoiCitySearchOption city(String s)
    {
        a = s;
        return this;
    }

    public PoiCitySearchOption keyword(String s)
    {
        b = s;
        return this;
    }

    public PoiCitySearchOption pageCapacity(int i)
    {
        f = i;
        return this;
    }

    public PoiCitySearchOption pageNum(int i)
    {
        e = i;
        return this;
    }
}
