// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.InfoWindow;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.model.LatLng;
import com.pubinfo.izhejiang.WebviewPage;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            AroundFragment

class this._cls0
    implements com.baidu.mapapi.map.ClickListener
{

    final AroundFragment this$0;

    public boolean onMarkerClick(final Marker marker)
    {
        Object obj;
        Object obj1;
        convertView = AroundFragment.access$7(AroundFragment.this).inflate(0x7f03001f, null, false);
        obj = marker.getTitle();
        if (!((String) (obj)).equals(""))
        {
            String as[] = ((String) (obj)).split(",");
            name = as[0];
            goods = as[1];
            url = as[2];
            type = as[3];
        }
        as = new com.baidu.mapapi.map.InfoWindow.OnInfoWindowClickListener() {

            final AroundFragment._cls2 this$1;
            private final Marker val$marker;

            public void onInfoWindowClick()
            {
                Intent intent = new Intent(getActivity(), com/pubinfo/izhejiang/WebviewPage);
                intent.putExtra("activity", "AroundFragment");
                LatLng latlng = marker.getPosition();
                double d = latlng.latitude;
                double d1 = latlng.longitude;
                intent.putExtra("url", url);
                intent.putExtra("name", name);
                intent.putExtra("goods", goods);
                intent.putExtra("type", type);
                intent.putExtra("lat", Double.valueOf(d));
                intent.putExtra("lon", Double.valueOf(d1));
                startActivityForResult(intent, 1);
            }

            
            {
                this$1 = AroundFragment._cls2.this;
                marker = marker1;
                super();
            }
        };
        ((TextView)convertView.findViewById(0x7f0a00a8)).setText(name);
        obj1 = (TextView)convertView.findViewById(0x7f0a00a9);
        if (!type.equals("0") && !type.equals("1") && !type.equals("2")) goto _L2; else goto _L1
_L1:
        ((TextView) (obj1)).setText((new StringBuilder("\u597D\u8BC4\u6570\uFF1A")).append(goods).toString());
_L4:
        obj1 = marker.getPosition();
        com.baidu.mapapi.map.MapStatusUpdate mapstatusupdate = MapStatusUpdateFactory.newLatLng(((LatLng) (obj1)));
        AroundFragment.access$2(AroundFragment.this).animateMapStatus(mapstatusupdate);
        AroundFragment.access$8(AroundFragment.this, new InfoWindow(BitmapDescriptorFactory.fromView(convertView), ((LatLng) (obj1)), -47, as));
        AroundFragment.access$2(AroundFragment.this).showInfoWindow(AroundFragment.access$9(AroundFragment.this));
        reseticon();
        as = (new MarkerOptions()).icon(bdB).position(marker.getPosition()).title((new StringBuilder(String.valueOf(name))).append(",").append(goods).append(",").append(url).append(",").append(type).toString());
        marker.remove();
        marker = (Marker)AroundFragment.access$2(AroundFragment.this).addOverlay(as);
        return true;
_L2:
        if (type.equals("3"))
        {
            ((TextView) (obj1)).setText((new StringBuilder("\u8BC4\u8BBA\u6570\uFF1A")).append(goods).toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }


    _cls1.val.marker()
    {
        this$0 = AroundFragment.this;
        super();
    }
}
