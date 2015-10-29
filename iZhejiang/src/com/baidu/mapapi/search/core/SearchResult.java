// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.core;


public class SearchResult
{
    public static final class ERRORNO extends Enum
    {

        private static final ERRORNO $VALUES[];
        public static final ERRORNO AMBIGUOUS_KEYWORD;
        public static final ERRORNO AMBIGUOUS_ROURE_ADDR;
        public static final ERRORNO NOT_SUPPORT_BUS;
        public static final ERRORNO NOT_SUPPORT_BUS_2CITY;
        public static final ERRORNO NO_ERROR;
        public static final ERRORNO RESULT_NOT_FOUND;
        public static final ERRORNO ST_EN_TOO_NEAR;

        public static ERRORNO valueOf(String s)
        {
            return (ERRORNO)Enum.valueOf(com/baidu/mapapi/search/core/SearchResult$ERRORNO, s);
        }

        public static ERRORNO[] values()
        {
            return (ERRORNO[])$VALUES.clone();
        }

        static 
        {
            NO_ERROR = new ERRORNO("NO_ERROR", 0);
            RESULT_NOT_FOUND = new ERRORNO("RESULT_NOT_FOUND", 1);
            AMBIGUOUS_KEYWORD = new ERRORNO("AMBIGUOUS_KEYWORD", 2);
            AMBIGUOUS_ROURE_ADDR = new ERRORNO("AMBIGUOUS_ROURE_ADDR", 3);
            NOT_SUPPORT_BUS = new ERRORNO("NOT_SUPPORT_BUS", 4);
            NOT_SUPPORT_BUS_2CITY = new ERRORNO("NOT_SUPPORT_BUS_2CITY", 5);
            ST_EN_TOO_NEAR = new ERRORNO("ST_EN_TOO_NEAR", 6);
            $VALUES = (new ERRORNO[] {
                NO_ERROR, RESULT_NOT_FOUND, AMBIGUOUS_KEYWORD, AMBIGUOUS_ROURE_ADDR, NOT_SUPPORT_BUS, NOT_SUPPORT_BUS_2CITY, ST_EN_TOO_NEAR
            });
        }

        private ERRORNO(String s, int i)
        {
            super(s, i);
        }
    }


    public ERRORNO error;

    public SearchResult()
    {
        error = ERRORNO.NO_ERROR;
    }

    public SearchResult(ERRORNO errorno)
    {
        error = errorno;
    }
}
