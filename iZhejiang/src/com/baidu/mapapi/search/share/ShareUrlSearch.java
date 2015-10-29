// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.share;

import com.baidu.mapapi.a;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;

// Referenced classes of package com.baidu.mapapi.search.share:
//            LocationShareURLOption, PoiDetailShareURLOption, OnGetShareUrlResultListener, ShareUrlResult, 
//            a

public class ShareUrlSearch
{
    private class a
        implements b
    {

        final ShareUrlSearch a;

        public void a(int l)
        {
            if (com.baidu.mapapi.search.share.ShareUrlSearch.a(a) || com.baidu.mapapi.search.share.ShareUrlSearch.b(a) == null)
            {
                return;
            }
            switch (ShareUrlSearch.c(a))
            {
            default:
                return;

            case 1: // '\001'
                com.baidu.mapapi.search.share.ShareUrlSearch.b(a).onGetPoiDetailShareUrlResult(new ShareUrlResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
                return;

            case 2: // '\002'
                com.baidu.mapapi.search.share.ShareUrlSearch.b(a).onGetLocationShareUrlResult(new ShareUrlResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
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
            if (com.baidu.mapapi.search.share.ShareUrlSearch.a(a) || com.baidu.mapapi.search.share.ShareUrlSearch.b(a) == null)
            {
                return;
            }
            switch (ShareUrlSearch.c(a))
            {
            default:
                return;

            case 1: // '\001'
                com.baidu.mapapi.search.share.ShareUrlSearch.b(a).onGetPoiDetailShareUrlResult(com.baidu.mapapi.search.share.a.a(s));
                return;

            case 2: // '\002'
                com.baidu.mapapi.search.share.ShareUrlSearch.b(a).onGetLocationShareUrlResult(com.baidu.mapapi.search.share.a.a(s));
                break;
            }
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
            a = ShareUrlSearch.this;
            super();
        }

    }


    private d a;
    private OnGetShareUrlResultListener b;
    private boolean c;
    private int d;
    private int e;

    ShareUrlSearch()
    {
        a = null;
        b = null;
        c = false;
        d = 0;
        e = 0;
        a = new d();
        a.a(new a());
    }

    static boolean a(ShareUrlSearch shareurlsearch)
    {
        return shareurlsearch.c;
    }

    static OnGetShareUrlResultListener b(ShareUrlSearch shareurlsearch)
    {
        return shareurlsearch.b;
    }

    static int c(ShareUrlSearch shareurlsearch)
    {
        return shareurlsearch.e;
    }

    public static ShareUrlSearch newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new ShareUrlSearch();
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

    public boolean requestLocationShareUrl(LocationShareURLOption locationshareurloption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (locationshareurloption == null || locationshareurloption.a == null || locationshareurloption.b == null || locationshareurloption.c == null)
        {
            throw new IllegalArgumentException("option or name or snippet  can not be null");
        } else
        {
            d = e;
            e = 2;
            return a.a(com.baidu.mapapi.model.a.b(locationshareurloption.a), locationshareurloption.b, locationshareurloption.c);
        }
    }

    public boolean requestPoiDetailShareUrl(PoiDetailShareURLOption poidetailshareurloption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (poidetailshareurloption == null || poidetailshareurloption.a == null)
        {
            throw new IllegalArgumentException("option or uid can not be null");
        } else
        {
            d = e;
            e = 1;
            return a.b(poidetailshareurloption.a);
        }
    }

    public void setOnGetShareUrlResultListener(OnGetShareUrlResultListener ongetshareurlresultlistener)
    {
        b = ongetshareurlresultlistener;
    }
}
