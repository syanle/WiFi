// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            TransitRouteLine

public static final class  extends Enum
{

    private static final WAKLING $VALUES[];
    public static final WAKLING BUSLINE;
    public static final WAKLING SUBWAY;
    public static final WAKLING WAKLING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        BUSLINE = new <init>("BUSLINE", 0);
        SUBWAY = new <init>("SUBWAY", 1);
        WAKLING = new <init>("WAKLING", 2);
        $VALUES = (new .VALUES[] {
            BUSLINE, SUBWAY, WAKLING
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
