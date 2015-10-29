// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Polygon, Stroke, Overlay

public final class PolygonOptions extends OverlayOptions
{

    int a;
    boolean b;
    Bundle c;
    private Stroke d;
    private int e;
    private List f;

    public PolygonOptions()
    {
        e = 0xff000000;
        b = true;
    }

    Overlay a()
    {
        Polygon polygon = new Polygon();
        polygon.m = b;
        polygon.l = a;
        polygon.n = c;
        if (f == null || f.size() < 2)
        {
            throw new IllegalStateException("when you add polyline, you must at least supply 2 points");
        } else
        {
            polygon.c = f;
            polygon.b = e;
            polygon.a = d;
            return polygon;
        }
    }

    public PolygonOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public PolygonOptions fillColor(int i)
    {
        e = i;
        return this;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public int getFillColor()
    {
        return e;
    }

    public List getPoints()
    {
        return f;
    }

    public Stroke getStroke()
    {
        return d;
    }

    public int getZIndex()
    {
        return a;
    }

    public boolean isVisible()
    {
        return b;
    }

    public PolygonOptions points(List list)
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

        f = list;
        return this;
    }

    public PolygonOptions stroke(Stroke stroke1)
    {
        d = stroke1;
        return this;
    }

    public PolygonOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public PolygonOptions zIndex(int i)
    {
        a = i;
        return this;
    }
}
