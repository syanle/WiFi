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
        isRunning = true;
        showMsgToast("\u81EA\u52A8\u641C\u7D22\u5F00\u542F");
        handler.postDelayed(WifiConnService.access$2(WifiConnService.this), 0L);
    }

    public ()
    {
        this$0 = WifiConnService.this;
        super();
    }
}
