// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.search;

import android.os.Bundle;

// Referenced classes of package com.baidu.platform.comjni.map.search:
//            JNISearch

public class a
{

    private static final String a = com/baidu/platform/comjni/map/search/a.getSimpleName();
    private int b;
    private JNISearch c;

    public a()
    {
        b = 0;
        c = null;
        c = new JNISearch();
    }

    public int a()
    {
        b = c.Create();
        return b;
    }

    public String a(int i)
    {
        return c.GetSearchResult(b, i);
    }

    public boolean a(int i, int j)
    {
        return c.ReverseGeocodeSearch(b, i, j);
    }

    public boolean a(int i, int j, String s, String s1)
    {
        return c.PoiRGCShareUrlSearch(b, i, j, s, s1);
    }

    public boolean a(Bundle bundle)
    {
        return c.ForceSearchByCityName(b, bundle);
    }

    public boolean a(String s)
    {
        return c.POIDetailSearchPlace(b, s);
    }

    public boolean a(String s, String s1)
    {
        return c.BusLineDetailSearch(b, s, s1);
    }

    public int b()
    {
        return c.Release(b);
    }

    public boolean b(Bundle bundle)
    {
        return c.AreaSearch(b, bundle);
    }

    public boolean b(String s)
    {
        return c.PoiDetailShareUrlSearch(b, s);
    }

    public boolean b(String s, String s1)
    {
        return c.geocode(b, s, s1);
    }

    public boolean c(Bundle bundle)
    {
        return c.RoutePlanByBus(b, bundle);
    }

    public boolean d(Bundle bundle)
    {
        return c.RoutePlanByCar(b, bundle);
    }

    public boolean e(Bundle bundle)
    {
        return c.RoutePlanByFoot(b, bundle);
    }

    public boolean f(Bundle bundle)
    {
        return c.SuggestionSearch(b, bundle);
    }

    public boolean g(Bundle bundle)
    {
        return c.MapBoundSearch(b, bundle);
    }

}
