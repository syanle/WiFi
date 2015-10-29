// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.LatLngBounds;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay, BitmapDescriptor

public final class GroundOverlay extends Overlay
{

    private static final String o = com/baidu/mapapi/map/GroundOverlay.getSimpleName();
    int a;
    BitmapDescriptor b;
    LatLng c;
    int d;
    int e;
    float f;
    float g;
    LatLngBounds h;
    float i;

    GroundOverlay()
    {
        k = e.d;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        bundle.putBundle("image_info", b.b());
        if (a == 1)
        {
            b b1 = com.baidu.mapapi.model.a.a(h.southwest);
            int j = b1.b();
            int k = b1.a();
            b1 = com.baidu.mapapi.model.a.a(h.northeast);
            int l = b1.b();
            int i1 = b1.a();
            d = l - j;
            e = i1 - k;
            c = com.baidu.mapapi.model.a.a(new b(k + e / 2, j + d / 2));
            f = 0.5F;
            g = 0.5F;
        }
        if (d <= 0 || e <= 0)
        {
            throw new IllegalStateException("when you add ground overlay, the width and height must greater than 0");
        }
        bundle.putInt("x_distance", d);
        if (e == 0x7fffffff)
        {
            e = (int)((float)(d * b.a.getHeight()) / (float)b.a.getWidth());
        }
        bundle.putInt("y_distance", e);
        b b2 = com.baidu.mapapi.model.a.a(c);
        bundle.putInt("location_x", b2.b());
        bundle.putInt("location_y", b2.a());
        bundle.putFloat("anchor_x", f);
        bundle.putFloat("anchor_y", g);
        bundle.putFloat("transparency", i);
        return bundle;
    }

    public float getAnchorX()
    {
        return f;
    }

    public float getAnchorY()
    {
        return g;
    }

    public LatLngBounds getBounds()
    {
        return h;
    }

    public int getHeight()
    {
        return e;
    }

    public BitmapDescriptor getImage()
    {
        return b;
    }

    public LatLng getPosition()
    {
        return c;
    }

    public float getTransparency()
    {
        return i;
    }

    public int getWidth()
    {
        return d;
    }

    public void setAnchor(float f1, float f2)
    {
        while (f1 < 0.0F || f1 > 1.0F || f2 < 0.0F || f2 > 1.0F) 
        {
            return;
        }
        f = f1;
        g = f2;
        listener.b(this);
    }

    public void setDimensions(int j)
    {
        d = j;
        e = 0x7fffffff;
        listener.b(this);
    }

    public void setDimensions(int j, int k)
    {
        d = j;
        e = k;
        listener.b(this);
    }

    public void setImage(BitmapDescriptor bitmapdescriptor)
    {
        if (bitmapdescriptor == null)
        {
            throw new IllegalArgumentException("image can not be null");
        } else
        {
            b = bitmapdescriptor;
            listener.b(this);
            return;
        }
    }

    public void setPosition(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("position can not be null");
        } else
        {
            a = 2;
            c = latlng;
            listener.b(this);
            return;
        }
    }

    public void setPositionFromBounds(LatLngBounds latlngbounds)
    {
        if (latlngbounds == null)
        {
            throw new IllegalArgumentException("bounds can not be null");
        } else
        {
            a = 1;
            h = latlngbounds;
            listener.b(this);
            return;
        }
    }

    public void setTransparency(float f1)
    {
        if (f1 > 1.0F || f1 < 0.0F)
        {
            return;
        } else
        {
            i = f1;
            listener.b(this);
            return;
        }
    }

}
