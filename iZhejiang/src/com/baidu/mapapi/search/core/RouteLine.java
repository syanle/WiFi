// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;

import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.core:
//            RouteNode

public class RouteLine
{

    private RouteNode a;
    private RouteNode b;
    private String c;
    private List d;
    private int e;
    private int f;

    public RouteLine()
    {
    }

    public List getAllStep()
    {
        return d;
    }

    public int getDistance()
    {
        return e;
    }

    public int getDuration()
    {
        return f;
    }

    public RouteNode getStarting()
    {
        return a;
    }

    public RouteNode getTerminal()
    {
        return b;
    }

    public String getTitle()
    {
        return c;
    }

    public void setDistance(int i)
    {
        e = i;
    }

    public void setDuration(int i)
    {
        f = i;
    }

    public void setStarting(RouteNode routenode)
    {
        a = routenode;
    }

    public void setSteps(List list)
    {
        d = list;
    }

    public void setTerminal(RouteNode routenode)
    {
        b = routenode;
    }

    public void setTitle(String s)
    {
        c = s;
    }
}
