// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, MapPoi

public static interface 
{

    public abstract void onMapClick(LatLng latlng);

    public abstract boolean onMapPoiClick(MapPoi mappoi);
}
