// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.githang.android.apnbb.NetworkUtil;

// Referenced classes of package org.androidpn.client:
//            LogUtil, NotificationService

public class ConnectivityReceiver extends BroadcastReceiver
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/ConnectivityReceiver);
    private NotificationService notificationService;

    public ConnectivityReceiver(NotificationService notificationservice)
    {
        notificationService = notificationservice;
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.d(LOGTAG, "ConnectivityReceiver.onReceive()...");
        intent = intent.getAction();
        Log.d(LOGTAG, (new StringBuilder("action=")).append(intent).toString());
        if (NetworkUtil.isNetworkAvaible(context))
        {
            Log.i(LOGTAG, "Network connected");
            notificationService.connect();
            return;
        } else
        {
            Log.e(LOGTAG, "Network unavailable");
            notificationService.disconnect();
            return;
        }
    }

}
