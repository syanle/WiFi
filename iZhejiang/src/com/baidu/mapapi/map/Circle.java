// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay, Stroke

public final class Circle extends Overlay
{

    LatLng a;
    int b;
    int c;
    Stroke d;

    Circle()
    {
        k = e.h;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        b b1 = com.baidu.mapapi.model.a.a(a);
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        bundle.putInt("radius", com.baidu.mapapi.model.a.a(a, c));
        com.baidu.mapapi.map.Overlay.a(b, bundle);
        if (d == null)
        {
            bundle.putInt("has_stroke", 0);
            return bundle;
        } else
        {
            bundle.putInt("has_stroke", 1);
            Bundle bundle1 = new Bundle();
            bundle.putBundle("stroke", d.a(bundle1));
            return bundle;
        }
    }

    public LatLng getCenter()
    {
        return a;
    }

    public int getFillColor()
    {
        return b;
    }

    public int getRadius()
    {
        return c;
    }

    public Stroke getStroke()
    {
        return d;
    }

    public void setCenter(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("circle center can not be null");
        } else
        {
            a = latlng;
            listener.b(this);
            return;
        }
    }

    public void setFillColor(int i)
    {
        b = i;
        listener.b(this);
    }

    public void setRadius(int i)
    {
        c = i;
        listener.b(this);
    }

    public void setStroke(Stroke stroke)
    {
        d = stroke;
        listener.b(this);
    }
}
