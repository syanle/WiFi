// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.a.d;

public class CoordinateConverter
{
    public static final class CoordType extends Enum
    {

        private static final CoordType $VALUES[];
        public static final CoordType COMMON;
        public static final CoordType GPS;

        public static CoordType valueOf(String s)
        {
            return (CoordType)Enum.valueOf(com/baidu/mapapi/utils/CoordinateConverter$CoordType, s);
        }

        public static CoordType[] values()
        {
            return (CoordType[])$VALUES.clone();
        }

        static 
        {
            GPS = new CoordType("GPS", 0);
            COMMON = new CoordType("COMMON", 1);
            $VALUES = (new CoordType[] {
                GPS, COMMON
            });
        }

        private CoordType(String s, int i)
        {
            super(s, i);
        }
    }


    private LatLng a;
    private CoordType b;

    public CoordinateConverter()
    {
    }

    private static LatLng a(LatLng latlng)
    {
        return a(latlng, "wgs84");
    }

    private static LatLng a(LatLng latlng, String s)
    {
        if (latlng != null)
        {
            if ((latlng = com.baidu.mapapi.model.a.a((float)latlng.longitude, (float)latlng.latitude, s)) != null)
            {
                return com.baidu.mapapi.model.a.a(new b(latlng.b(), latlng.a()));
            }
        }
        return null;
    }

    private static LatLng b(LatLng latlng)
    {
        return a(latlng, "gcj02");
    }

    public LatLng convert()
    {
        if (a == null)
        {
            return null;
        }
        if (b == null)
        {
            b = CoordType.GPS;
        }
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[CoordType.values().length];
                try
                {
                    a[CoordType.COMMON.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CoordType.GPS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (com.baidu.mapapi.utils._cls1.a[b.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return b(a);

        case 2: // '\002'
            return a(a);
        }
    }

    public CoordinateConverter coord(LatLng latlng)
    {
        a = latlng;
        return this;
    }

    public CoordinateConverter from(CoordType coordtype)
    {
        b = coordtype;
        return this;
    }
}
