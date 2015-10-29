// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.y;

// Referenced classes of package com.baidu.mapapi.map:
//            MapStatus

public final class BaiduMapOptions
{

    MapStatus a;
    boolean b;
    int c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;

    public BaiduMapOptions()
    {
        a = new MapStatus(0.0F, new LatLng(39.914935D, 116.403119D), 0.0F, 12F, null);
        b = true;
        c = 1;
        d = true;
        e = true;
        f = true;
        g = true;
        h = true;
        i = true;
    }

    y a()
    {
        return (new y()).a(a.a()).a(b).a(c).b(d).c(e).d(f).e(g);
    }

    public BaiduMapOptions compassEnabled(boolean flag)
    {
        b = flag;
        return this;
    }

    public BaiduMapOptions mapStatus(MapStatus mapstatus)
    {
        if (mapstatus != null)
        {
            a = mapstatus;
        }
        return this;
    }

    public BaiduMapOptions mapType(int j)
    {
        c = j;
        return this;
    }

    public BaiduMapOptions overlookingGesturesEnabled(boolean flag)
    {
        f = flag;
        return this;
    }

    public BaiduMapOptions rotateGesturesEnabled(boolean flag)
    {
        d = flag;
        return this;
    }

    public BaiduMapOptions scaleControlEnabled(boolean flag)
    {
        i = flag;
        return this;
    }

    public BaiduMapOptions scrollGesturesEnabled(boolean flag)
    {
        e = flag;
        return this;
    }

    public BaiduMapOptions zoomControlsEnabled(boolean flag)
    {
        h = flag;
        return this;
    }

    public BaiduMapOptions zoomGesturesEnabled(boolean flag)
    {
        g = flag;
        return this;
    }
}
