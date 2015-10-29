// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.overlayutil;


// Referenced classes of package com.baidu.mapapi.overlayutil:
//            TransitRouteOverlay

static class sitStep.TransitRouteStepType
{

    static final int a[];

    static 
    {
        a = new int[com.baidu.mapapi.search.route.itStep.TransitRouteStepType.values().length];
        try
        {
            a[com.baidu.mapapi.search.route.itStep.TransitRouteStepType.BUSLINE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.baidu.mapapi.search.route.itStep.TransitRouteStepType.SUBWAY.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.baidu.mapapi.search.route.itStep.TransitRouteStepType.WAKLING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
