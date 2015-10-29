// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Marker, BitmapDescriptor, Overlay

public final class MarkerOptions extends OverlayOptions
{

    int a;
    boolean b;
    Bundle c;
    private LatLng d;
    private BitmapDescriptor e;
    private float f;
    private float g;
    private boolean h;
    private boolean i;
    private float j;
    private String k;
    private int l;

    public MarkerOptions()
    {
        f = 0.5F;
        g = 1.0F;
        h = true;
        i = false;
        b = true;
    }

    MarkerOptions a(int i1)
    {
        l = i1;
        return this;
    }

    Overlay a()
    {
        Marker marker = new Marker();
        marker.m = b;
        marker.l = a;
        marker.n = c;
        if (d == null)
        {
            throw new IllegalStateException("when you add marker, you must set the position");
        }
        marker.a = d;
        if (e == null)
        {
            throw new IllegalStateException("when you add marker, you must set the icon");
        } else
        {
            marker.b = e;
            marker.c = f;
            marker.d = g;
            marker.e = h;
            marker.f = i;
            marker.g = j;
            marker.h = k;
            marker.i = l;
            return marker;
        }
    }

    public MarkerOptions anchor(float f1, float f2)
    {
        while (f1 < 0.0F || f1 > 1.0F || f2 < 0.0F || f2 > 1.0F) 
        {
            return this;
        }
        f = f1;
        g = f2;
        return this;
    }

    public MarkerOptions draggable(boolean flag)
    {
        i = flag;
        return this;
    }

    public MarkerOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public float getAnchorX()
    {
        return f;
    }

    public float getAnchorY()
    {
        return g;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public BitmapDescriptor getIcon()
    {
        return e;
    }

    public LatLng getPosition()
    {
        return d;
    }

    public float getRotate()
    {
        return j;
    }

    public String getTitle()
    {
        return k;
    }

    public int getZIndex()
    {
        return a;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapdescriptor)
    {
        if (bitmapdescriptor == null)
        {
            throw new IllegalArgumentException("marker's icon can not be null");
        } else
        {
            e = bitmapdescriptor;
            return this;
        }
    }

    public boolean isDraggable()
    {
        return i;
    }

    public boolean isPerspective()
    {
        return h;
    }

    public boolean isVisible()
    {
        return b;
    }

    public MarkerOptions perspective(boolean flag)
    {
        h = flag;
        return this;
    }

    public MarkerOptions position(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("marker's position can not be null");
        } else
        {
            d = latlng;
            return this;
        }
    }

    public MarkerOptions rotate(float f1)
    {
        for (; f1 < 0.0F; f1 += 360F) { }
        j = f1 % 360F;
        return this;
    }

    public MarkerOptions title(String s)
    {
        k = s;
        return this;
    }

    public MarkerOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public MarkerOptions zIndex(int i1)
    {
        a = i1;
        return this;
    }
}
