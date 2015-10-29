// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            GeofenceClient

private class <init> extends Handler
{

    final GeofenceClient a;

    public void handleMessage(Message message)
    {
        Bundle bundle = message.getData();
        message.what;
        JVM INSTR lookupswitch 3: default 44
    //                   1: 65
    //                   208: 45
    //                   209: 73;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        if (bundle != null)
        {
            message = bundle.getString("geofence_id");
            GeofenceClient._mthdo(a, message);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        GeofenceClient._mthdo(a);
        return;
_L4:
        if (bundle != null)
        {
            message = bundle.getString("geofence_id");
            GeofenceClient._mthif(a, message);
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    private (GeofenceClient geofenceclient)
    {
        a = geofenceclient;
        super();
    }

    a(GeofenceClient geofenceclient, a a1)
    {
        this(geofenceclient);
    }
}
