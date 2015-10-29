// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.overlayutil;

import android.graphics.Color;
import android.os.Bundle;
import android.widget.Toast;
import com.baidu.mapapi.a;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.route.DrivingRouteLine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.overlayutil:
//            OverlayManager

public class DrivingRouteOverlay extends OverlayManager
{

    private DrivingRouteLine c;

    public DrivingRouteOverlay(BaiduMap baidumap)
    {
        super(baidumap);
        c = null;
    }

    public final List getOverlayOptions()
    {
        ArrayList arraylist = null;
        if (c == null)
        {
            return null;
        }
        ArrayList arraylist1 = new ArrayList();
        if (c.getAllStep() != null && c.getAllStep().size() > 0)
        {
            new ArrayList();
            Iterator iterator = c.getAllStep().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep drivingstep = (com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep)iterator.next();
                Bundle bundle = new Bundle();
                bundle.putInt("index", c.getAllStep().indexOf(drivingstep));
                if (drivingstep.getEntrace() != null)
                {
                    arraylist1.add((new MarkerOptions()).position(drivingstep.getEntrace().getLocation()).anchor(0.5F, 0.5F).zIndex(10).rotate(360 - drivingstep.getDirection()).extraInfo(bundle).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
                if (c.getAllStep().indexOf(drivingstep) == c.getAllStep().size() - 1 && drivingstep.getExit() != null)
                {
                    arraylist1.add((new MarkerOptions()).position(drivingstep.getExit().getLocation()).anchor(0.5F, 0.5F).zIndex(10).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
            } while (true);
        }
        Object obj;
        if (c.getStarting() != null)
        {
            Object obj1 = (new MarkerOptions()).position(c.getStarting().getLocation());
            com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep drivingstep1;
            int i;
            int j;
            if (getStartMarker() != null)
            {
                obj = getStartMarker();
            } else
            {
                obj = BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png");
            }
            arraylist1.add(((MarkerOptions) (obj1)).icon(((BitmapDescriptor) (obj))).zIndex(10));
        }
        if (c.getTerminal() != null)
        {
            obj1 = (new MarkerOptions()).position(c.getTerminal().getLocation());
            if (getTerminalMarker() != null)
            {
                obj = getTerminalMarker();
            } else
            {
                obj = BitmapDescriptorFactory.fromAssetWithDpi("Icon_end.png");
            }
            arraylist1.add(((MarkerOptions) (obj1)).icon(((BitmapDescriptor) (obj))).zIndex(10));
        }
        if (c.getAllStep() != null && c.getAllStep().size() > 0)
        {
            obj1 = c.getAllStep();
            j = ((List) (obj1)).size();
            i = 0;
            obj = arraylist;
            for (; i < j; i++)
            {
                drivingstep1 = (com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep)((List) (obj1)).get(i);
                if (drivingstep1.getWayPoints() == null || drivingstep1.getWayPoints().size() <= 0)
                {
                    continue;
                }
                arraylist = new ArrayList();
                if (obj != null)
                {
                    arraylist.add(obj);
                }
                obj = drivingstep1.getWayPoints();
                arraylist.addAll(((java.util.Collection) (obj)));
                arraylist1.add((new PolylineOptions()).points(arraylist).width(10).color(Color.argb(178, 0, 78, 255)).zIndex(0));
                obj = (LatLng)((List) (obj)).get(((List) (obj)).size() - 1);
            }

        }
        return arraylist1;
    }

    public BitmapDescriptor getStartMarker()
    {
        return null;
    }

    public BitmapDescriptor getTerminalMarker()
    {
        return null;
    }

    public final boolean onMarkerClick(Marker marker)
    {
        if (marker.getExtraInfo() != null)
        {
            onRouteNodeClick(marker.getExtraInfo().getInt("index"));
        }
        return true;
    }

    public boolean onRouteNodeClick(int i)
    {
        if (c.getAllStep() != null && c.getAllStep().get(i) != null)
        {
            Toast.makeText(a.a().d(), ((com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep)c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(DrivingRouteLine drivingrouteline)
    {
        c = drivingrouteline;
    }
}
