// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            MapViewLayoutParams

public static final class  extends Enum
{

    private static final absoluteMode $VALUES[];
    public static final absoluteMode absoluteMode;
    public static final absoluteMode mapMode;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        mapMode = new <init>("mapMode", 0);
        absoluteMode = new <init>("absoluteMode", 1);
        $VALUES = (new .VALUES[] {
            mapMode, absoluteMode
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
