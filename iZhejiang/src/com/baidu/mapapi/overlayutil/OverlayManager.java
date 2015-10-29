// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.overlayutil;

import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.Overlay;
import com.baidu.mapapi.map.OverlayOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class OverlayManager
    implements com.baidu.mapapi.map.BaiduMap.OnMarkerClickListener
{

    BaiduMap a;
    List b;
    private List c;

    public OverlayManager(BaiduMap baidumap)
    {
        a = null;
        c = null;
        b = null;
        a = baidumap;
        if (c == null)
        {
            c = new ArrayList();
        }
        if (b == null)
        {
            b = new ArrayList();
        }
    }

    public final void addToMap()
    {
        if (a != null)
        {
            removeFromMap();
            if (getOverlayOptions() != null)
            {
                c.addAll(getOverlayOptions());
            }
            Iterator iterator = c.iterator();
            while (iterator.hasNext()) 
            {
                OverlayOptions overlayoptions = (OverlayOptions)iterator.next();
                b.add(a.addOverlay(overlayoptions));
            }
        }
    }

    public abstract List getOverlayOptions();

    public final void removeFromMap()
    {
        if (a == null)
        {
            return;
        }
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((Overlay)iterator.next()).remove()) { }
        c.clear();
        b.clear();
    }

    public void zoomToSpan()
    {
        while (a == null || b.size() <= 0) 
        {
            return;
        }
        com.baidu.mapapi.model.LatLngBounds.Builder builder = new com.baidu.mapapi.model.LatLngBounds.Builder();
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Overlay overlay = (Overlay)iterator.next();
            if (overlay instanceof Marker)
            {
                builder.include(((Marker)overlay).getPosition());
            }
        } while (true);
        a.setMapStatus(MapStatusUpdateFactory.newLatLngBounds(builder.build()));
    }
}
