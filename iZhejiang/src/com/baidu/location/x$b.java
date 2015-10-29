// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.baidu.location:
//            x

private class <init>
    implements LocationListener
{

    final x a;

    public void onLocationChanged(Location location)
    {
        x._mthdo(a, System.currentTimeMillis());
        x._mthif(a, true);
        x._mthif(a, location);
        x._mthdo(a, false);
    }

    public void onProviderDisabled(String s)
    {
        x._mthif(a, null);
        x._mthif(a, false);
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            x._mthif(a, null);
            x._mthif(a, false);
            return;

        case 1: // '\001'
            x._mthif(a, System.currentTimeMillis());
            x._mthdo(a, true);
            x._mthif(a, false);
            return;

        case 2: // '\002'
            x._mthdo(a, false);
            break;
        }
    }

    private on(x x1)
    {
        a = x1;
        super();
    }

    (x x1,  )
    {
        this(x1);
    }
}
