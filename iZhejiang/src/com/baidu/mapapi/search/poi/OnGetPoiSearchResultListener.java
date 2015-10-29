// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;


// Referenced classes of package com.baidu.mapapi.search.poi:
//            PoiDetailResult, PoiResult

public interface OnGetPoiSearchResultListener
{

    public abstract void onGetPoiDetailResult(PoiDetailResult poidetailresult);

    public abstract void onGetPoiResult(PoiResult poiresult);
}
