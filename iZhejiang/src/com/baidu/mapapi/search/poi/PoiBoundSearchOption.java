// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.model.LatLngBounds;

public class PoiBoundSearchOption
{

    LatLngBounds a;
    String b;
    float c;
    int d;
    int e;

    public PoiBoundSearchOption()
    {
        a = null;
        b = null;
        c = 12F;
        d = 0;
        e = 10;
    }

    public PoiBoundSearchOption bound(LatLngBounds latlngbounds)
    {
        a = latlngbounds;
        return this;
    }

    public PoiBoundSearchOption keyword(String s)
    {
        b = s;
        return this;
    }

    public PoiBoundSearchOption pageCapacity(int i)
    {
        e = i;
        return this;
    }

    public PoiBoundSearchOption pageNum(int i)
    {
        d = i;
        return this;
    }
}
