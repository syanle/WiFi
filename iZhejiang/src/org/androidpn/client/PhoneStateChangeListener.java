// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.telephony.PhoneStateListener;
import android.util.Log;
import com.githang.android.apnbb.BroadcastUtil;

// Referenced classes of package org.androidpn.client:
//            LogUtil, NotificationService

public class PhoneStateChangeListener extends PhoneStateListener
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/PhoneStateChangeListener);
    private final NotificationService notificationService;

    public PhoneStateChangeListener(NotificationService notificationservice)
    {
        notificationService = notificationservice;
    }

    private String getState(int i)
    {
        switch (i)
        {
        default:
            return "DATA_<UNKNOWN>";

        case 0: // '\0'
            return "DATA_DISCONNECTED";

        case 1: // '\001'
            return "DATA_CONNECTING";

        case 2: // '\002'
            return "DATA_CONNECTED";

        case 3: // '\003'
            return "DATA_SUSPENDED";
        }
    }

    public void onDataConnectionStateChanged(int i)
    {
        super.onDataConnectionStateChanged(i);
        Log.d(LOGTAG, "onDataConnectionStateChanged()...");
        Log.d(LOGTAG, (new StringBuilder("Data Connection State = ")).append(getState(i)).toString());
        if (i == 2)
        {
            BroadcastUtil.sendBroadcast(notificationService, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT");
        }
    }

}
