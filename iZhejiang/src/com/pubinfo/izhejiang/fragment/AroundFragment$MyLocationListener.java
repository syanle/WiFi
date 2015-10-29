// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Handler;
import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.LocationClient;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            AroundFragment

public class this._cls0
    implements BDLocationListener
{

    final AroundFragment this$0;

    public void onReceiveLocation(BDLocation bdlocation)
    {
        Object obj;
        obj = new StringBuffer(256);
        ((StringBuffer) (obj)).append("time : ");
        ((StringBuffer) (obj)).append(bdlocation.getTime());
        ((StringBuffer) (obj)).append("\nerror code : ");
        ((StringBuffer) (obj)).append(bdlocation.getLocType());
        ((StringBuffer) (obj)).append("\nlatitude : ");
        ((StringBuffer) (obj)).append(bdlocation.getLatitude());
        ((StringBuffer) (obj)).append("\nlontitude : ");
        ((StringBuffer) (obj)).append(bdlocation.getLongitude());
        ((StringBuffer) (obj)).append("\nradius : ");
        ((StringBuffer) (obj)).append(bdlocation.getRadius());
        if (bdlocation.getLocType() != 61) goto _L2; else goto _L1
_L1:
        mLocationClient.stop();
        ((StringBuffer) (obj)).append("\nspeed : ");
        ((StringBuffer) (obj)).append(bdlocation.getSpeed());
        ((StringBuffer) (obj)).append("\nsatellite : ");
        ((StringBuffer) (obj)).append(bdlocation.getSatelliteNumber());
        ((StringBuffer) (obj)).append("\ndirection : ");
        ((StringBuffer) (obj)).append("\naddr : ");
        ((StringBuffer) (obj)).append(bdlocation.getAddrStr());
        ((StringBuffer) (obj)).append(bdlocation.getDirection());
_L9:
        if (!isAdded()) goto _L4; else goto _L3
_L3:
        obj = MapStatusUpdateFactory.zoomTo(17F);
        AroundFragment.access$2(AroundFragment.this).setMapStatus(((com.baidu.mapapi.map.MapStatusUpdate) (obj)));
        obj = (new com.baidu.mapapi.map.nListener.this._cls0())._mth0(bdlocation.getRadius())._mth0(100F)._mth0(bdlocation.getLatitude())._mth0(bdlocation.getLongitude())._mth0();
        AroundFragment.access$2(AroundFragment.this).setMyLocationData(((com.baidu.mapapi.map.MyLocationData) (obj)));
        lat = (new StringBuilder(String.valueOf(bdlocation.getLatitude()))).toString();
        lon = (new StringBuilder(String.valueOf(bdlocation.getLongitude()))).toString();
        latlon = (new StringBuilder(String.valueOf(bdlocation.getLatitude()))).append(",").append(bdlocation.getLongitude()).toString();
        if (bdlocation.getAddrStr() != null && !bdlocation.getAddrStr().equals(""))
        {
            city = bdlocation.getAddrStr().split("\u7701")[1].split("\u5E02")[0];
            cityS = (new StringBuilder(String.valueOf(bdlocation.getAddrStr().split("\u5E02")[0]))).append("\u5E02").toString();
        }
        obj = getActivity().getSharedPreferences("Location", 0).edit();
        ((android.content.ctivity) (obj)).("city", city);
        ((android.content.) (obj)).("cityS", cityS);
        ((android.content.S) (obj)).("lat", lat);
        ((android.content.) (obj)).("lon", lon);
        ((android.content.) (obj)).();
        bdlocation = MapStatusUpdateFactory.newLatLng(new LatLng(bdlocation.getLatitude(), bdlocation.getLongitude()));
        AroundFragment.access$2(AroundFragment.this).animateMapStatus(bdlocation);
        if (tag != 0) goto _L6; else goto _L5
_L5:
        listHandler.sendEmptyMessage(2);
_L4:
        return;
_L2:
        if (bdlocation.getLocType() == 161)
        {
            mLocationClient.stop();
            ((StringBuffer) (obj)).append("\naddr : ");
            ((StringBuffer) (obj)).append(bdlocation.getAddrStr());
            ((StringBuffer) (obj)).append("\noperationers : ");
            ((StringBuffer) (obj)).append(bdlocation.getOperators());
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (tag != 1) goto _L4; else goto _L7
_L7:
        AroundFragment.access$3(true);
        AroundFragment.access$4(AroundFragment.this);
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public ()
    {
        this$0 = AroundFragment.this;
        super();
    }
}
