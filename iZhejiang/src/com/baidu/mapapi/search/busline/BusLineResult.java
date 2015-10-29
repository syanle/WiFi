// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.busline;

import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import com.baidu.mapapi.search.core.SearchResult;
import java.util.Date;
import java.util.List;

public class BusLineResult extends SearchResult
{
    public static class BusStation extends RouteNode
    {

        public BusStation()
        {
        }
    }

    public static class BusStep extends RouteStep
    {

        public BusStep()
        {
        }
    }


    private String a;
    private String b;
    private boolean c;
    private Date d;
    private Date e;
    private String f;
    private List g;
    private List h;

    BusLineResult()
    {
        a = null;
        b = null;
        g = null;
        h = null;
    }

    BusLineResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
        a = null;
        b = null;
        g = null;
        h = null;
    }

    void a(String s)
    {
        b = s;
    }

    void a(Date date)
    {
        d = date;
    }

    void a(List list)
    {
        g = list;
    }

    void a(boolean flag)
    {
        c = flag;
    }

    void b(String s)
    {
        f = s;
    }

    void b(Date date)
    {
        e = date;
    }

    void b(List list)
    {
        h = list;
    }

    public String getBusCompany()
    {
        return a;
    }

    public String getBusLineName()
    {
        return b;
    }

    public Date getEndTime()
    {
        return e;
    }

    public Date getStartTime()
    {
        return d;
    }

    public List getStations()
    {
        return g;
    }

    public List getSteps()
    {
        return h;
    }

    public String getUid()
    {
        return f;
    }

    public boolean isMonthTicket()
    {
        return c;
    }
}
