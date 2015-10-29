// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.umeng.socialize.location:
//            a, d

public class c
    implements LocationListener
{

    private a a;

    public c()
    {
    }

    public void a(a a1)
    {
        a = a1;
    }

    public void onLocationChanged(Location location)
    {
        if (a != null)
        {
            a.a(location);
            a.c().a(this);
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
}
