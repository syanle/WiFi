// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapStatus;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.MapView;

public class ZoomControlsView extends RelativeLayout
    implements android.view.View.OnClickListener
{

    private BaiduMap baiduMap;
    private Button inBtn;
    private MapStatus mapStatus;
    private float maxZoomLevel;
    private float minZoomLevel;
    com.baidu.mapapi.map.BaiduMap.OnMapStatusChangeListener onMapStatusChangeListener = new com.baidu.mapapi.map.BaiduMap.OnMapStatusChangeListener() {

        final ZoomControlsView this$0;

        public void onMapStatusChange(MapStatus mapstatus)
        {
            controlZoomShow();
        }

        public void onMapStatusChangeFinish(MapStatus mapstatus)
        {
        }

        public void onMapStatusChangeStart(MapStatus mapstatus)
        {
        }

            
            {
                this$0 = ZoomControlsView.this;
                super();
            }
    };
    private Button outBtn;

    public ZoomControlsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset, 0);
        init();
    }

    public ZoomControlsView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void controlZoomShow()
    {
        float f = baiduMap.getMapStatus().zoom;
        if (f >= maxZoomLevel)
        {
            inBtn.setEnabled(false);
        } else
        {
            inBtn.setEnabled(true);
        }
        if (f <= minZoomLevel)
        {
            outBtn.setEnabled(false);
            return;
        } else
        {
            outBtn.setEnabled(true);
            return;
        }
    }

    private void init()
    {
        RelativeLayout relativelayout = (RelativeLayout)LayoutInflater.from(getContext()).inflate(0x7f03003a, null);
        inBtn = (Button)relativelayout.findViewById(0x7f0a00fe);
        outBtn = (Button)relativelayout.findViewById(0x7f0a00ff);
        inBtn.setOnClickListener(this);
        outBtn.setOnClickListener(this);
        addView(relativelayout);
    }

    public void onClick(View view)
    {
        mapStatus = baiduMap.getMapStatus();
        view.getId();
        JVM INSTR tableswitch 2131362046 2131362047: default 36
    //                   2131362046 48
    //                   2131362047 74;
           goto _L1 _L2 _L3
_L1:
        mapStatus = baiduMap.getMapStatus();
        return;
_L2:
        baiduMap.setMapStatus(MapStatusUpdateFactory.zoomTo(mapStatus.zoom + 1.0F));
        controlZoomShow();
        continue; /* Loop/switch isn't completed */
_L3:
        baiduMap.setMapStatus(MapStatusUpdateFactory.zoomTo(mapStatus.zoom - 1.0F));
        controlZoomShow();
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void setMapView(MapView mapview)
    {
        baiduMap = mapview.getMap();
        baiduMap.setOnMapStatusChangeListener(onMapStatusChangeListener);
        maxZoomLevel = baiduMap.getMaxZoomLevel();
        minZoomLevel = baiduMap.getMinZoomLevel();
        controlZoomShow();
    }

}
