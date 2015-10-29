// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;


// Referenced classes of package com.baidu.mapapi.utils:
//            CoordinateConverter

public static final class  extends Enum
{

    private static final COMMON $VALUES[];
    public static final COMMON COMMON;
    public static final COMMON GPS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/mapapi/utils/CoordinateConverter$CoordType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        GPS = new <init>("GPS", 0);
        COMMON = new <init>("COMMON", 1);
        $VALUES = (new .VALUES[] {
            GPS, COMMON
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
