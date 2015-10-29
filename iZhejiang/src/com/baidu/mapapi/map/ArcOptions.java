// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Arc, Overlay

public final class ArcOptions extends OverlayOptions
{

    private static final String d = com/baidu/mapapi/map/ArcOptions.getSimpleName();
    int a;
    boolean b;
    Bundle c;
    private int e;
    private int f;
    private LatLng g;
    private LatLng h;
    private LatLng i;

    public ArcOptions()
    {
        e = 0xff000000;
        f = 5;
        b = true;
    }

    Overlay a()
    {
        Arc arc = new Arc();
        arc.m = b;
        arc.l = a;
        arc.n = c;
        arc.a = e;
        arc.b = f;
        arc.c = g;
        arc.d = h;
        arc.e = i;
        return arc;
    }

    public ArcOptions color(int j)
    {
        e = j;
        return this;
    }

    public ArcOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public int getColor()
    {
        return e;
    }

    public LatLng getEndPoint()
    {
        return i;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public LatLng getMiddlePoint()
    {
        return h;
    }

    public LatLng getStartPoint()
    {
        return g;
    }

    public int getWidth()
    {
        return f;
    }

    public int getZIndex()
    {
        return a;
    }

    public boolean isVisible()
    {
        return b;
    }

    public ArcOptions points(LatLng latlng, LatLng latlng1, LatLng latlng2)
    {
        if (latlng == null || latlng1 == null || latlng2 == null)
        {
            throw new IllegalArgumentException("start and middle and end points can not be null");
        }
        if (latlng == latlng1 || latlng == latlng2 || latlng1 == latlng2)
        {
            throw new IllegalArgumentException("start and middle and end points can not be same");
        } else
        {
            g = latlng;
            h = latlng1;
            i = latlng2;
            return this;
        }
    }

    public ArcOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public ArcOptions width(int j)
    {
        if (j > 0)
        {
            f = j;
        }
        return this;
    }

    public ArcOptions zIndex(int j)
    {
        a = j;
        return this;
    }

}
