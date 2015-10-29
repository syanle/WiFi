// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import com.baidu.mapapi.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.baidu.mapapi.map:
//            HeatMap, WeightedLatLng, Gradient

public static class d
{

    private Collection a;
    private int b;
    private Gradient c;
    private double d;

    static Collection a(d d1)
    {
        return d1.a;
    }

    static int b(a a1)
    {
        return a1.b;
    }

    static Gradient c(b b1)
    {
        return b1.c;
    }

    static double d(c c1)
    {
        return c1.d;
    }

    public HeatMap build()
    {
        if (a == null)
        {
            throw new IllegalStateException("No input data: you must use either .data or .weightedData before building");
        } else
        {
            return new HeatMap(this, null);
        }
    }

    public > data(Collection collection)
    {
        if (collection == null || collection.isEmpty())
        {
            throw new IllegalArgumentException("No input points.");
        }
        if (collection.contains(null))
        {
            throw new IllegalArgumentException("input points can not contain null.");
        } else
        {
            return weightedData(HeatMap.a(collection));
        }
    }

    public weightedData gradient(Gradient gradient1)
    {
        if (gradient1 == null)
        {
            throw new IllegalArgumentException("gradient can not be null");
        } else
        {
            c = gradient1;
            return this;
        }
    }

    public c opacity(double d1)
    {
        d = d1;
        if (d < 0.0D || d > 1.0D)
        {
            throw new IllegalArgumentException("Opacity must be in range [0, 1]");
        } else
        {
            return this;
        }
    }

    public nit> radius(int i)
    {
        b = i;
        if (b < 10 || b > 50)
        {
            throw new IllegalArgumentException("Radius not within bounds.");
        } else
        {
            return this;
        }
    }

    public nit> weightedData(Collection collection)
    {
        if (collection == null || collection.isEmpty())
        {
            throw new IllegalArgumentException("No input points.");
        }
        if (collection.contains(null))
        {
            throw new IllegalArgumentException("input points can not contain null.");
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            WeightedLatLng weightedlatlng = (WeightedLatLng)iterator.next();
            LatLng latlng = weightedlatlng.latLng;
            if (latlng.latitude < 0.37531999999999999D || latlng.latitude > 54.562494999999998D || latlng.longitude < 72.508319D || latlng.longitude > 135.94219799999999D)
            {
                arraylist.add(weightedlatlng);
            }
        } while (true);
        collection.removeAll(arraylist);
        a = collection;
        return this;
    }

    public ()
    {
        b = 12;
        c = HeatMap.DEFAULT_GRADIENT;
        d = 0.59999999999999998D;
    }
}
