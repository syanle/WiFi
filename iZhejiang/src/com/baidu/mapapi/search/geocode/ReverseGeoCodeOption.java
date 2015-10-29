// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;

import com.baidu.mapapi.model.LatLng;

public class ReverseGeoCodeOption
{

    LatLng a;

    public ReverseGeoCodeOption()
    {
        a = null;
    }

    public ReverseGeoCodeOption location(LatLng latlng)
    {
        a = latlng;
        return this;
    }
}
