// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay

public final class Polyline extends Overlay
{

    int a;
    List b;
    int c;

    Polyline()
    {
        k = e.i;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        b b1 = com.baidu.mapapi.model.a.a((LatLng)b.get(0));
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        bundle.putInt("width", c);
        com.baidu.mapapi.map.Overlay.a(b, bundle);
        com.baidu.mapapi.map.Overlay.a(a, bundle);
        return bundle;
    }

    public int getColor()
    {
        return a;
    }

    public List getPoints()
    {
        return b;
    }

    public int getWidth()
    {
        return c;
    }

    public void setColor(int i)
    {
        a = i;
        listener.b(this);
    }

    public void setPoints(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("points list can not be null");
        }
        if (list.size() < 2 || list.size() > 10000)
        {
            throw new IllegalArgumentException("points count can not less than 2 or more than 10000");
        }
        if (list.contains(null))
        {
            throw new IllegalArgumentException("points list can not contains null");
        } else
        {
            b = list;
            listener.b(this);
            return;
        }
    }

    public void setWidth(int i)
    {
        if (i > 0)
        {
            c = i;
            listener.b(this);
        }
    }
}
