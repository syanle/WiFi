// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import com.baidu.mapapi.search.core.SearchResult;
import com.baidu.mapapi.search.core.TaxiInfo;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.route:
//            SuggestAddrInfo

public final class TransitRouteResult extends SearchResult
{

    private TaxiInfo a;
    private List b;
    private SuggestAddrInfo c;

    TransitRouteResult()
    {
    }

    TransitRouteResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    void a(TaxiInfo taxiinfo)
    {
        a = taxiinfo;
    }

    void a(SuggestAddrInfo suggestaddrinfo)
    {
        c = suggestaddrinfo;
    }

    void a(List list)
    {
        b = list;
    }

    public List getRouteLines()
    {
        return b;
    }

    public SuggestAddrInfo getSuggestAddrInfo()
    {
        return c;
    }

    public TaxiInfo getTaxiInfo()
    {
        return a;
    }
}
