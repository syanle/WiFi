// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.sug;

import com.baidu.mapapi.model.LatLng;

public class SuggestionSearchOption
{

    String a;
    String b;
    LatLng c;

    public SuggestionSearchOption()
    {
        a = null;
        b = null;
        c = null;
    }

    public SuggestionSearchOption city(String s)
    {
        a = s;
        return this;
    }

    public SuggestionSearchOption keyword(String s)
    {
        b = s;
        return this;
    }

    public SuggestionSearchOption location(LatLng latlng)
    {
        c = latlng;
        return this;
    }
}
