// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.model;


// Referenced classes of package com.baidu.mapapi.model:
//            LatLngBounds, LatLng

public static final class e
{

    private double a;
    private double b;
    private double c;
    private double d;
    private boolean e;

    public LatLngBounds build()
    {
        return new LatLngBounds(new LatLng(b, d), new LatLng(a, c));
    }

    public c include(LatLng latlng)
    {
        if (latlng != null)
        {
            if (e)
            {
                e = false;
                double d1 = latlng.latitude;
                a = d1;
                b = d1;
                d1 = latlng.longitude;
                c = d1;
                d = d1;
            }
            double d2 = latlng.latitude;
            double d3 = latlng.longitude;
            if (d2 < a)
            {
                a = d2;
            }
            if (d2 > b)
            {
                b = d2;
            }
            if (d3 < c)
            {
                c = d3;
            }
            if (d3 > d)
            {
                d = d3;
                return this;
            }
        }
        return this;
    }

    public ()
    {
        e = true;
    }
}
