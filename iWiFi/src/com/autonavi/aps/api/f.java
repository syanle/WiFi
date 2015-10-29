// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import java.util.List;

// Referenced classes of package com.autonavi.aps.api:
//            APS

final class f extends BroadcastReceiver
{

    f(APS aps)
    {
        this(aps, (byte)0);
    }

    private f(APS aps, byte byte0)
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equalsIgnoreCase("android.net.wifi.SCAN_RESULTS"))
        {
            APS.a(APS.a().getScanResults());
            return;
        }
        if (intent.getAction().equalsIgnoreCase("android.intent.action.TIME_SET") || intent.getAction().equalsIgnoreCase("android.intent.action.TIMEZONE_CHANGED"))
        {
            APS.a(0L);
            return;
        }
        switch (intent.getIntExtra("wifi_state", 4))
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            return;

        case 0: // '\0'
            APS.b().clear();
            APS.a(null);
            return;

        case 1: // '\001'
            APS.b().clear();
            APS.a(null);
            return;

        case 4: // '\004'
            APS.b().clear();
            break;
        }
        APS.a(null);
    }
}
