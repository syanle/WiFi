// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;


public class GeoCodeOption
{

    String a;
    String b;

    public GeoCodeOption()
    {
        a = null;
        b = null;
    }

    public GeoCodeOption address(String s)
    {
        b = s;
        return this;
    }

    public GeoCodeOption city(String s)
    {
        a = s;
        return this;
    }
}
