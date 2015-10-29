// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

// Referenced classes of package com.baidu.location:
//            GeofenceClient

class a
    implements ServiceConnection
{

    final GeofenceClient a;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        GeofenceClient._mthif(a, new Messenger(ibinder));
        if (GeofenceClient._mthif(a) == null)
        {
            return;
        } else
        {
            GeofenceClient._mthif(a, true);
            a.startGeofenceScann();
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        GeofenceClient._mthif(a, null);
        GeofenceClient._mthif(a, false);
    }

    (GeofenceClient geofenceclient)
    {
        a = geofenceclient;
        super();
    }
}
