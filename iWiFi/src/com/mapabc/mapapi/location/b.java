// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.mapabc.mapapi.location:
//            a

class b
    implements LocationListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void onLocationChanged(Location location)
    {
        com.mapabc.mapapi.location.a.a(a, location);
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }
}
