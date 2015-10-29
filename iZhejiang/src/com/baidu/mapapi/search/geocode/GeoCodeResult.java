// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.SearchResult;

public class GeoCodeResult extends SearchResult
{

    private LatLng a;
    private String b;

    GeoCodeResult()
    {
    }

    GeoCodeResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    void a(LatLng latlng)
    {
        a = latlng;
    }

    public String getAddress()
    {
        return b;
    }

    public LatLng getLocation()
    {
        return a;
    }

    public void setAddress(String s)
    {
        b = s;
    }
}
