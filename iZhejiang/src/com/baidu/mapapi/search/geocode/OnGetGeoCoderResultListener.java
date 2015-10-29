// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;


// Referenced classes of package com.baidu.mapapi.search.geocode:
//            GeoCodeResult, ReverseGeoCodeResult

public interface OnGetGeoCoderResultListener
{

    public abstract void onGetGeoCodeResult(GeoCodeResult geocoderesult);

    public abstract void onGetReverseGeoCodeResult(ReverseGeoCodeResult reversegeocoderesult);
}
