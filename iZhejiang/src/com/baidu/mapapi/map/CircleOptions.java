// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Circle, Stroke, Overlay

public final class CircleOptions extends OverlayOptions
{

    private static final String d = com/baidu/mapapi/map/CircleOptions.getSimpleName();
    int a;
    boolean b;
    Bundle c;
    private LatLng e;
    private int f;
    private int g;
    private Stroke h;

    public CircleOptions()
    {
        f = 0xff000000;
        b = true;
    }

    Overlay a()
    {
        Circle circle = new Circle();
        circle.m = b;
        circle.l = a;
        circle.n = c;
        circle.b = f;
        circle.a = e;
        circle.c = g;
        circle.d = h;
        return circle;
    }

    public CircleOptions center(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("circle center can not be null");
        } else
        {
            e = latlng;
            return this;
        }
    }

    public CircleOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public CircleOptions fillColor(int i)
    {
        f = i;
        return this;
    }

    public LatLng getCenter()
    {
        return e;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public int getFillColor()
    {
        return f;
    }

    public int getRadius()
    {
        return g;
    }

    public Stroke getStroke()
    {
        return h;
    }

    public int getZIndex()
    {
        return a;
    }

    public boolean isVisible()
    {
        return b;
    }

    public CircleOptions radius(int i)
    {
        g = i;
        return this;
    }

    public CircleOptions stroke(Stroke stroke1)
    {
        h = stroke1;
        return this;
    }

    public CircleOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public CircleOptions zIndex(int i)
    {
        a = i;
        return this;
    }

}
