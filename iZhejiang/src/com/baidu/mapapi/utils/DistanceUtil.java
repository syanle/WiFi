// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;

public class DistanceUtil
{

    public DistanceUtil()
    {
    }

    public static double getDistance(LatLng latlng, LatLng latlng1)
    {
        if (latlng != null && latlng1 != null)
        {
            latlng = a.b(latlng);
            latlng1 = a.b(latlng1);
            if (latlng != null && latlng1 != null)
            {
                return com.baidu.platform.comjni.tools.a.a(latlng, latlng1);
            }
        }
        return -1D;
    }
}
