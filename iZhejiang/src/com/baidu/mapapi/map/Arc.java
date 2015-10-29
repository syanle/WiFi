// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay

public final class Arc extends Overlay
{

    private static final String f = com/baidu/mapapi/map/Arc.getSimpleName();
    int a;
    int b;
    LatLng c;
    LatLng d;
    LatLng e;

    Arc()
    {
        k = e.f;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        ArrayList arraylist = new ArrayList();
        arraylist.clear();
        arraylist.add(c);
        arraylist.add(d);
        arraylist.add(e);
        b b1 = com.baidu.mapapi.model.a.a((LatLng)arraylist.get(0));
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        bundle.putInt("width", b);
        com.baidu.mapapi.map.Overlay.a(arraylist, bundle);
        com.baidu.mapapi.map.Overlay.a(a, bundle);
        return bundle;
    }

    public int getColor()
    {
        return a;
    }

    public LatLng getEndPoint()
    {
        return e;
    }

    public LatLng getMiddlePoint()
    {
        return d;
    }

    public LatLng getStartPoint()
    {
        return c;
    }

    public int getWidth()
    {
        return b;
    }

    public void setColor(int i)
    {
        a = i;
        listener.b(this);
    }

    public void setPoints(LatLng latlng, LatLng latlng1, LatLng latlng2)
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
            c = latlng;
            d = latlng1;
            e = latlng2;
            listener.b(this);
            return;
        }
    }

    public void setWidth(int i)
    {
        if (i > 0)
        {
            b = i;
            listener.b(this);
        }
    }

}
