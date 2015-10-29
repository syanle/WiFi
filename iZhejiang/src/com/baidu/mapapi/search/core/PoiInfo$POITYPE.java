// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;


// Referenced classes of package com.baidu.mapapi.search.core:
//            PoiInfo

public static final class  extends Enum
{

    private static final SUBWAY_LINE $VALUES[];
    public static final SUBWAY_LINE BUS_LINE;
    public static final SUBWAY_LINE BUS_STATION;
    public static final SUBWAY_LINE POINT;
    public static final SUBWAY_LINE SUBWAY_LINE;
    public static final SUBWAY_LINE SUBWAY_STATION;
    private int a;

    public static  fromInt(int i)
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

    public static SUBWAY_LINE valueOf(String s)
    {
        return (SUBWAY_LINE)Enum.valueOf(com/baidu/mapapi/search/core/PoiInfo$POITYPE, s);
    }

    public static SUBWAY_LINE[] values()
    {
        return (SUBWAY_LINE[])$VALUES.clone();
    }

    public int getInt()
    {
        return a;
    }

    static 
    {
        POINT = new <init>("POINT", 0, 0);
        BUS_STATION = new <init>("BUS_STATION", 1, 1);
        BUS_LINE = new <init>("BUS_LINE", 2, 2);
        SUBWAY_STATION = new <init>("SUBWAY_STATION", 3, 3);
        SUBWAY_LINE = new <init>("SUBWAY_LINE", 4, 4);
        $VALUES = (new .VALUES[] {
            POINT, BUS_STATION, BUS_LINE, SUBWAY_STATION, SUBWAY_LINE
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
    }
}
