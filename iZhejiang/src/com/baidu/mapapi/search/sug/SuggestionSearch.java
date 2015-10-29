// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.sug;

import com.baidu.mapapi.a;
import com.baidu.platform.comapi.b.b;
import com.baidu.platform.comapi.b.d;

// Referenced classes of package com.baidu.mapapi.search.sug:
//            SuggestionSearchOption, OnGetSuggestionResultListener, SuggestionResult, a

public class SuggestionSearch
{
    private class a
        implements b
    {

        final SuggestionSearch a;

        public void a(int l)
        {
            if (com.baidu.mapapi.search.sug.SuggestionSearch.a(a) || com.baidu.mapapi.search.sug.SuggestionSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.sug.SuggestionSearch.b(a).onGetSuggestionResult(new SuggestionResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND));
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
        }

        public void k(String s)
        {
            if (com.baidu.mapapi.search.sug.SuggestionSearch.a(a) || s == null || s.length() <= 0 || com.baidu.mapapi.search.sug.SuggestionSearch.b(a) == null)
            {
                return;
            } else
            {
                com.baidu.mapapi.search.sug.SuggestionSearch.b(a).onGetSuggestionResult(com.baidu.mapapi.search.sug.a.a(s));
                return;
            }
        }

        private a()
        {
            a = SuggestionSearch.this;
            super();
        }

    }


    private d a;
    private OnGetSuggestionResultListener b;
    private boolean c;

    SuggestionSearch()
    {
        a = null;
        b = null;
        c = false;
        a = new d();
        a.a(new a());
    }

    static boolean a(SuggestionSearch suggestionsearch)
    {
        return suggestionsearch.c;
    }

    static OnGetSuggestionResultListener b(SuggestionSearch suggestionsearch)
    {
        return suggestionsearch.b;
    }

    public static SuggestionSearch newInstance()
    {
        com.baidu.mapapi.a.a().b();
        return new SuggestionSearch();
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

    public boolean requestSuggestion(SuggestionSearchOption suggestionsearchoption)
    {
        if (a == null)
        {
            throw new IllegalStateException("searcher has been destroyed");
        }
        if (suggestionsearchoption == null || suggestionsearchoption.b == null || suggestionsearchoption.a == null)
        {
            throw new IllegalArgumentException("option or keyword or city can not be null");
        } else
        {
            return a.a(suggestionsearchoption.b, 0, suggestionsearchoption.a, null, 12, com.baidu.mapapi.model.a.b(suggestionsearchoption.c));
        }
    }

    public void setOnGetSuggestionResultListener(OnGetSuggestionResultListener ongetsuggestionresultlistener)
    {
        b = ongetsuggestionresultlistener;
    }
}
