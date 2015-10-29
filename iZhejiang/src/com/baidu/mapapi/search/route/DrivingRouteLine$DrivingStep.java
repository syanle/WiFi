// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.a;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.route:
//            DrivingRouteLine

public static class  extends RouteStep
{

    private int c;
    private RouteNode d;
    private RouteNode e;
    private String f;
    private String g;
    private String h;
    private String i;
    private int j;

    void a(int k)
    {
        c = k;
    }

    void a(RouteNode routenode)
    {
        d = routenode;
    }

    void a(String s)
    {
        f = s;
    }

    void b(int k)
    {
        j = k;
    }

    void b(RouteNode routenode)
    {
        e = routenode;
    }

    void b(String s)
    {
        g = s;
    }

    void c(String s)
    {
        h = s;
    }

    void d(String s)
    {
        i = s;
    }

    public int getDirection()
    {
        return c;
    }

    public RouteNode getEntrace()
    {
        return d;
    }

    public String getEntraceInstructions()
    {
        return g;
    }

    public RouteNode getExit()
    {
        return e;
    }

    public String getExitInstructions()
    {
        return h;
    }

    public String getInstructions()
    {
        return i;
    }

    public int getNumTurns()
    {
        return j;
    }

    public List getWayPoints()
    {
        if (mWayPoints == null)
        {
            mWayPoints = com.baidu.mapapi.model.a.c(f);
        }
        return mWayPoints;
    }

    public ()
    {
    }
}
