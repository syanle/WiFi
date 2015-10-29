// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.platform.comapi.b.b;

// Referenced classes of package com.baidu.mapapi.search.route:
//            RoutePlanSearch, TransitRouteResult, OnGetRoutePlanResultListener, DrivingRouteResult, 
//            WalkingRouteResult, a

private class <init>
    implements b
{

    final RoutePlanSearch a;

    public void a(int l)
    {
        if (!RoutePlanSearch.a(a) && com.baidu.mapapi.search.route.RoutePlanSearch.b(a) != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        com.baidu.mapapi.search.core.NO no = null;
        l;
        JVM INSTR lookupswitch 5: default 76
    //                   3: 162
    //                   11: 134
    //                   12: 141
    //                   13: 148
    //                   14: 155;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        if (no != null)
        {
            switch (RoutePlanSearch.c(a))
            {
            default:
                return;

            case 0: // '\0'
                com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetTransitRouteResult(new TransitRouteResult(no));
                return;

            case 2: // '\002'
                com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetDrivingRouteResult(new DrivingRouteResult(no));
                return;

            case 1: // '\001'
                com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetWalkingRouteResult(new WalkingRouteResult(no));
                return;
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
        no = com.baidu.mapapi.search.core.NO.RESULT_NOT_FOUND;
          goto _L3
_L6:
        no = com.baidu.mapapi.search.core.NO.NOT_SUPPORT_BUS;
          goto _L3
_L7:
        no = com.baidu.mapapi.search.core.NO.NOT_SUPPORT_BUS_2CITY;
          goto _L3
_L8:
        no = com.baidu.mapapi.search.core.NO.ST_EN_TOO_NEAR;
          goto _L3
_L4:
        no = com.baidu.mapapi.search.core.NO.RESULT_NOT_FOUND;
          goto _L3
    }

    public void a(String s)
    {
    }

    public void b(String s)
    {
    }

    public void c(String s)
    {
        if (RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
        {
            return;
        }
        switch (RoutePlanSearch.c(a))
        {
        default:
            return;

        case 0: // '\0'
            TransitRouteResult transitrouteresult = new TransitRouteResult(com.baidu.mapapi.search.core.NO.AMBIGUOUS_ROURE_ADDR);
            transitrouteresult.a(com.baidu.mapapi.search.route.a.f(s));
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetTransitRouteResult(transitrouteresult);
            return;

        case 2: // '\002'
            DrivingRouteResult drivingrouteresult = new DrivingRouteResult(com.baidu.mapapi.search.core.NO.AMBIGUOUS_ROURE_ADDR);
            drivingrouteresult.a(com.baidu.mapapi.search.route.a.f(s));
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetDrivingRouteResult(drivingrouteresult);
            return;

        case 1: // '\001'
            WalkingRouteResult walkingrouteresult = new WalkingRouteResult(com.baidu.mapapi.search.core.NO.AMBIGUOUS_ROURE_ADDR);
            walkingrouteresult.a(com.baidu.mapapi.search.route.a.f(s));
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetWalkingRouteResult(walkingrouteresult);
            return;
        }
    }

    public void d(String s)
    {
    }

    public void e(String s)
    {
    }

    public void f(String s)
    {
        if (RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
        {
            return;
        } else
        {
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetDrivingRouteResult(com.baidu.mapapi.search.route.a.b(s));
            return;
        }
    }

    public void g(String s)
    {
        if (RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
        {
            return;
        } else
        {
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetWalkingRouteResult(com.baidu.mapapi.search.route.a.c(s));
            return;
        }
    }

    public void h(String s)
    {
        if (RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
        {
            return;
        } else
        {
            com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetTransitRouteResult(com.baidu.mapapi.search.route.a.a(s));
            return;
        }
    }

    public void i(String s)
    {
    }

    public void j(String s)
    {
    }

    public void k(String s)
    {
    }

    private (RoutePlanSearch routeplansearch)
    {
        a = routeplansearch;
        super();
    }

    a(RoutePlanSearch routeplansearch, a a1)
    {
        this(routeplansearch);
    }
}
