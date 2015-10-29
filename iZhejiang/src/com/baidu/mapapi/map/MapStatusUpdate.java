// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.f;

// Referenced classes of package com.baidu.mapapi.map:
//            MapStatus

public final class MapStatusUpdate
{

    private static final String l = com/baidu/mapapi/map/MapStatusUpdate.getSimpleName();
    int a;
    MapStatus b;
    LatLng c;
    LatLngBounds d;
    int e;
    int f;
    float g;
    int h;
    int i;
    float j;
    Point k;

    MapStatusUpdate()
    {
    }

    MapStatusUpdate(int i1)
    {
        a = i1;
    }

    MapStatus a(f f1, MapStatus mapstatus)
    {
        b b2;
        switch (a)
        {
        default:
            return null;

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return new MapStatus(mapstatus.rotate, c, mapstatus.overlook, mapstatus.zoom, mapstatus.targetScreen);

        case 3: // '\003'
            b b1 = com.baidu.mapapi.model.a.a(d.southwest);
            b b3 = com.baidu.mapapi.model.a.a(d.northeast);
            float f2 = f1.a(b1.b(), b3.a(), b3.b(), b1.a());
            f1 = d.getCenter();
            return new MapStatus(mapstatus.rotate, f1, mapstatus.overlook, f2, mapstatus.targetScreen);

        case 4: // '\004'
            return new MapStatus(mapstatus.rotate, c, mapstatus.overlook, g, mapstatus.targetScreen);

        case 5: // '\005'
            f1.getWidth();
            f1 = com.baidu.mapapi.model.a.a(f1.a(f1.getWidth() / 2 + h, f1.getHeight() / 2 + i));
            return new MapStatus(mapstatus.rotate, f1, mapstatus.overlook, mapstatus.zoom, mapstatus.targetScreen);

        case 6: // '\006'
            return new MapStatus(mapstatus.rotate, mapstatus.target, mapstatus.overlook, mapstatus.zoom + j, mapstatus.targetScreen);

        case 7: // '\007'
            f1 = com.baidu.mapapi.model.a.a(f1.a(k.x, k.y));
            return new MapStatus(mapstatus.rotate, f1, mapstatus.overlook, mapstatus.zoom + j, k);

        case 8: // '\b'
            return new MapStatus(mapstatus.rotate, mapstatus.target, mapstatus.overlook, g, mapstatus.targetScreen);

        case 9: // '\t'
            b2 = com.baidu.mapapi.model.a.a(d.southwest);
            break;
        }
        b b4 = com.baidu.mapapi.model.a.a(d.northeast);
        float f3 = f1.a(b2.b(), b4.a(), b4.b(), b2.a(), e, f);
        f1 = d.getCenter();
        return new MapStatus(mapstatus.rotate, f1, mapstatus.overlook, f3, mapstatus.targetScreen);
    }

}
