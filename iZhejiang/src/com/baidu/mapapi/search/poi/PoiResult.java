// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.search.core.SearchResult;
import java.util.List;

public class PoiResult extends SearchResult
{

    private int a;
    private int b;
    private int c;
    private int d;
    private List e;
    private List f;

    PoiResult()
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    }

    PoiResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    }

    void a(int i)
    {
        a = i;
    }

    void a(List list)
    {
        e = list;
    }

    void b(int i)
    {
        b = i;
    }

    void b(List list)
    {
        f = list;
    }

    void c(int i)
    {
        c = i;
    }

    void d(int i)
    {
        d = i;
    }

    public List getAllPoi()
    {
        return e;
    }

    public int getCurrentPageCapacity()
    {
        return c;
    }

    public int getCurrentPageNum()
    {
        return a;
    }

    public List getSuggestCityList()
    {
        return f;
    }

    public int getTotalPageNum()
    {
        return b;
    }

    public int getTotalPoiNum()
    {
        return d;
    }
}
