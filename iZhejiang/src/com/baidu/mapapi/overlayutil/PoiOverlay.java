// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.overlayutil;

import android.os.Bundle;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.mapapi.search.poi.PoiResult;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.overlayutil:
//            OverlayManager

public class PoiOverlay extends OverlayManager
{

    private PoiResult c;

    public PoiOverlay(BaiduMap baidumap)
    {
        super(baidumap);
        c = null;
    }

    public final List getOverlayOptions()
    {
        if (c == null || c.getAllPoi() == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        int i = 0;
        int j = 0;
        while (i < c.getAllPoi().size() && j < 10) 
        {
            if (((PoiInfo)c.getAllPoi().get(i)).location != null)
            {
                j++;
                Bundle bundle = new Bundle();
                bundle.putInt("index", i);
                arraylist.add((new MarkerOptions()).icon(BitmapDescriptorFactory.fromAssetWithDpi((new StringBuilder()).append("Icon_mark").append(j).append(".png").toString())).extraInfo(bundle).position(((PoiInfo)c.getAllPoi().get(i)).location));
            }
            i++;
        }
        return arraylist;
    }

    public PoiResult getPoiResult()
    {
        return c;
    }

    public final boolean onMarkerClick(Marker marker)
    {
        if (marker.getExtraInfo() != null)
        {
            return onPoiClick(marker.getExtraInfo().getInt("index"));
        } else
        {
            return false;
        }
    }

    public boolean onPoiClick(int i)
    {
        return false;
    }

    public void setData(PoiResult poiresult)
    {
        c = poiresult;
    }
}
