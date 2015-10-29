// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.z;

public final class MapStatus
{
    public static final class Builder
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

        public Builder overlook(float f)
        {
            c = f;
            return this;
        }

        public Builder rotate(float f)
        {
            a = f;
            return this;
        }

        public Builder target(LatLng latlng)
        {
            b = latlng;
            return this;
        }

        public Builder targetScreen(Point point)
        {
            e = point;
            return this;
        }

        public Builder zoom(float f)
        {
            d = f;
            return this;
        }

        public Builder()
        {
            a = -2.147484E+09F;
            b = null;
            c = -2.147484E+09F;
            d = -2.147484E+09F;
            e = null;
        }

        public Builder(MapStatus mapstatus)
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


    z a;
    public final float overlook;
    public final float rotate;
    public final LatLng target;
    public final Point targetScreen;
    public final float zoom;

    MapStatus(float f, LatLng latlng, float f1, float f2, Point point)
    {
        rotate = f;
        target = latlng;
        overlook = f1;
        zoom = f2;
        targetScreen = point;
    }

    MapStatus(float f, LatLng latlng, float f1, float f2, Point point, z z1)
    {
        rotate = f;
        target = latlng;
        overlook = f1;
        zoom = f2;
        targetScreen = point;
        a = z1;
    }

    static MapStatus a(z z1)
    {
        return new MapStatus(z1.b, com.baidu.mapapi.model.a.a(new b(z1.e, z1.d)), z1.c, z1.a, new Point(z1.f, z1.g), z1);
    }

    z a()
    {
        return b(new z());
    }

    z b(z z1)
    {
        if (rotate != -2.147484E+09F)
        {
            z1.b = (int)rotate;
        }
        if (zoom != -2.147484E+09F)
        {
            z1.a = zoom;
        }
        if (overlook != -2.147484E+09F)
        {
            z1.c = (int)overlook;
        }
        if (target != null)
        {
            b b1 = com.baidu.mapapi.model.a.a(target);
            z1.d = b1.b();
            z1.e = b1.a();
        }
        if (targetScreen != null)
        {
            z1.f = targetScreen.x;
            z1.g = targetScreen.y;
        }
        return z1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (target != null)
        {
            stringbuilder.append((new StringBuilder()).append("target lat: ").append(target.latitude).append("\n").toString());
            stringbuilder.append((new StringBuilder()).append("target lng: ").append(target.longitude).append("\n").toString());
        }
        if (targetScreen != null)
        {
            stringbuilder.append((new StringBuilder()).append("target screen x: ").append(targetScreen.x).append("\n").toString());
            stringbuilder.append((new StringBuilder()).append("target screen y: ").append(targetScreen.y).append("\n").toString());
        }
        stringbuilder.append((new StringBuilder()).append("zoom: ").append(zoom).append("\n").toString());
        stringbuilder.append((new StringBuilder()).append("rotate: ").append(rotate).append("\n").toString());
        stringbuilder.append((new StringBuilder()).append("overlook: ").append(overlook).append("\n").toString());
        return stringbuilder.toString();
    }
}
