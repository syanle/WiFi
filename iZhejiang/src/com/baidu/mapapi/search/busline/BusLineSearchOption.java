// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.busline;


public class BusLineSearchOption
{

    String a;
    String b;

    public BusLineSearchOption()
    {
        a = null;
        b = null;
    }

    public BusLineSearchOption city(String s)
    {
        b = s;
        return this;
    }

    public BusLineSearchOption uid(String s)
    {
        a = s;
        return this;
    }
}
