// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.model;


public final class LatLng
{

    private static final String a = com/baidu/mapapi/model/LatLng.getSimpleName();
    public final double latitude;
    public final double longitude;

    public LatLng(double d, double d1)
    {
        int i = (int)(d * 1000000D);
        int j = (int)(d1 * 1000000D);
        latitude = (double)i / 1000000D;
        longitude = (double)j / 1000000D;
    }

    public String toString()
    {
        String s = new String("latitude: ");
        s = (new StringBuilder()).append(s).append(latitude).toString();
        s = (new StringBuilder()).append(s).append(", longitude: ").toString();
        return (new StringBuilder()).append(s).append(longitude).toString();
    }

}
