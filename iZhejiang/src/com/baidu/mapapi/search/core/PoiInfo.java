// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;

import com.baidu.mapapi.model.LatLng;

public class PoiInfo
{
    public static final class POITYPE extends Enum
    {

        private static final POITYPE $VALUES[];
        public static final POITYPE BUS_LINE;
        public static final POITYPE BUS_STATION;
        public static final POITYPE POINT;
        public static final POITYPE SUBWAY_LINE;
        public static final POITYPE SUBWAY_STATION;
        private int a;

        public static POITYPE fromInt(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 0: // '\0'
                return POINT;

            case 1: // '\001'
                return BUS_STATION;

            case 2: // '\002'
                return BUS_LINE;

            case 3: // '\003'
                return SUBWAY_STATION;

            case 4: // '\004'
                return SUBWAY_LINE;
            }
        }

        public static POITYPE valueOf(String s)
        {
            return (POITYPE)Enum.valueOf(com/baidu/mapapi/search/core/PoiInfo$POITYPE, s);
        }

        public static POITYPE[] values()
        {
            return (POITYPE[])$VALUES.clone();
        }

        public int getInt()
        {
            return a;
        }

        static 
        {
            POINT = new POITYPE("POINT", 0, 0);
            BUS_STATION = new POITYPE("BUS_STATION", 1, 1);
            BUS_LINE = new POITYPE("BUS_LINE", 2, 2);
            SUBWAY_STATION = new POITYPE("SUBWAY_STATION", 3, 3);
            SUBWAY_LINE = new POITYPE("SUBWAY_LINE", 4, 4);
            $VALUES = (new POITYPE[] {
                POINT, BUS_STATION, BUS_LINE, SUBWAY_STATION, SUBWAY_LINE
            });
        }

        private POITYPE(String s, int i, int j)
        {
            super(s, i);
        }
    }


    public String address;
    public String city;
    public boolean hasCaterDetails;
    public boolean isPano;
    public LatLng location;
    public String name;
    public String phoneNum;
    public String postCode;
    public POITYPE type;
    public String uid;

    public PoiInfo()
    {
    }
}
