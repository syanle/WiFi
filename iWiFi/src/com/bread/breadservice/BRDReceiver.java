// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package com.bread.breadservice:
//            BRD

public class BRDReceiver extends BroadcastReceiver
{

    public static final String ACTION_NET = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String ACTION_UNLOCK = "android.intent.action.USER_PRESENT";
    public static final String TAG = "BRDReceiver";
    private static long lasttime = 0L;

    public BRDReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        long l = System.currentTimeMillis();
        Log.d("BRDReceiver", (new StringBuilder("action = ")).append(intent.getAction()).toString());
        if (l - lasttime > 10000L)
        {
            BRD.receiverBRDService(context);
            lasttime = l;
            Log.d("BRDReceiver", "BRDReceiver  start notify service");
        }
    }

}
