// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package net.youmi.android.spot:
//            SpotManager

class l extends BroadcastReceiver
{

    final SpotManager a;

    l(SpotManager spotmanager)
    {
        a = spotmanager;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        context = intent.getAction();
        if ("android.intent.action.SCREEN_ON".equals(context))
        {
            SpotManager.a(a, true);
        } else
        if ("android.intent.action.SCREEN_OFF".equals(context))
        {
            SpotManager.a(a, false);
            return;
        }
    }
}
