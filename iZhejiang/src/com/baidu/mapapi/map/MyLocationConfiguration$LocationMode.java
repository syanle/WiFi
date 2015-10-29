// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            MyLocationConfiguration

public static final class  extends Enum
{

    public static final COMPASS COMPASS;
    public static final COMPASS FOLLOWING;
    public static final COMPASS NORMAL;
    private static final COMPASS a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/mapapi/map/MyLocationConfiguration$LocationMode, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        NORMAL = new <init>("NORMAL", 0);
        FOLLOWING = new <init>("FOLLOWING", 1);
        COMPASS = new <init>("COMPASS", 2);
        a = (new a[] {
            NORMAL, FOLLOWING, COMPASS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
