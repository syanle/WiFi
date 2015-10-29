// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.a;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.platform.comapi.a.c;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.baidu.mapapi.search.poi:
//            PoiBoundSearchOption, PoiCitySearchOption, PoiNearbySearchOption, PoiDetailSearchOption, 
//            OnGetPoiSearchResultListener, PoiDetailResult, PoiResult, a

public class PoiSearch
{
    private class a
        implements b
    {

        final PoiSearch a;

        public void a(int l)
        {
            if (com.baidu.mapapi.search.poi.PoiSearch.a(a) || com.baidu.mapapi.search.poi.PoiSearch.b(a) == null)
            {
                return;
            }
            if (com.baidu.mapapi.search.poi.PoiSearch.d(a) == 4)
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiDetailResult(new PoiDetailResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;
            } else
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiResult(new PoiResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;
            }
        }

        public void a(String s)
        {
            if (com.baidu.mapapi.search.poi.PoiSearch.a(a) || s == null || s.length() <= 0 || com.baidu.mapapi.search.poi.PoiSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiResult(com.baidu.mapapi.search.poi.a.a(s, com.baidu.mapapi.search.poi.PoiSearch.c(a)));
                return;
            }
        }

        public void b(String s)
        {
            if (s == null || s.length() <= 0 || com.baidu.mapapi.search.poi.PoiSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiResult(com.baidu.mapapi.search.poi.a.a(s));
                return;
            }
        }

        public void c(String s)
        {
        }

        public void d(String s)
        {
            if (com.baidu.mapapi.search.poi.PoiSearch.a(a) || s == null || s.length() <= 0 || com.baidu.mapapi.search.poi.PoiSearch.b(a) == null)
            {
                return;
            }
            PoiDetailResult poidetailresult = new PoiDetailResult();
            if (poidetailresult.a(s))
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiDetailResult(poidetailresult);
                return;
            } else
            {
                com.baidu.mapapi.search.poi.PoiSearch.b(a).onGetPoiDetailResult(new PoiDetailResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;
            }
        }

        public void e(String s)
        {
        }

        public void f(String s)
        {
        }

        public void g(String s)
        {
        }

        public void h(String s)
        {
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
            a = PoiSearch.this;
            super();
        }

    }


    private d a;
    private OnGetPoiSearchResultListener b;
    private boolean c;
    private int d;
    private int e;
    private boolean f;
    private int g;

    PoiSearch()
    {
        a = null;
        b = null;
        c = false;
        d = 0;
        e = 0;
        g = 0;
        a = new d();
        a.a(new a());
    }

    static boolean a(PoiSearch poisearch)
    {
        return poisearch.c;
    }

    static OnGetPoiSearchResultListener b(PoiSearch poisearch)
    {
        return poisearch.b;
    }

    static int c(PoiSearch poisearch)
    {
        return poisearch.g;
    }

    static int d(PoiSearch poisearch)
    {
        return poisearch.e;
    }

    public static PoiSearch newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new PoiSearch();
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

    public boolean searchInBound(PoiBoundSearchOption poiboundsearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (poiboundsearchoption == null || poiboundsearchoption.a == null || poiboundsearchoption.b == null)
        {
            throw new IllegalArgumentException("option or bound or keyworld can not be null");
        } else
        {
            d = e;
            e = 2;
            g = poiboundsearchoption.d;
            a.a(poiboundsearchoption.e);
            c c1 = new c();
            c1.b(com.baidu.mapapi.model.a.b(poiboundsearchoption.a.northeast));
            c1.a(com.baidu.mapapi.model.a.b(poiboundsearchoption.a.southwest));
            return a.a(poiboundsearchoption.b, 1, poiboundsearchoption.d, c1, (int)poiboundsearchoption.c, null, null);
        }
    }

    public boolean searchInCity(PoiCitySearchOption poicitysearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (poicitysearchoption == null || poicitysearchoption.a == null || poicitysearchoption.b == null)
        {
            throw new IllegalArgumentException("option or city or keyworld can not be null");
        } else
        {
            d = e;
            e = 1;
            g = poicitysearchoption.e;
            a.a(poicitysearchoption.f);
            return a.a(poicitysearchoption.b, poicitysearchoption.a, poicitysearchoption.e, null, (int)poicitysearchoption.c, null);
        }
    }

    public boolean searchNearby(PoiNearbySearchOption poinearbysearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (poinearbysearchoption == null || poinearbysearchoption.b == null || poinearbysearchoption.a == null)
        {
            throw new IllegalArgumentException("option or location or keyworld can not be null");
        } else
        {
            d = e;
            e = 3;
            g = poinearbysearchoption.e;
            a.a(poinearbysearchoption.f);
            Object obj1 = com.baidu.mapapi.model.a.b(poinearbysearchoption.b);
            Object obj = new com.baidu.platform.comapi.a.d(((com.baidu.platform.comapi.a.d) (obj1)).a - poinearbysearchoption.c, ((com.baidu.platform.comapi.a.d) (obj1)).b - poinearbysearchoption.c);
            com.baidu.platform.comapi.a.d d1 = new com.baidu.platform.comapi.a.d(((com.baidu.platform.comapi.a.d) (obj1)).a + poinearbysearchoption.c, ((com.baidu.platform.comapi.a.d) (obj1)).b + poinearbysearchoption.c);
            obj1 = new c();
            ((c) (obj1)).a(((com.baidu.platform.comapi.a.d) (obj)));
            ((c) (obj1)).b(d1);
            obj = new HashMap();
            ((Map) (obj)).put("distance", Integer.valueOf(poinearbysearchoption.c));
            return a.a(poinearbysearchoption.a, 1, poinearbysearchoption.e, (int)poinearbysearchoption.d, ((c) (obj1)), ((c) (obj1)), ((Map) (obj)));
        }
    }

    public boolean searchPoiDetail(PoiDetailSearchOption poidetailsearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (poidetailsearchoption == null || poidetailsearchoption.a == null)
        {
            throw new IllegalArgumentException("option or uid can not be null");
        } else
        {
            d = e;
            e = 4;
            f = poidetailsearchoption.b;
            return a.a(poidetailsearchoption.a);
        }
    }

    public void setOnGetPoiSearchResultListener(OnGetPoiSearchResultListener ongetpoisearchresultlistener)
    {
        b = ongetpoisearchresultlistener;
    }
}
