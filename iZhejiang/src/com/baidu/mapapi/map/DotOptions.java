// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Dot, Overlay

public final class DotOptions extends OverlayOptions
{

    int a;
    boolean b;
    Bundle c;
    private LatLng d;
    private int e;
    private int f;

    public DotOptions()
    {
        e = 0xff000000;
        f = 5;
        b = true;
    }

    Overlay a()
    {
        Dot dot = new Dot();
        dot.m = b;
        dot.l = a;
        dot.n = c;
        dot.b = e;
        dot.a = d;
        dot.c = f;
        return dot;
    }

    public DotOptions center(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("dot center can not be null");
        } else
        {
            d = latlng;
            return this;
        }
    }

    public DotOptions color(int i)
    {
        e = i;
        return this;
    }

    public DotOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public LatLng getCenter()
    {
        return d;
    }

    public int getColor()
    {
        return e;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public int getRadius()
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

    public DotOptions radius(int i)
    {
        if (i > 0)
        {
            f = i;
        }
        return this;
    }

    public DotOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public DotOptions zIndex(int i)
    {
        a = i;
        return this;
    }
}
