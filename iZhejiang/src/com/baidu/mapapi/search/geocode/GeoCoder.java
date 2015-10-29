// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;

import com.baidu.mapapi.a;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;

// Referenced classes of package com.baidu.mapapi.search.geocode:
//            GeoCodeOption, ReverseGeoCodeOption, OnGetGeoCoderResultListener, GeoCodeResult, 
//            ReverseGeoCodeResult, a

public class GeoCoder
{
    private class a
        implements b
    {

        final GeoCoder a;

        public void a(int l)
        {
            if (com.baidu.mapapi.search.geocode.GeoCoder.a(a) || com.baidu.mapapi.search.geocode.GeoCoder.b(a) == null)
            {
                return;
            }
            switch (GeoCoder.c(a))
            {
            default:
                return;

            case 1: // '\001'
                com.baidu.mapapi.search.geocode.GeoCoder.b(a).onGetGeoCodeResult(new GeoCodeResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;

            case 2: // '\002'
                com.baidu.mapapi.search.geocode.GeoCoder.b(a).onGetReverseGeoCodeResult(new ReverseGeoCodeResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                break;
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
            if (com.baidu.mapapi.search.geocode.GeoCoder.a(a) || com.baidu.mapapi.search.geocode.GeoCoder.b(a) == null || s == null || s.length() <= 0)
            {
                return;
            }
            switch (GeoCoder.c(a))
            {
            default:
                return;

            case 1: // '\001'
                com.baidu.mapapi.search.geocode.GeoCoder.b(a).onGetGeoCodeResult(com.baidu.mapapi.search.geocode.a.b(s));
                return;

            case 2: // '\002'
                com.baidu.mapapi.search.geocode.GeoCoder.b(a).onGetReverseGeoCodeResult(com.baidu.mapapi.search.geocode.a.a(s));
                break;
            }
        }

        public void j(String s)
        {
        }

        public void k(String s)
        {
        }

        private a()
        {
            a = GeoCoder.this;
            super();
        }

    }


    private d a;
    private OnGetGeoCoderResultListener b;
    private boolean c;
    private int d;
    private int e;

    GeoCoder()
    {
        a = null;
        b = null;
        c = false;
        d = 0;
        e = 0;
        a = new d();
        a.a(new a());
    }

    static boolean a(GeoCoder geocoder)
    {
        return geocoder.c;
    }

    static OnGetGeoCoderResultListener b(GeoCoder geocoder)
    {
        return geocoder.b;
    }

    static int c(GeoCoder geocoder)
    {
        return geocoder.e;
    }

    public static GeoCoder newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new GeoCoder();
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

    public boolean geocode(GeoCodeOption geocodeoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (geocodeoption == null || geocodeoption.b == null || geocodeoption.a == null)
        {
            throw new IllegalArgumentException("option or address or city can not be null");
        } else
        {
            d = e;
            e = 1;
            return a.b(geocodeoption.b, geocodeoption.a);
        }
    }

    public boolean reverseGeoCode(ReverseGeoCodeOption reversegeocodeoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (reversegeocodeoption == null || reversegeocodeoption.a == null)
        {
            throw new IllegalArgumentException("option or mLocation can not be null");
        } else
        {
            d = e;
            e = 2;
            return a.a(com.baidu.mapapi.model.a.b(reversegeocodeoption.a));
        }
    }

    public void setOnGetGeoCodeResultListener(OnGetGeoCoderResultListener ongetgeocoderresultlistener)
    {
        b = ongetgeocoderresultlistener;
    }
}
