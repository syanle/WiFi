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
import com.baidu.mapapi.search.route.TransitRouteLine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.overlayutil:
//            OverlayManager

public class TransitRouteOverlay extends OverlayManager
{

    private TransitRouteLine c;

    public TransitRouteOverlay(BaiduMap baidumap)
    {
        super(baidumap);
        c = null;
    }

    private BitmapDescriptor a(com.baidu.mapapi.search.route.TransitRouteLine.TransitStep transitstep)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType.values().length];
                try
                {
                    a[com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType.BUSLINE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType.SUBWAY.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType.WAKLING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (com.baidu.mapapi.overlayutil._cls1.a[transitstep.getStepType().ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return BitmapDescriptorFactory.fromAssetWithDpi("Icon_bus_station.png");

        case 2: // '\002'
            return BitmapDescriptorFactory.fromAssetWithDpi("Icon_subway_station.png");

        case 3: // '\003'
            return BitmapDescriptorFactory.fromAssetWithDpi("Icon_walk_route.png");
        }
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
            new ArrayList();
            Iterator iterator = c.getAllStep().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.baidu.mapapi.search.route.TransitRouteLine.TransitStep transitstep = (com.baidu.mapapi.search.route.TransitRouteLine.TransitStep)iterator.next();
                Bundle bundle = new Bundle();
                bundle.putInt("index", c.getAllStep().indexOf(transitstep));
                if (transitstep.getEntrace() != null)
                {
                    arraylist.add((new MarkerOptions()).position(transitstep.getEntrace().getLocation()).anchor(0.5F, 0.5F).zIndex(10).extraInfo(bundle).icon(a(transitstep)));
                }
                if (c.getAllStep().indexOf(transitstep) == c.getAllStep().size() - 1 && transitstep.getExit() != null)
                {
                    arraylist.add((new MarkerOptions()).position(transitstep.getExit().getLocation()).anchor(0.5F, 0.5F).zIndex(10).icon(a(transitstep)));
                }
            } while (true);
        }
        Object obj;
        if (c.getStarting() != null)
        {
            Object obj1 = (new MarkerOptions()).position(c.getStarting().getLocation());
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
            new ArrayList();
            obj = c.getAllStep().iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                obj1 = (com.baidu.mapapi.search.route.TransitRouteLine.TransitStep)((Iterator) (obj)).next();
                if (((com.baidu.mapapi.search.route.TransitRouteLine.TransitStep) (obj1)).getWayPoints() != null)
                {
                    int i;
                    if (((com.baidu.mapapi.search.route.TransitRouteLine.TransitStep) (obj1)).getStepType() != com.baidu.mapapi.search.route.TransitRouteLine.TransitStep.TransitRouteStepType.WAKLING)
                    {
                        i = Color.argb(178, 0, 78, 255);
                    } else
                    {
                        i = Color.argb(178, 88, 208, 0);
                    }
                    arraylist.add((new PolylineOptions()).points(((com.baidu.mapapi.search.route.TransitRouteLine.TransitStep) (obj1)).getWayPoints()).width(10).color(i).zIndex(0));
                }
            } while (true);
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
            Toast.makeText(com.baidu.mapapi.a.a().d(), ((com.baidu.mapapi.search.route.TransitRouteLine.TransitStep)c.getAllStep().get(i)).getInstructions(), 1).show();
        }
        return false;
    }

    public void setData(TransitRouteLine transitrouteline)
    {
        c = transitrouteline;
    }
}
