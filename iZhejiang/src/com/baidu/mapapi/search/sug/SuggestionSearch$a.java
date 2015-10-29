// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.sug;

import com.baidu.platform.comapi.b.b;

// Referenced classes of package com.baidu.mapapi.search.sug:
//            SuggestionSearch, SuggestionResult, OnGetSuggestionResultListener, a

private class <init>
    implements b
{

    final SuggestionSearch a;

    public void a(int l)
    {
        if (SuggestionSearch.a(a) || com.baidu.mapapi.search.sug.SuggestionSearch.b(a) == null)
        {
            return;
        } else
        {
            com.baidu.mapapi.search.sug.SuggestionSearch.b(a).onGetSuggestionResult(new SuggestionResult(com.baidu.mapapi.search.core.O.RESULT_NOT_FOUND));
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
        if (SuggestionSearch.a(a) || s == null || s.length() <= 0 || com.baidu.mapapi.search.sug.SuggestionSearch.b(a) == null)
        {
            return;
        } else
        {
            com.baidu.mapapi.search.sug.SuggestionSearch.b(a).onGetSuggestionResult(com.baidu.mapapi.search.sug.a.a(s));
            return;
        }
    }

    private ltListener(SuggestionSearch suggestionsearch)
    {
        a = suggestionsearch;
        super();
    }

    a(SuggestionSearch suggestionsearch, a a1)
    {
        this(suggestionsearch);
    }
}
