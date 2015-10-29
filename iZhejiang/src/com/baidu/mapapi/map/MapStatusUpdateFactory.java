// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;

// Referenced classes of package com.baidu.mapapi.map:
//            MapStatusUpdate, MapStatus

public final class MapStatusUpdateFactory
{

    MapStatusUpdateFactory()
    {
    }

    public static MapStatusUpdate newLatLng(LatLng latlng)
    {
        if (latlng == null)
        {
            return null;
        } else
        {
            MapStatusUpdate mapstatusupdate = new MapStatusUpdate(2);
            mapstatusupdate.c = latlng;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate newLatLngBounds(LatLngBounds latlngbounds)
    {
        if (latlngbounds == null)
        {
            return null;
        } else
        {
            MapStatusUpdate mapstatusupdate = new MapStatusUpdate(3);
            mapstatusupdate.d = latlngbounds;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate newLatLngBounds(LatLngBounds latlngbounds, int i, int j)
    {
        if (latlngbounds == null || i <= 0 || j <= 0)
        {
            return null;
        } else
        {
            MapStatusUpdate mapstatusupdate = new MapStatusUpdate(9);
            mapstatusupdate.d = latlngbounds;
            mapstatusupdate.e = i;
            mapstatusupdate.f = j;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate newLatLngZoom(LatLng latlng, float f)
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(4);
        if (latlng == null)
        {
            return null;
        } else
        {
            mapstatusupdate.c = latlng;
            mapstatusupdate.g = f;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate newMapStatus(MapStatus mapstatus)
    {
        if (mapstatus == null)
        {
            return null;
        } else
        {
            MapStatusUpdate mapstatusupdate = new MapStatusUpdate(1);
            mapstatusupdate.b = mapstatus;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate scrollBy(int i, int j)
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(5);
        mapstatusupdate.h = i;
        mapstatusupdate.i = j;
        return mapstatusupdate;
    }

    public static MapStatusUpdate zoomBy(float f)
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(6);
        mapstatusupdate.j = f;
        return mapstatusupdate;
    }

    public static MapStatusUpdate zoomBy(float f, Point point)
    {
        if (point == null)
        {
            return null;
        } else
        {
            MapStatusUpdate mapstatusupdate = new MapStatusUpdate(7);
            mapstatusupdate.j = f;
            mapstatusupdate.k = point;
            return mapstatusupdate;
        }
    }

    public static MapStatusUpdate zoomIn()
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(6);
        mapstatusupdate.j = 1.0F;
        return mapstatusupdate;
    }

    public static MapStatusUpdate zoomOut()
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(6);
        mapstatusupdate.j = -1F;
        return mapstatusupdate;
    }

    public static MapStatusUpdate zoomTo(float f)
    {
        MapStatusUpdate mapstatusupdate = new MapStatusUpdate(8);
        mapstatusupdate.g = f;
        return mapstatusupdate;
    }
}
