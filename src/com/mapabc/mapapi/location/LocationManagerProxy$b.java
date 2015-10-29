// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.app.PendingIntent;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
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
        if (LocationManagerProxy.a(a) != null && LocationManagerProxy.a(a).size() > 0)
        {
            for (Iterator iterator = LocationManagerProxy.a(a).iterator(); iterator.hasNext();)
            {
                PendingIntent pendingintent = (PendingIntent)iterator.next();
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
