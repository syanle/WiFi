// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


// Referenced classes of package com.mapabc.mapapi.core:
//            GeoPoint

public static final class  extends Enum
{

    private static final projection_custBeijing54 $VALUES[];
    public static final projection_custBeijing54 projection_900913;
    public static final projection_custBeijing54 projection_custBeijing54;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mapabc/mapapi/core/GeoPoint$EnumMapProjection, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        projection_900913 = new <init>("projection_900913", 0);
        projection_custBeijing54 = new <init>("projection_custBeijing54", 1);
        $VALUES = (new .VALUES[] {
            projection_900913, projection_custBeijing54
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
