// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import java.util.List;

public class SuggestAddrInfo
{

    private List a;
    private List b;
    private List c;
    private List d;
    private List e;
    private List f;

    public SuggestAddrInfo()
    {
    }

    void a(List list)
    {
        a = list;
    }

    void b(List list)
    {
        b = list;
    }

    void c(List list)
    {
        c = list;
    }

    void d(List list)
    {
        d = list;
    }

    void e(List list)
    {
        e = list;
    }

    void f(List list)
    {
        f = list;
    }

    public List getSuggestEndCity()
    {
        return e;
    }

    public List getSuggestEndNode()
    {
        return b;
    }

    public List getSuggestStartCity()
    {
        return d;
    }

    public List getSuggestStartNode()
    {
        return a;
    }

    public List getSuggestWpCity()
    {
        return f;
    }

    public List getSuggestWpNode()
    {
        return c;
    }
}
