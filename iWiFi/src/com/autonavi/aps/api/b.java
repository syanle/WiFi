// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.autonavi.aps.api:
//            APS

final class b
    implements LocationListener
{

    b()
    {
    }

    public final void onLocationChanged(Location location)
    {
        if (location != null && location.getProvider().equalsIgnoreCase("network"))
        {
            APS.b(location);
        }
    }

    public final void onProviderDisabled(String s)
    {
        if (s.equals("network"))
        {
            APS.b(null);
        }
    }

    public final void onProviderEnabled(String s)
    {
    }

    public final void onStatusChanged(String s, int i, Bundle bundle)
    {
        if (s.equalsIgnoreCase("network") && i == 0)
        {
            APS.b(null);
        }
    }
}
