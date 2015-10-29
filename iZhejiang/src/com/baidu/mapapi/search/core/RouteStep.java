// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;

import java.util.List;

public class RouteStep
{

    int a;
    int b;
    protected List mWayPoints;

    public RouteStep()
    {
    }

    public int getDistance()
    {
        return a;
    }

    public int getDuration()
    {
        return b;
    }

    public List getWayPoints()
    {
        return mWayPoints;
    }

    public void setDistance(int i)
    {
        a = i;
    }

    public void setDuration(int i)
    {
        b = i;
    }

    public void setWayPoints(List list)
    {
        mWayPoints = list;
    }
}
