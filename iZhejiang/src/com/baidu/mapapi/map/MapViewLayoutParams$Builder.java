// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            MapViewLayoutParams

public static final class g
{

    private int a;
    private int b;
    private LatLng c;
    private Point d;
    private ode e;
    private int f;
    private int g;
    private int h;

    public g align(int i, int j)
    {
        if (i == 1 || i == 2 || i == 4)
        {
            f = i;
        }
        if (j == 8 || j == 16 || j == 32)
        {
            g = j;
        }
        return this;
    }

    public MapViewLayoutParams build()
    {
        boolean flag = true;
        if (e != ode.mapMode ? e != ode.absoluteMode || d != null : c != null)
        {
            flag = false;
        }
        if (flag)
        {
            throw new IllegalStateException("if it is map mode, you must supply position info; else if it is absolute mode, you must supply the point info");
        } else
        {
            return new MapViewLayoutParams(a, b, c, d, e, f, g, h);
        }
    }

    public h height(int i)
    {
        b = i;
        return this;
    }

    public ode layoutMode(ode ode)
    {
        e = ode;
        return this;
    }

    public e point(Point point1)
    {
        d = point1;
        return this;
    }

    public d position(LatLng latlng)
    {
        c = latlng;
        return this;
    }

    public c width(int i)
    {
        a = i;
        return this;
    }

    public a yOffset(int i)
    {
        h = i;
        return this;
    }

    public ode()
    {
        e = ode.absoluteMode;
        f = 4;
        g = 16;
    }
}
