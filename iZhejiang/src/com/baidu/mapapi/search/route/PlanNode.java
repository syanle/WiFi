// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.LatLng;

public class PlanNode
{

    private LatLng a;
    private String b;
    private String c;

    PlanNode(LatLng latlng, String s, String s1)
    {
        a = null;
        b = null;
        c = null;
        a = latlng;
        b = s;
        c = s1;
    }

    public static PlanNode withCityNameAndPlaceName(String s, String s1)
    {
        return new PlanNode(null, s, s1);
    }

    public static PlanNode withLocation(LatLng latlng)
    {
        return new PlanNode(latlng, null, null);
    }

    LatLng a()
    {
        return a;
    }

    String b()
    {
        return b;
    }

    String c()
    {
        return c;
    }
}
