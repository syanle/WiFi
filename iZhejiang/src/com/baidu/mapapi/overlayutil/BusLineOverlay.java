// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.widget.Toast;
import com.baidu.mapapi.a;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.search.busline.BusLineResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.overlayutil:
//            OverlayManager

public class BusLineOverlay extends OverlayManager
{

    private BusLineResult c;

    public BusLineOverlay(BaiduMap baidumap)
    {
        super(baidumap);
        c = null;
    }

    public final List getOverlayOptions()
    {
        if (c == null || c.getStations() == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        com.baidu.mapapi.search.busline.BusLineResult.BusStation busstation;
        for (Iterator iterator = c.getStations().iterator(); iterator.hasNext(); arraylist.add((new MarkerOptions()).position(busstation.getLocation()).zIndex(10).anchor(0.5F, 0.5F).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_bus_station.png"))))
        {
            busstation = (com.baidu.mapapi.search.busline.BusLineResult.BusStation)iterator.next();
        }

        ArrayList arraylist1 = new ArrayList();
        Iterator iterator1 = c.getSteps().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            com.baidu.mapapi.search.busline.BusLineResult.BusStep busstep = (com.baidu.mapapi.search.busline.BusLineResult.BusStep)iterator1.next();
            if (busstep.getWayPoints() != null)
            {
                arraylist1.addAll(busstep.getWayPoints());
            }
        } while (true);
        if (arraylist1.size() > 0)
        {
            arraylist.add((new PolylineOptions()).width(10).color(Color.argb(178, 0, 78, 255)).zIndex(0).points(arraylist1));
        }
        return arraylist;
    }

    public boolean onBusStationClick(int i)
    {
        if (c.getStations() != null && c.getStations().get(i) != null)
        {
            Toast.makeText(a.a().d(), ((com.baidu.mapapi.search.busline.BusLineResult.BusStation)c.getStations().get(i)).getTitle(), 1).show();
        }
        return false;
    }

    public final boolean onMarkerClick(Marker marker)
    {
        return onBusStationClick(b.indexOf(marker));
    }

    public void setData(BusLineResult buslineresult)
    {
        c = buslineresult;
    }
}
