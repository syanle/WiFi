// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            DrivingRoutePlanOption

public static final class a extends Enum
{

    public static final ECAR_FEE_FIRST ECAR_AVOID_JAM;
    public static final ECAR_FEE_FIRST ECAR_DIS_FIRST;
    public static final ECAR_FEE_FIRST ECAR_FEE_FIRST;
    public static final ECAR_FEE_FIRST ECAR_TIME_FIRST;
    private static final ECAR_FEE_FIRST b[];
    private int a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy, s);
    }

    public static a[] values()
    {
        return (a[])b.clone();
    }

    public int getInt()
    {
        return a;
    }

    static 
    {
        ECAR_AVOID_JAM = new <init>("ECAR_AVOID_JAM", 0, -1);
        ECAR_TIME_FIRST = new <init>("ECAR_TIME_FIRST", 1, 0);
        ECAR_DIS_FIRST = new <init>("ECAR_DIS_FIRST", 2, 1);
        ECAR_FEE_FIRST = new <init>("ECAR_FEE_FIRST", 3, 2);
        b = (new b[] {
            ECAR_AVOID_JAM, ECAR_TIME_FIRST, ECAR_DIS_FIRST, ECAR_FEE_FIRST
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        a = j;
    }
}
