// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, GroundOverlay, BitmapDescriptor, Overlay

public final class GroundOverlayOptions extends OverlayOptions
{

    int a;
    boolean b;
    Bundle c;
    private BitmapDescriptor d;
    private LatLng e;
    private int f;
    private int g;
    private float h;
    private float i;
    private LatLngBounds j;
    private float k;

    public GroundOverlayOptions()
    {
        h = 0.5F;
        i = 0.5F;
        k = 1.0F;
        b = true;
    }

    Overlay a()
    {
        GroundOverlay groundoverlay = new GroundOverlay();
        groundoverlay.m = b;
        groundoverlay.l = a;
        groundoverlay.n = c;
        if (d == null)
        {
            throw new IllegalStateException("when you add ground overlay, you must set the image");
        }
        groundoverlay.b = d;
        if (j == null && e != null)
        {
            if (f <= 0 || g <= 0)
            {
                throw new IllegalArgumentException("when you add ground overlay, the width and height must greater than 0");
            }
            groundoverlay.c = e;
            groundoverlay.f = h;
            groundoverlay.g = i;
            groundoverlay.d = f;
            groundoverlay.e = g;
            groundoverlay.a = 2;
        } else
        if (e == null && j != null)
        {
            groundoverlay.h = j;
            groundoverlay.a = 1;
        } else
        {
            throw new IllegalStateException("when you add ground overlay, you must set one of position or bounds");
        }
        groundoverlay.i = k;
        return groundoverlay;
    }

    public GroundOverlayOptions anchor(float f1, float f2)
    {
        while (f1 < 0.0F || f1 > 1.0F || f2 < 0.0F || f2 > 1.0F) 
        {
            return this;
        }
        h = f1;
        i = f2;
        return this;
    }

    public GroundOverlayOptions dimensions(int l)
    {
        f = l;
        g = 0x7fffffff;
        return this;
    }

    public GroundOverlayOptions dimensions(int l, int i1)
    {
        f = l;
        g = i1;
        return this;
    }

    public GroundOverlayOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public float getAnchorX()
    {
        return h;
    }

    public float getAnchorY()
    {
        return i;
    }

    public LatLngBounds getBounds()
    {
        return j;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public int getHeight()
    {
        if (g == 0x7fffffff)
        {
            return (int)((float)(f * d.a.getHeight()) / (float)d.a.getWidth());
        } else
        {
            return g;
        }
    }

    public BitmapDescriptor getImage()
    {
        return d;
    }

    public LatLng getPosition()
    {
        return e;
    }

    public float getTransparency()
    {
        return k;
    }

    public int getWidth()
    {
        return f;
    }

    public int getZIndex()
    {
        return a;
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapdescriptor)
    {
        if (bitmapdescriptor == null)
        {
            throw new IllegalArgumentException("image can not be null");
        } else
        {
            d = bitmapdescriptor;
            return this;
        }
    }

    public boolean isVisible()
    {
        return b;
    }

    public GroundOverlayOptions position(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("position can not be null");
        } else
        {
            e = latlng;
            return this;
        }
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latlngbounds)
    {
        if (latlngbounds == null)
        {
            throw new IllegalArgumentException("bounds can not be null");
        } else
        {
            j = latlngbounds;
            return this;
        }
    }

    public GroundOverlayOptions transparency(float f1)
    {
        if (f1 > 1.0F || f1 < 0.0F)
        {
            return this;
        } else
        {
            k = f1;
            return this;
        }
    }

    public GroundOverlayOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public GroundOverlayOptions zIndex(int l)
    {
        a = l;
        return this;
    }
}
