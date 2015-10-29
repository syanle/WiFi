// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.view.View;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            BitmapDescriptor

public class InfoWindow
{
    public static interface OnInfoWindowClickListener
    {

        public abstract void onInfoWindowClick();
    }


    BitmapDescriptor a;
    View b;
    LatLng c;
    OnInfoWindowClickListener d;
    int e;

    public InfoWindow(View view, LatLng latlng, int i)
    {
        if (view == null || latlng == null)
        {
            throw new IllegalArgumentException("view and position can not be null");
        } else
        {
            b = view;
            c = latlng;
            e = i;
            return;
        }
    }

    public InfoWindow(BitmapDescriptor bitmapdescriptor, LatLng latlng, int i, OnInfoWindowClickListener oninfowindowclicklistener)
    {
        if (bitmapdescriptor == null || latlng == null)
        {
            throw new IllegalArgumentException("bitmapDescriptor and position can not be null");
        } else
        {
            a = bitmapdescriptor;
            c = latlng;
            d = oninfowindowclicklistener;
            e = i;
            return;
        }
    }
}
