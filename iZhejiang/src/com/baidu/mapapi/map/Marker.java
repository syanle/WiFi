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
//            Overlay, BitmapDescriptor

public final class Marker extends Overlay
{

    LatLng a;
    BitmapDescriptor b;
    float c;
    float d;
    boolean e;
    boolean f;
    float g;
    String h;
    int i;

    Marker()
    {
        k = e.c;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        bundle.putBundle("image_info", b.b());
        b b1 = com.baidu.mapapi.model.a.a(a);
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        int j;
        if (e)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        bundle.putInt("perspective", j);
        bundle.putFloat("anchor_x", c);
        bundle.putFloat("anchor_y", d);
        bundle.putFloat("rotate", g);
        bundle.putInt("y_offset", i);
        return bundle;
    }

    public float getAnchorX()
    {
        return c;
    }

    public float getAnchorY()
    {
        return d;
    }

    public BitmapDescriptor getIcon()
    {
        return b;
    }

    public LatLng getPosition()
    {
        return a;
    }

    public float getRotate()
    {
        return g;
    }

    public String getTitle()
    {
        return h;
    }

    public boolean isDraggable()
    {
        return f;
    }

    public boolean isPerspective()
    {
        return e;
    }

    public void setAnchor(float f1, float f2)
    {
        while (f1 < 0.0F || f1 > 1.0F || f2 < 0.0F || f2 > 1.0F) 
        {
            return;
        }
        c = f1;
        d = f2;
        listener.b(this);
    }

    public void setDraggable(boolean flag)
    {
        f = flag;
        listener.b(this);
    }

    public void setIcon(BitmapDescriptor bitmapdescriptor)
    {
        if (bitmapdescriptor == null)
        {
            throw new IllegalArgumentException("marker's icon can not be null");
        } else
        {
            b = bitmapdescriptor;
            listener.b(this);
            return;
        }
    }

    public void setPerspective(boolean flag)
    {
        e = flag;
        listener.b(this);
    }

    public void setPosition(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("marker's position can not be null");
        } else
        {
            a = latlng;
            listener.b(this);
            return;
        }
    }

    public void setRotate(float f1)
    {
        for (; f1 < 0.0F; f1 += 360F) { }
        g = f1 % 360F;
        listener.b(this);
    }

    public void setTitle(String s)
    {
        h = s;
    }
}
