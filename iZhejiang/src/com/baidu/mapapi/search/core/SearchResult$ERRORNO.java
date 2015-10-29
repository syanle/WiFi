// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;


// Referenced classes of package com.baidu.mapapi.search.core:
//            SearchResult

public static final class  extends Enum
{

    private static final ST_EN_TOO_NEAR $VALUES[];
    public static final ST_EN_TOO_NEAR AMBIGUOUS_KEYWORD;
    public static final ST_EN_TOO_NEAR AMBIGUOUS_ROURE_ADDR;
    public static final ST_EN_TOO_NEAR NOT_SUPPORT_BUS;
    public static final ST_EN_TOO_NEAR NOT_SUPPORT_BUS_2CITY;
    public static final ST_EN_TOO_NEAR NO_ERROR;
    public static final ST_EN_TOO_NEAR RESULT_NOT_FOUND;
    public static final ST_EN_TOO_NEAR ST_EN_TOO_NEAR;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/mapapi/search/core/SearchResult$ERRORNO, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NO_ERROR = new <init>("NO_ERROR", 0);
        RESULT_NOT_FOUND = new <init>("RESULT_NOT_FOUND", 1);
        AMBIGUOUS_KEYWORD = new <init>("AMBIGUOUS_KEYWORD", 2);
        AMBIGUOUS_ROURE_ADDR = new <init>("AMBIGUOUS_ROURE_ADDR", 3);
        NOT_SUPPORT_BUS = new <init>("NOT_SUPPORT_BUS", 4);
        NOT_SUPPORT_BUS_2CITY = new <init>("NOT_SUPPORT_BUS_2CITY", 5);
        ST_EN_TOO_NEAR = new <init>("ST_EN_TOO_NEAR", 6);
        $VALUES = (new .VALUES[] {
            NO_ERROR, RESULT_NOT_FOUND, AMBIGUOUS_KEYWORD, AMBIGUOUS_ROURE_ADDR, NOT_SUPPORT_BUS, NOT_SUPPORT_BUS_2CITY, ST_EN_TOO_NEAR
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
