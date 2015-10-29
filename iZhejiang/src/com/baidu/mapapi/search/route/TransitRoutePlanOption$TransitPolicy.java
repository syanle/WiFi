// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            TransitRoutePlanOption

public static final class a extends Enum
{

    public static final EBUS_NO_SUBWAY EBUS_NO_SUBWAY;
    public static final EBUS_NO_SUBWAY EBUS_TIME_FIRST;
    public static final EBUS_NO_SUBWAY EBUS_TRANSFER_FIRST;
    public static final EBUS_NO_SUBWAY EBUS_WALK_FIRST;
    private static final EBUS_NO_SUBWAY b[];
    private int a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy, s);
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
        EBUS_TIME_FIRST = new <init>("EBUS_TIME_FIRST", 0, 3);
        EBUS_TRANSFER_FIRST = new <init>("EBUS_TRANSFER_FIRST", 1, 4);
        EBUS_WALK_FIRST = new <init>("EBUS_WALK_FIRST", 2, 5);
        EBUS_NO_SUBWAY = new <init>("EBUS_NO_SUBWAY", 3, 6);
        b = (new b[] {
            EBUS_TIME_FIRST, EBUS_TRANSFER_FIRST, EBUS_WALK_FIRST, EBUS_NO_SUBWAY
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        a = 0;
        a = j;
    }
}
