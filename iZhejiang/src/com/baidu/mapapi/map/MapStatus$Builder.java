// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            MapStatus

public static final class reen
{

    private float a;
    private LatLng b;
    private float c;
    private float d;
    private Point e;

    public MapStatus build()
    {
        return new MapStatus(a, b, c, d, e);
    }

    public e overlook(float f)
    {
        c = f;
        return this;
    }

    public c rotate(float f)
    {
        a = f;
        return this;
    }

    public a target(LatLng latlng)
    {
        b = latlng;
        return this;
    }

    public b targetScreen(Point point)
    {
        e = point;
        return this;
    }

    public e zoom(float f)
    {
        d = f;
        return this;
    }

    public ()
    {
        a = -2.147484E+09F;
        b = null;
        c = -2.147484E+09F;
        d = -2.147484E+09F;
        e = null;
    }

    public e(MapStatus mapstatus)
    {
        a = -2.147484E+09F;
        b = null;
        c = -2.147484E+09F;
        d = -2.147484E+09F;
        e = null;
        a = mapstatus.rotate;
        b = mapstatus.target;
        c = mapstatus.overlook;
        d = mapstatus.zoom;
        e = mapstatus.targetScreen;
    }
}
