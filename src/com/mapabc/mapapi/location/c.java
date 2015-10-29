// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.location:
//            LocationManagerProxy

public class c
    implements LocationListener
{

    private LocationManagerProxy a;
    private LocationListener b;

    public c(LocationManagerProxy locationmanagerproxy)
    {
        b = null;
        a = locationmanagerproxy;
    }

    public void a()
    {
        if (a != null)
        {
            a.removeUpdates(this);
        }
        b = null;
    }

    public boolean a(LocationListener locationlistener, long l, float f)
    {
        boolean flag = false;
        b = locationlistener;
        locationlistener = a.getProviders(true).iterator();
        do
        {
            if (!locationlistener.hasNext())
            {
                break;
            }
            String s = (String)locationlistener.next();
            if ("gps".equals(s) || "network".equals(s))
            {
                a.requestLocationUpdates(s, l, f, this);
                flag = true;
            }
        } while (true);
        return flag;
    }

    public boolean a(LocationListener locationlistener, long l, float f, String s)
    {
        boolean flag = false;
        b = locationlistener;
        if ("lbs".equals(s))
        {
            a.requestLocationUpdates(s, l, f, this);
            flag = true;
        }
        return flag;
    }

    public void onLocationChanged(Location location)
    {
        if (b != null)
        {
            b.onLocationChanged(location);
        }
    }

    public void onProviderDisabled(String s)
    {
        if (b != null)
        {
            b.onProviderDisabled(s);
        }
    }

    public void onProviderEnabled(String s)
    {
        if (b != null)
        {
            b.onProviderEnabled(s);
        }
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        if (b != null)
        {
            b.onStatusChanged(s, i, bundle);
        }
    }
}
