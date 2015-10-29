// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.pubinfo.freewifialliance.controller:
//            WifiListFun

class this._cls0 extends BroadcastReceiver
{

    final String SYSTEM_DIALOG_REASON_HOME_KEY = "homekey";
    final String SYSTEM_DIALOG_REASON_KEY = "reason";
    final WifiListFun this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS"))
        {
            context = intent.getStringExtra("reason");
            if (context != null && context.equals("homekey"))
            {
                finish();
            }
        }
    }

    ()
    {
        this$0 = WifiListFun.this;
        super();
    }
}
