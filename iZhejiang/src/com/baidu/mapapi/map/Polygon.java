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
//            Overlay, Stroke

public final class Polygon extends Overlay
{

    Stroke a;
    int b;
    List c;

    Polygon()
    {
        k = e.j;
    }

    Bundle a(Bundle bundle)
    {
        super.a(bundle);
        b b1 = com.baidu.mapapi.model.a.a((LatLng)c.get(0));
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        com.baidu.mapapi.map.Overlay.a(c, bundle);
        com.baidu.mapapi.map.Overlay.a(b, bundle);
        if (a == null)
        {
            bundle.putInt("has_stroke", 0);
            return bundle;
        } else
        {
            bundle.putInt("has_stroke", 1);
            Bundle bundle1 = new Bundle();
            bundle.putBundle("stroke", a.a(bundle1));
            return bundle;
        }
    }

    public int getFillColor()
    {
        return b;
    }

    public List getPoints()
    {
        return c;
    }

    public Stroke getStroke()
    {
        return a;
    }

    public void setFillColor(int i)
    {
        b = i;
        listener.b(this);
    }

    public void setPoints(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("points list can not be null");
        }
        if (list.size() <= 2)
        {
            throw new IllegalArgumentException("points count can not less than three");
        }
        if (list.contains(null))
        {
            throw new IllegalArgumentException("points list can not contains null");
        }
        for (int i = 0; i < list.size(); i++)
        {
            for (int j = i + 1; j < list.size(); j++)
            {
                if ((LatLng)list.get(i) == (LatLng)list.get(j))
                {
                    throw new IllegalArgumentException("points list can not has same points");
                }
            }

        }

        c = list;
        listener.b(this);
    }

    public void setStroke(Stroke stroke)
    {
        a = stroke;
        listener.b(this);
    }
}
