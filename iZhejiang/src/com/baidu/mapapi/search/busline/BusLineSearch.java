// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.busline;

import com.baidu.mapapi.a;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;

// Referenced classes of package com.baidu.mapapi.search.busline:
//            BusLineSearchOption, OnGetBusLineSearchResultListener, BusLineResult, a

public class BusLineSearch
{
    private class a
        implements b
    {

        final BusLineSearch a;

        public void a(int l)
        {
            if (com.baidu.mapapi.search.busline.BusLineSearch.a(a) || com.baidu.mapapi.search.busline.BusLineSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.busline.BusLineSearch.b(a).onGetBusLineResult(new BusLineResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;
            }
        }

        public void a(String s)
        {
        }

        public void b(String s)
        {
        }

        public void c(String s)
        {
        }

        public void d(String s)
        {
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
            if (com.baidu.mapapi.search.busline.BusLineSearch.a(a) || s == null || s.length() <= 0 || com.baidu.mapapi.search.busline.BusLineSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.busline.BusLineSearch.b(a).onGetBusLineResult(com.baidu.mapapi.search.busline.a.a(s));
                return;
            }
        }

        public void k(String s)
        {
        }

        private a()
        {
            a = BusLineSearch.this;
            super();
        }

    }


    private d a;
    private OnGetBusLineSearchResultListener b;
    private boolean c;

    BusLineSearch()
    {
        a = null;
        b = null;
        c = false;
        a = new d();
        a.a(new a());
    }

    static boolean a(BusLineSearch buslinesearch)
    {
        return buslinesearch.c;
    }

    static OnGetBusLineSearchResultListener b(BusLineSearch buslinesearch)
    {
        return buslinesearch.b;
    }

    public static BusLineSearch newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new BusLineSearch();
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

    public boolean searchBusLine(BusLineSearchOption buslinesearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (buslinesearchoption == null || buslinesearchoption.b == null || buslinesearchoption.a == null)
        {
            throw new IllegalArgumentException("option or city or uid can not be null");
        } else
        {
            return a.a(buslinesearchoption.b, buslinesearchoption.a);
        }
    }

    public void setOnGetBusLineSearchResultListener(OnGetBusLineSearchResultListener ongetbuslinesearchresultlistener)
    {
        b = ongetbuslinesearchresultlistener;
    }
}
