// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapPoi;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            AroundFragment

class this._cls0
    implements com.baidu.mapapi.map.ckListener
{

    final AroundFragment this$0;

    public void onMapClick(LatLng latlng)
    {
        AroundFragment.access$2(AroundFragment.this).hideInfoWindow();
    }

    public boolean onMapPoiClick(MapPoi mappoi)
    {
        AroundFragment.access$2(AroundFragment.this).hideInfoWindow();
        return false;
    }

    ()
    {
        this$0 = AroundFragment.this;
        super();
    }
}
