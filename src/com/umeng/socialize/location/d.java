// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.location;

import android.app.Activity;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import com.umeng.socom.DeviceConfig;

// Referenced classes of package com.umeng.socialize.location:
//            e

public class d
{

    LocationManager a;

    public d()
    {
        a = null;
    }

    public Location a(String s)
    {
        if (a == null)
        {
            return null;
        } else
        {
            return a.getLastKnownLocation(s);
        }
    }

    public String a(Criteria criteria, boolean flag)
    {
        if (a == null)
        {
            return null;
        } else
        {
            return a.getBestProvider(criteria, flag);
        }
    }

    public void a(Activity activity, String s, long l, float f, LocationListener locationlistener)
    {
        if (a != null)
        {
            activity.runOnUiThread(new e(this, s, l, f, locationlistener));
        }
    }

    public void a(Context context)
    {
        if (DeviceConfig.checkPermission(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceConfig.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION"))
        {
            a = (LocationManager)context.getSystemService("location");
        }
    }

    public void a(LocationListener locationlistener)
    {
        if (a != null)
        {
            a.removeUpdates(locationlistener);
        }
    }

    public boolean b(String s)
    {
        if (a == null)
        {
            return false;
        } else
        {
            return a.isProviderEnabled(s);
        }
    }
}
