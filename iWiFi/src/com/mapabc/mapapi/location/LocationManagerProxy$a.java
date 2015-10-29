// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.app.PendingIntent;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.mapabc.mapapi.core.e;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.mapabc.mapapi.location:
//            LocationManagerProxy

class a
    implements LocationListener
{

    final LocationManagerProxy a;

    public void onLocationChanged(Location location)
    {
        if (LocationManagerProxy.c(a) && LocationManagerProxy.d(a).size() > 0)
        {
            double d = location.getLatitude();
            double d1 = location.getLongitude();
            double d2 = com.mapabc.mapapi.location.LocationManagerProxy.e(a);
            double d3 = com.mapabc.mapapi.location.LocationManagerProxy.e(a);
            double d4 = LocationManagerProxy.f(a);
            d = Math.abs((d - d3) * (d - d2) + (d1 - LocationManagerProxy.f(a)) * (d1 - d4));
            Iterator iterator = LocationManagerProxy.d(a).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                PendingIntent pendingintent = (PendingIntent)iterator.next();
                if (e.c() > LocationManagerProxy.g(a) && LocationManagerProxy.g(a) != 0L)
                {
                    a.removeProximityAlert(pendingintent);
                } else
                if (Math.abs(d - LocationManagerProxy.h(a) * LocationManagerProxy.h(a)) < 0.5D)
                {
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("location", location);
                    intent.putExtras(bundle);
                    try
                    {
                        pendingintent.send(LocationManagerProxy.b(a), 0, intent);
                    }
                    catch (android.app.xception xception)
                    {
                        xception.printStackTrace();
                    }
                }
            } while (true);
        }
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

    (LocationManagerProxy locationmanagerproxy)
    {
        a = locationmanagerproxy;
        super();
    }
}
