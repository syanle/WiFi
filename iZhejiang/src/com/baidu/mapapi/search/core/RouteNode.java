// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;

import com.baidu.mapapi.model.LatLng;

public class RouteNode
{

    private String a;
    private LatLng b;
    private String c;

    public RouteNode()
    {
    }

    public static RouteNode location(LatLng latlng)
    {
        RouteNode routenode = new RouteNode();
        routenode.setLocation(latlng);
        return routenode;
    }

    public static RouteNode titleAndLocation(String s, LatLng latlng)
    {
        RouteNode routenode = new RouteNode();
        routenode.setTitle(s);
        routenode.setLocation(latlng);
        return routenode;
    }

    public LatLng getLocation()
    {
        return b;
    }

    public String getTitle()
    {
        return a;
    }

    public String getUid()
    {
        return c;
    }

    public void setLocation(LatLng latlng)
    {
        b = latlng;
    }

    public void setTitle(String s)
    {
        a = s;
    }

    public void setUid(String s)
    {
        c = s;
    }
}
