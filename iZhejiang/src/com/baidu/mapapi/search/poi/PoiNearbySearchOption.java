// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.model.LatLng;

public class PoiNearbySearchOption
{

    String a;
    LatLng b;
    int c;
    float d;
    int e;
    int f;

    public PoiNearbySearchOption()
    {
        a = null;
        b = null;
        c = -1;
        d = 12F;
        e = 0;
        f = 10;
    }

    public PoiNearbySearchOption keyword(String s)
    {
        a = s;
        return this;
    }

    public PoiNearbySearchOption location(LatLng latlng)
    {
        b = latlng;
        return this;
    }

    public PoiNearbySearchOption pageCapacity(int i)
    {
        f = i;
        return this;
    }

    public PoiNearbySearchOption pageNum(int i)
    {
        e = i;
        return this;
    }

    public PoiNearbySearchOption radius(int i)
    {
        c = i;
        return this;
    }
}
