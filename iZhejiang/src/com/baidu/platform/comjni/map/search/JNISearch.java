// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.search;

import android.os.Bundle;

public class JNISearch
{

    public JNISearch()
    {
    }

    public native boolean AreaSearch(int i, Bundle bundle);

    public native boolean BusLineDetailSearch(int i, String s, String s1);

    public native int Create();

    public native boolean ForceSearchByCityName(int i, Bundle bundle);

    public native String GetSearchResult(int i, int j);

    public native boolean MapBoundSearch(int i, Bundle bundle);

    public native boolean POIDetailSearchPlace(int i, String s);

    public native boolean PoiDetailShareUrlSearch(int i, String s);

    public native boolean PoiRGCShareUrlSearch(int i, int j, int k, String s, String s1);

    public native int Release(int i);

    public native boolean ReverseGeocodeSearch(int i, int j, int k);

    public native boolean RoutePlanByBus(int i, Bundle bundle);

    public native boolean RoutePlanByCar(int i, Bundle bundle);

    public native boolean RoutePlanByFoot(int i, Bundle bundle);

    public native boolean SuggestionSearch(int i, Bundle bundle);

    public native boolean geocode(int i, String s, String s1);
}
