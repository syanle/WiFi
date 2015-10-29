// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.model;


// Referenced classes of package com.baidu.mapapi.model:
//            LatLng

public final class LatLngBounds
{
    public static final class Builder
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

        public Builder include(LatLng latlng)
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

        public Builder()
        {
            e = true;
        }
    }


    public final LatLng northeast;
    public final LatLng southwest;

    LatLngBounds(LatLng latlng, LatLng latlng1)
    {
        northeast = latlng;
        southwest = latlng1;
    }

    public boolean contains(LatLng latlng)
    {
        if (latlng != null)
        {
            double d = southwest.latitude;
            double d1 = northeast.latitude;
            double d2 = southwest.longitude;
            double d3 = northeast.longitude;
            double d4 = latlng.latitude;
            double d5 = latlng.longitude;
            if (d4 >= d && d4 <= d1 && d5 >= d2 && d5 <= d3)
            {
                return true;
            }
        }
        return false;
    }

    public LatLng getCenter()
    {
        return new LatLng((northeast.latitude - southwest.latitude) / 2D + southwest.latitude, (northeast.longitude - southwest.longitude) / 2D + southwest.longitude);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("southwest: ");
        stringbuilder.append(southwest.latitude);
        stringbuilder.append(", ");
        stringbuilder.append(southwest.longitude);
        stringbuilder.append("\n");
        stringbuilder.append("northeast: ");
        stringbuilder.append(northeast.latitude);
        stringbuilder.append(", ");
        stringbuilder.append(northeast.longitude);
        return stringbuilder.toString();
    }
}
