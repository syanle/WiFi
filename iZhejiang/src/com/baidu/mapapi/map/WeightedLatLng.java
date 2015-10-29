// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;

public class WeightedLatLng extends i.a
{

    public static final double DEFAULT_INTENSITY = 1D;
    private Point a;
    public final double intensity;
    public final LatLng latLng;

    public WeightedLatLng(LatLng latlng)
    {
        this(latlng, 1.0D);
    }

    public WeightedLatLng(LatLng latlng, double d)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("latLng can not be null");
        }
        latLng = latlng;
        latlng = com.baidu.mapapi.model.a.a(latlng);
        a = new Point(latlng.b(), latlng.a());
        if (d > 0.0D)
        {
            intensity = d;
            return;
        } else
        {
            intensity = 1.0D;
            return;
        }
    }

    Point a()
    {
        return a;
    }
}
