// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import android.graphics.PointF;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.f;
import com.baidu.platform.comapi.map.z;

// Referenced classes of package com.baidu.mapapi.map:
//            MapStatus

public final class Projection
{

    private f a;

    Projection(f f1)
    {
        a = f1;
    }

    public LatLng fromScreenLocation(Point point)
    {
        if (point != null)
        {
            return com.baidu.mapapi.model.a.a(a.a(point.x, point.y));
        } else
        {
            return null;
        }
    }

    public float metersToEquatorPixels(float f1)
    {
        if (f1 <= 0.0F)
        {
            return 0.0F;
        } else
        {
            return (float)((double)f1 / a.q());
        }
    }

    public PointF toOpenGLLocation(LatLng latlng, MapStatus mapstatus)
    {
        if (latlng != null && mapstatus != null)
        {
            latlng = com.baidu.mapapi.model.a.a(latlng);
            mapstatus = mapstatus.a;
            int i = ((z) (mapstatus)).d;
            int j = ((z) (mapstatus)).e;
            return new PointF((float)((double)(latlng.b() - i) / ((z) (mapstatus)).n), (float)((double)(latlng.a() - j) / ((z) (mapstatus)).n));
        } else
        {
            return null;
        }
    }

    public Point toScreenLocation(LatLng latlng)
    {
        if (latlng != null)
        {
            latlng = com.baidu.mapapi.model.a.a(latlng);
            return a.a(latlng);
        } else
        {
            return null;
        }
    }
}
