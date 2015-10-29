// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.autonavi.aps.api:
//            APS

final class a
    implements LocationListener
{

    a()
    {
    }

    public final void onLocationChanged(Location location)
    {
        if (location != null && location.getProvider().equalsIgnoreCase("gps"))
        {
            APS.a(location);
        }
    }

    public final void onProviderDisabled(String s)
    {
        if (s.equals("gps"))
        {
            APS.a(null);
        }
    }

    public final void onProviderEnabled(String s)
    {
    }

    public final void onStatusChanged(String s, int i, Bundle bundle)
    {
        if (s.equalsIgnoreCase("gps") && i == 0)
        {
            APS.a(null);
        }
    }
}
