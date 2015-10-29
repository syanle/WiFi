// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            x, q

private class <init>
    implements LocationListener
{

    final x a;
    private long _fldif;

    public void onLocationChanged(Location location)
    {
        if (!x._mthcase(a) && location != null && location.getProvider() == "gps")
        {
            x._mthfor(a, System.currentTimeMillis());
            if (System.currentTimeMillis() - _fldif >= 10000L && q._mthif(location, false))
            {
                _fldif = System.currentTimeMillis();
                location = x._mthbyte(a).obtainMessage(4, location);
                x._mthbyte(a).sendMessage(location);
                return;
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

    private on(x x1)
    {
        a = x1;
        super();
        _fldif = 0L;
    }

    if(x x1, if if1)
    {
        this(x1);
    }
}
