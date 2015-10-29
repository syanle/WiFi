// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;
import com.baidu.platform.comapi.b.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.route:
//            DrivingRoutePlanOption, PlanNode, TransitRoutePlanOption, WalkingRoutePlanOption, 
//            OnGetRoutePlanResultListener, TransitRouteResult, DrivingRouteResult, WalkingRouteResult, 
//            a

public final class RoutePlanSearch
{
    private class a
        implements b
    {

        final RoutePlanSearch a;

        public void a(int l)
        {
            if (!com.baidu.mapapi.search.route.RoutePlanSearch.a(a) && com.baidu.mapapi.search.route.RoutePlanSearch.b(a) != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno = null;
            l;
            JVM INSTR lookupswitch 5: default 76
        //                       3: 162
        //                       11: 134
        //                       12: 141
        //                       13: 148
        //                       14: 155;
               goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
            if (errorno != null)
            {
                switch (RoutePlanSearch.c(a))
                {
                default:
                    return;

                case 0: // '\0'
                    com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetTransitRouteResult(new TransitRouteResult(errorno));
                    return;

                case 2: // '\002'
                    com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetDrivingRouteResult(new DrivingRouteResult(errorno));
                    return;

                case 1: // '\001'
                    com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetWalkingRouteResult(new WalkingRouteResult(errorno));
                    return;
                }
            }
            if (true) goto _L1; else goto _L5
_L5:
            errorno = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
              goto _L3
_L6:
            errorno = com.baidu.mapapi.search.core.SearchResult.ERRORNO.NOT_SUPPORT_BUS;
              goto _L3
_L7:
            errorno = com.baidu.mapapi.search.core.SearchResult.ERRORNO.NOT_SUPPORT_BUS_2CITY;
              goto _L3
_L8:
            errorno = com.baidu.mapapi.search.core.SearchResult.ERRORNO.ST_EN_TOO_NEAR;
              goto _L3
_L4:
            errorno = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
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
            if (com.baidu.mapapi.search.route.RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
            {
                return;
            }
            switch (RoutePlanSearch.c(a))
            {
            default:
                return;

            case 0: // '\0'
                TransitRouteResult transitrouteresult = new TransitRouteResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.AMBIGUOUS_ROURE_ADDR);
                transitrouteresult.a(com.baidu.mapapi.search.route.a.f(s));
                com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetTransitRouteResult(transitrouteresult);
                return;

            case 2: // '\002'
                DrivingRouteResult drivingrouteresult = new DrivingRouteResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.AMBIGUOUS_ROURE_ADDR);
                drivingrouteresult.a(com.baidu.mapapi.search.route.a.f(s));
                com.baidu.mapapi.search.route.RoutePlanSearch.b(a).onGetDrivingRouteResult(drivingrouteresult);
                return;

            case 1: // '\001'
                WalkingRouteResult walkingrouteresult = new WalkingRouteResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.AMBIGUOUS_ROURE_ADDR);
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
            if (com.baidu.mapapi.search.route.RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
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
            if (com.baidu.mapapi.search.route.RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
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
            if (com.baidu.mapapi.search.route.RoutePlanSearch.a(a) || s == null || s.length() == 0 || com.baidu.mapapi.search.route.RoutePlanSearch.b(a) == null)
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

        private a()
        {
            a = RoutePlanSearch.this;
            super();
        }

    }


    private d a;
    private OnGetRoutePlanResultListener b;
    private boolean c;
    private int d;
    private int e;

    RoutePlanSearch()
    {
        a = null;
        b = null;
        c = false;
        d = 0;
        e = 0;
        a = new d();
        a.a(new a());
    }

    private ArrayList a(DrivingRoutePlanOption drivingrouteplanoption)
    {
        if (drivingrouteplanoption.d == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        drivingrouteplanoption = drivingrouteplanoption.d.iterator();
        do
        {
            if (!drivingrouteplanoption.hasNext())
            {
                break;
            }
            PlanNode plannode = (PlanNode)drivingrouteplanoption.next();
            if (plannode != null && (plannode.a() != null || plannode.c() != null && plannode.b() != null && plannode.c().length() > 0 && plannode.b().length() > 0))
            {
                f f1 = new f();
                if (plannode.c() != null)
                {
                    f1.b = plannode.c();
                }
                if (plannode.a() != null)
                {
                    f1.a = com.baidu.mapapi.model.a.b(plannode.a());
                }
                if (plannode.b() == null)
                {
                    f1.c = "";
                } else
                {
                    f1.c = plannode.b();
                }
                arraylist.add(f1);
            }
        } while (true);
        return arraylist;
    }

    static boolean a(RoutePlanSearch routeplansearch)
    {
        return routeplansearch.c;
    }

    static OnGetRoutePlanResultListener b(RoutePlanSearch routeplansearch)
    {
        return routeplansearch.b;
    }

    static int c(RoutePlanSearch routeplansearch)
    {
        return routeplansearch.e;
    }

    public static RoutePlanSearch newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new RoutePlanSearch();
    }

    public void destroy()
    {
        if (c)
        {
            return;
        } else
        {
            c = true;
            b = null;
            a.a();
            a = null;
            com.baidu.mapapi.a.a().c();
            return;
        }
    }

    public boolean drivingSearch(DrivingRoutePlanOption drivingrouteplanoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (drivingrouteplanoption == null || drivingrouteplanoption.b == null || drivingrouteplanoption.a == null)
        {
            throw new IllegalArgumentException("route plan option , origin or destination can not be null");
        }
        if (drivingrouteplanoption.c == null)
        {
            drivingrouteplanoption.c = DrivingRoutePlanOption.DrivingPolicy.ECAR_TIME_FIRST;
        }
        com.baidu.platform.comapi.b.a a1 = new com.baidu.platform.comapi.b.a();
        if (drivingrouteplanoption.a.c() != null)
        {
            a1.c = drivingrouteplanoption.a.c();
        }
        if (drivingrouteplanoption.a.a() != null)
        {
            a1.b = com.baidu.mapapi.model.a.b(drivingrouteplanoption.a.a());
            a1.a = 1;
        }
        com.baidu.platform.comapi.b.a a2 = new com.baidu.platform.comapi.b.a();
        if (drivingrouteplanoption.b.c() != null)
        {
            a2.c = drivingrouteplanoption.b.c();
        }
        if (drivingrouteplanoption.b.a() != null)
        {
            a2.b = com.baidu.mapapi.model.a.b(drivingrouteplanoption.b.a());
            a2.a = 1;
        }
        d = e;
        e = 2;
        return a.a(a1, a2, null, drivingrouteplanoption.a.b(), drivingrouteplanoption.b.b(), null, 12, drivingrouteplanoption.c.getInt(), 0, a(drivingrouteplanoption), null);
    }

    public void setOnGetRoutePlanResultListener(OnGetRoutePlanResultListener ongetrouteplanresultlistener)
    {
        b = ongetrouteplanresultlistener;
    }

    public boolean transitSearch(TransitRoutePlanOption transitrouteplanoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (transitrouteplanoption == null || transitrouteplanoption.c == null || transitrouteplanoption.b == null || transitrouteplanoption.a == null)
        {
            throw new IllegalArgumentException("route plan option,origin or destination or city can not be null");
        }
        if (transitrouteplanoption.d == null)
        {
            transitrouteplanoption.d = TransitRoutePlanOption.TransitPolicy.EBUS_TIME_FIRST;
        }
        com.baidu.platform.comapi.b.a a1 = new com.baidu.platform.comapi.b.a();
        if (transitrouteplanoption.a.c() != null)
        {
            a1.c = transitrouteplanoption.a.c();
        }
        if (transitrouteplanoption.a.a() != null)
        {
            a1.b = com.baidu.mapapi.model.a.b(transitrouteplanoption.a.a());
            a1.a = 1;
        }
        com.baidu.platform.comapi.b.a a2 = new com.baidu.platform.comapi.b.a();
        if (transitrouteplanoption.b.c() != null)
        {
            a2.c = transitrouteplanoption.b.c();
        }
        if (transitrouteplanoption.b.a() != null)
        {
            a2.b = com.baidu.mapapi.model.a.b(transitrouteplanoption.b.a());
            a2.a = 1;
        }
        d = e;
        e = 0;
        return a.a(a1, a2, transitrouteplanoption.c, null, 12, transitrouteplanoption.d.getInt(), null);
    }

    public boolean walkingSearch(WalkingRoutePlanOption walkingrouteplanoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (walkingrouteplanoption == null || walkingrouteplanoption.b == null || walkingrouteplanoption.a == null)
        {
            throw new IllegalArgumentException("option , origin or destination can not be null");
        }
        com.baidu.platform.comapi.b.a a1 = new com.baidu.platform.comapi.b.a();
        if (walkingrouteplanoption.a.c() != null)
        {
            a1.c = walkingrouteplanoption.a.c();
        }
        if (walkingrouteplanoption.a.a() != null)
        {
            a1.b = com.baidu.mapapi.model.a.b(walkingrouteplanoption.a.a());
            a1.a = 1;
        }
        com.baidu.platform.comapi.b.a a2 = new com.baidu.platform.comapi.b.a();
        if (walkingrouteplanoption.b.c() != null)
        {
            a2.c = walkingrouteplanoption.b.c();
        }
        if (walkingrouteplanoption.b.a() != null)
        {
            a2.b = com.baidu.mapapi.model.a.b(walkingrouteplanoption.b.a());
            a2.a = 1;
        }
        d = e;
        e = 1;
        return a.a(a1, a2, null, walkingrouteplanoption.a.b(), walkingrouteplanoption.b.b(), null, 12, null);
    }
}
