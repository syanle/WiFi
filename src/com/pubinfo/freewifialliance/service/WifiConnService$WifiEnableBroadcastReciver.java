// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.pubinfo.freewifialliance.service:
//            WifiConnService

public class this._cls0 extends BroadcastReceiver
{

    final WifiConnService this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (isRunning && !WifiConnService.access$0() && "android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()))
        {
            int i = intent.getIntExtra("wifi_state", 0);
            if (i == 3)
            {
                handler.postDelayed(WifiConnService.access$2(WifiConnService.this), 0L);
            } else
            if (i == 1)
            {
                handler.sendEmptyMessage(2);
                handler.removeCallbacks(WifiConnService.access$2(WifiConnService.this));
                return;
            }
        }
    }

    public ()
    {
        this$0 = WifiConnService.this;
        super();
    }
}
