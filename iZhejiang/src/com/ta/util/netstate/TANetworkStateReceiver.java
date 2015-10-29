// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.netstate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ta.util.TALogger;
import java.util.ArrayList;

// Referenced classes of package com.ta.util.netstate:
//            TANetChangeObserver, TANetWorkUtil

public class TANetworkStateReceiver extends BroadcastReceiver
{

    private static final String ANDROID_NET_CHANGE_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String TA_ANDROID_NET_CHANGE_ACTION = "ta.android.net.conn.CONNECTIVITY_CHANGE";
    private static ArrayList netChangeObserverArrayList = new ArrayList();
    private static TANetWorkUtil.netType netType;
    private static Boolean networkAvailable = Boolean.valueOf(false);
    private static BroadcastReceiver receiver;

    public TANetworkStateReceiver()
    {
    }

    public static void checkNetworkState(Context context)
    {
        Intent intent = new Intent();
        intent.setAction("ta.android.net.conn.CONNECTIVITY_CHANGE");
        context.sendBroadcast(intent);
    }

    public static TANetWorkUtil.netType getAPNType()
    {
        return netType;
    }

    private static BroadcastReceiver getReceiver()
    {
        if (receiver == null)
        {
            receiver = new TANetworkStateReceiver();
        }
        return receiver;
    }

    public static Boolean isNetworkAvailable()
    {
        return networkAvailable;
    }

    private void notifyObserver()
    {
        int i = 0;
        do
        {
            if (i >= netChangeObserverArrayList.size())
            {
                return;
            }
            TANetChangeObserver tanetchangeobserver = (TANetChangeObserver)netChangeObserverArrayList.get(i);
            if (tanetchangeobserver != null)
            {
                if (isNetworkAvailable().booleanValue())
                {
                    tanetchangeobserver.onConnect(netType);
                } else
                {
                    tanetchangeobserver.onDisConnect();
                }
            }
            i++;
        } while (true);
    }

    public static void registerNetworkStateReceiver(Context context)
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("ta.android.net.conn.CONNECTIVITY_CHANGE");
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.getApplicationContext().registerReceiver(getReceiver(), intentfilter);
    }

    public static void registerObserver(TANetChangeObserver tanetchangeobserver)
    {
        if (netChangeObserverArrayList == null)
        {
            netChangeObserverArrayList = new ArrayList();
        }
        netChangeObserverArrayList.add(tanetchangeobserver);
    }

    public static void removeRegisterObserver(TANetChangeObserver tanetchangeobserver)
    {
        if (netChangeObserverArrayList != null)
        {
            netChangeObserverArrayList.remove(tanetchangeobserver);
        }
    }

    public static void unRegisterNetworkStateReceiver(Context context)
    {
        if (receiver == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        context.getApplicationContext().unregisterReceiver(receiver);
        return;
        context;
        TALogger.d("TANetworkStateReceiver", context.getMessage());
        return;
    }

    public void onReceive(Context context, Intent intent)
    {
        receiver = this;
        if (intent.getAction().equalsIgnoreCase("android.net.conn.CONNECTIVITY_CHANGE") || intent.getAction().equalsIgnoreCase("ta.android.net.conn.CONNECTIVITY_CHANGE"))
        {
            TALogger.i(this, "\u7F51\u7EDC\u72B6\u6001\u6539\u53D8.");
            if (!TANetWorkUtil.isNetworkAvailable(context))
            {
                TALogger.i(this, "\u6CA1\u6709\u7F51\u7EDC\u8FDE\u63A5.");
                networkAvailable = Boolean.valueOf(false);
            } else
            {
                TALogger.i(this, "\u7F51\u7EDC\u8FDE\u63A5\u6210\u529F.");
                netType = TANetWorkUtil.getAPNType(context);
                networkAvailable = Boolean.valueOf(true);
            }
            notifyObserver();
        }
    }

}
