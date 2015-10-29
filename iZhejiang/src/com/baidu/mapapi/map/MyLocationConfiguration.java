// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            BitmapDescriptor

public class MyLocationConfiguration
{
    public static final class LocationMode extends Enum
    {

        public static final LocationMode COMPASS;
        public static final LocationMode FOLLOWING;
        public static final LocationMode NORMAL;
        private static final LocationMode a[];

        public static LocationMode valueOf(String s)
        {
            return (LocationMode)Enum.valueOf(com/baidu/mapapi/map/MyLocationConfiguration$LocationMode, s);
        }

        public static LocationMode[] values()
        {
            return (LocationMode[])a.clone();
        }

        static 
        {
            NORMAL = new LocationMode("NORMAL", 0);
            FOLLOWING = new LocationMode("FOLLOWING", 1);
            COMPASS = new LocationMode("COMPASS", 2);
            a = (new LocationMode[] {
                NORMAL, FOLLOWING, COMPASS
            });
        }

        private LocationMode(String s, int i)
        {
            super(s, i);
        }
    }


    public final BitmapDescriptor customMarker;
    public final boolean enableDirection;
    public final LocationMode locationMode;

    public MyLocationConfiguration(LocationMode locationmode, boolean flag, BitmapDescriptor bitmapdescriptor)
    {
        LocationMode locationmode1 = locationmode;
        if (locationmode == null)
        {
            locationmode1 = LocationMode.NORMAL;
        }
        locationMode = locationmode1;
        enableDirection = flag;
        customMarker = bitmapdescriptor;
    }
}
