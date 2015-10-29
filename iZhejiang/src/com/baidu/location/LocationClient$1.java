// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

// Referenced classes of package com.baidu.location:
//            LocationClient

class a
    implements ServiceConnection
{

    final LocationClient a;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        LocationClient._mthif(a, new Messenger(ibinder));
        if (LocationClient._mthchar(a) != null)
        {
            LocationClient._mthif(a, true);
            Log.d("baidu_location_client", "baidu location connected ...");
            try
            {
                componentname = Message.obtain(null, 11);
                componentname.replyTo = LocationClient._mthnew(a);
                componentname.setData(LocationClient._mthlong(a));
                LocationClient._mthchar(a).send(componentname);
                LocationClient._mthif(a, true);
                if (LocationClient._mthelse(a) != null)
                {
                    if (!LocationClient._mthif(a).booleanValue());
                    LocationClient._mthbyte(a).obtainMessage(4).sendToTarget();
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname)
            {
                return;
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        LocationClient._mthif(a, null);
        LocationClient._mthif(a, false);
    }

    (LocationClient locationclient)
    {
        a = locationclient;
        super();
    }
}
