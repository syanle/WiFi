// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import org.json.JSONObject;

public final class MapPoi
{

    private static final String c = com/baidu/mapapi/map/MapPoi.getSimpleName();
    String a;
    LatLng b;

    public MapPoi()
    {
    }

    void a(JSONObject jsonobject)
    {
        a = jsonobject.optString("tx");
        b = com.baidu.mapapi.model.a.b(jsonobject.optString("geo"));
    }

    public String getName()
    {
        return a;
    }

    public LatLng getPosition()
    {
        return b;
    }

}
