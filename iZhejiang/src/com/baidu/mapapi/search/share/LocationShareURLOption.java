// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.share;

import com.baidu.mapapi.model.LatLng;

public class LocationShareURLOption
{

    LatLng a;
    String b;
    String c;

    public LocationShareURLOption()
    {
        a = null;
        b = null;
        c = null;
    }

    public LocationShareURLOption location(LatLng latlng)
    {
        a = latlng;
        return this;
    }

    public LocationShareURLOption name(String s)
    {
        b = s;
        return this;
    }

    public LocationShareURLOption snippet(String s)
    {
        c = s;
        return this;
    }
}
