// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.a;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import com.baidu.mapapi.search.core.VehicleInfo;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.route:
//            TransitRouteLine

public static class TransitRouteStepType extends RouteStep
{
    public static final class TransitRouteStepType extends Enum
    {

        private static final TransitRouteStepType $VALUES[];
        public static final TransitRouteStepType BUSLINE;
        public static final TransitRouteStepType SUBWAY;
        public static final TransitRouteStepType WAKLING;

        public static TransitRouteStepType valueOf(String s)
        {
            return (TransitRouteStepType)Enum.valueOf(com/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType, s);
        }

        public static TransitRouteStepType[] values()
        {
            return (TransitRouteStepType[])$VALUES.clone();
        }

        static 
        {
            BUSLINE = new TransitRouteStepType("BUSLINE", 0);
            SUBWAY = new TransitRouteStepType("SUBWAY", 1);
            WAKLING = new TransitRouteStepType("WAKLING", 2);
            $VALUES = (new TransitRouteStepType[] {
                BUSLINE, SUBWAY, WAKLING
            });
        }

        private TransitRouteStepType(String s, int i)
        {
            super(s, i);
        }
    }


    private VehicleInfo c;
    private RouteNode d;
    private RouteNode e;
    private TransitRouteStepType f;
    private String g;
    private String h;

    void a(RouteNode routenode)
    {
        d = routenode;
    }

    void a(VehicleInfo vehicleinfo)
    {
        c = vehicleinfo;
    }

    void a(TransitRouteStepType transitroutesteptype)
    {
        f = transitroutesteptype;
    }

    void a(String s)
    {
        g = s;
    }

    void b(RouteNode routenode)
    {
        e = routenode;
    }

    void b(String s)
    {
        h = s;
    }

    public RouteNode getEntrace()
    {
        return d;
    }

    public RouteNode getExit()
    {
        return e;
    }

    public String getInstructions()
    {
        return g;
    }

    public TransitRouteStepType getStepType()
    {
        return f;
    }

    public VehicleInfo getVehicleInfo()
    {
        return c;
    }

    public List getWayPoints()
    {
        if (mWayPoints == null)
        {
            mWayPoints = com.baidu.mapapi.model.a.c(h);
        }
        return mWayPoints;
    }

    public TransitRouteStepType()
    {
    }
}
