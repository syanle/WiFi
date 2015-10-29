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
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.route.WalkingRouteLine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.overlayutil:
//            OverlayManager

public class WalkingRouteOverlay extends OverlayManager
{

    private WalkingRouteLine c;

    public WalkingRouteOverlay(BaiduMap baidumap)
    {
        super(baidumap);
        c = null;
    }

    public final List getOverlayOptions()
    {
        if (c == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        if (c.getAllStep() != null && c.getAllStep().size() > 0)
        {
            Iterator iterator = c.getAllStep().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep walkingstep = (com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep)iterator.next();
                Bundle bundle = new Bundle();
                bundle.putInt("index", c.getAllStep().indexOf(walkingstep));
                if (walkingstep.getEntrace() != null)
                {
                    arraylist.add((new MarkerOptions()).position(walkingstep.getEntrace().getLocation()).rotate(360 - walkingstep.getDirection()).zIndex(10).anchor(0.5F, 0.5F).extraInfo(bundle).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
                if (c.getAllStep().indexOf(walkingstep) == c.getAllStep().size() - 1 && walkingstep.getExit() != null)
                {
                    arraylist.add((new MarkerOptions()).position(walkingstep.getExit().getLocation()).anchor(0.5F, 0.5F).zIndex(10).icon(BitmapDescriptorFactory.fromAssetWithDpi("Icon_line_node.png")));
                }
            } while (true);
        }
        Object obj;
        if (c.getStarting() != null)
        {
            Object obj1 = (new MarkerOptions()).position(c.getStarting().getLocation());
            com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep walkingstep1;
            if (getStartMarker() != null)
            {
                obj = getStartMarker();
            } else
            {
                obj = BitmapDescriptorFactory.fromAssetWithDpi("Icon_start.png");
            }
            arraylist.add(((MarkerOptions) (obj1)).icon(((BitmapDescriptor) (obj))).zIndex(10));
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
            arraylist.add(((MarkerOptions) (obj1)).icon(((BitmapDescriptor) (obj))).zIndex(10));
        }
        if (c.getAllStep() != null && c.getAllStep().size() > 0)
        {
            obj = new ArrayList();
            obj1 = c.getAllStep().iterator();
            do
            {
                if (!((Iterator) (obj1)).hasNext())
                {
                    break;
                }
                walkingstep1 = (com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep)((Iterator) (obj1)).next();
                if (walkingstep1.getWayPoints() != null)
                {
                    ((List) (obj)).addAll(walkingstep1.getWayPoints());
                }
            } while (true);
            arraylist.add((new PolylineOptions()).points(((List) (obj))).width(10).color(Color.argb(178, 0, 78, 255)).zIndex(0));
        }
        return arraylist;
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
            Toast.makeText(a.a().d(), ((com.baidu.mapapi.search.route.WalkingRouteLine.WalkingStep)c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(WalkingRouteLine walkingrouteline)
    {
        c = walkingrouteline;
    }
}
