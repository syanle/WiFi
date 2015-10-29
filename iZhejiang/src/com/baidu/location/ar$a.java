// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ar, ab, ae

private class <init> extends BroadcastReceiver
{

    final ar a;

    public void onReceive(Context context, Intent intent)
    {
        if (context != null && intent.getAction().equals("android.net.wifi.SCAN_RESULTS"))
        {
            ar._mthif(a, System.currentTimeMillis() / 1000L);
            ar._mthif(a);
            ab.bj().obtainMessage(41).sendToTarget();
            if (ae.bp().bs())
            {
                ae.bp().g1.obtainMessage(41).sendToTarget();
                return;
            }
        }
    }

    private tReceiver(ar ar1)
    {
        a = ar1;
        super();
    }

    tReceiver(ar ar1, tReceiver treceiver)
    {
        this(ar1);
    }
}
