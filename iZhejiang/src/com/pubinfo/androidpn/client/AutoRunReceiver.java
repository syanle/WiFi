// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.androidpn.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import org.androidpn.client.LogUtil;
import org.androidpn.client.ServiceManager;

public class AutoRunReceiver extends BroadcastReceiver
{

    private static final String LOG_TAG = LogUtil.makeLogTag(com/pubinfo/androidpn/client/AutoRunReceiver);

    public AutoRunReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction()))
        {
            Log.d(LOG_TAG, "action_boot_completed");
            context = ServiceManager.getInstance(context);
            context.setNotificationIcon(com.iwifi.sdk.R.drawable.iwifi_logo2);
            context.startService();
        }
    }

}
