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
//            Overlay

public final class Dot extends Overlay
{

    LatLng a;
    int b;
    int c;

    Dot()
    {
        k = e.g;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        b b1 = com.baidu.mapapi.model.a.a(a);
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        bundle.putInt("radius", c);
        com.baidu.mapapi.map.Overlay.a(b, bundle);
        return bundle;
    }

    public LatLng getCenter()
    {
        return a;
    }

    public int getColor()
    {
        return b;
    }

    public int getRadius()
    {
        return c;
    }

    public void setCenter(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("dot center can not be null");
        } else
        {
            a = latlng;
            listener.b(this);
            return;
        }
    }

    public void setColor(int i)
    {
        b = i;
        listener.b(this);
    }

    public void setRadius(int i)
    {
        if (i > 0)
        {
            c = i;
            listener.b(this);
        }
    }
}
