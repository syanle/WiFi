// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.net.wifi.WifiManager;

// Referenced classes of package com.autonavi.aps.api:
//            APSLENOVODUALCARD

final class h extends Thread
{

    h()
    {
    }

    public final void run()
    {
        APSLENOVODUALCARD.a().startScan();
    }
}
