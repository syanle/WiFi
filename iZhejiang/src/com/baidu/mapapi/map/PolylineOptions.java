// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Polyline, Overlay

public final class PolylineOptions extends OverlayOptions
{

    int a;
    boolean b;
    Bundle c;
    private int d;
    private List e;
    private int f;

    public PolylineOptions()
    {
        d = 0xff000000;
        f = 5;
        b = true;
    }

    Overlay a()
    {
        Polyline polyline = new Polyline();
        polyline.m = b;
        polyline.l = a;
        polyline.n = c;
        if (e == null || e.size() < 2)
        {
            throw new IllegalStateException("when you add polyline, you must at least supply 2 points");
        } else
        {
            polyline.b = e;
            polyline.a = d;
            polyline.c = f;
            return polyline;
        }
    }

    public PolylineOptions color(int i)
    {
        d = i;
        return this;
    }

    public PolylineOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public int getColor()
    {
        return d;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public List getPoints()
    {
        return e;
    }

    public int getWidth()
    {
        return f;
    }

    public int getZIndex()
    {
        return a;
    }

    public boolean isVisible()
    {
        return b;
    }

    public PolylineOptions points(List list)
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
            e = list;
            return this;
        }
    }

    public PolylineOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public PolylineOptions width(int i)
    {
        if (i > 0)
        {
            f = i;
        }
        return this;
    }

    public PolylineOptions zIndex(int i)
    {
        a = i;
        return this;
    }
}
