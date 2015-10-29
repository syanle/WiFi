// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            DrivingRouteResult, TransitRouteResult, WalkingRouteResult

public interface OnGetRoutePlanResultListener
{

    public abstract void onGetDrivingRouteResult(DrivingRouteResult drivingrouteresult);

    public abstract void onGetTransitRouteResult(TransitRouteResult transitrouteresult);

    public abstract void onGetWalkingRouteResult(WalkingRouteResult walkingrouteresult);
}
