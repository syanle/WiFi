// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Looper;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

public class this._cls0 extends Thread
{

    final ConnectActivity this$0;

    public void run()
    {
        Looper.prepare();
        if (!(new StringBuilder("\"")).append(ssidclick).append("\"").toString().equals(ssidconnect) && !ssidclick.equals(ssidconnect)) goto _L2; else goto _L1
_L1:
        connWifiBy();
_L4:
        Looper.loop();
        return;
_L2:
        try
        {
            changeWifiBy();
        }
        catch (Exception exception) { }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
