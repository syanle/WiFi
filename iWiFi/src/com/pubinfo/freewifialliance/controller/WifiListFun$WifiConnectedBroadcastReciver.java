// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Handler;

// Referenced classes of package com.pubinfo.freewifialliance.controller:
//            WifiListFun

public class this._cls0 extends BroadcastReceiver
{

    final WifiListFun this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (isClicked && "android.net.wifi.STATE_CHANGE".equals(intent.getAction()))
        {
            context = intent.getParcelableExtra("networkInfo");
            if (context != null)
            {
                boolean flag;
                if (((NetworkInfo)context).getState() == android.net.Clicked)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    handler.removeMessages(0);
                    handler.sendEmptyMessage(2);
                    isClicked = false;
                }
            }
        }
    }

    public ()
    {
        this$0 = WifiListFun.this;
        super();
    }
}
