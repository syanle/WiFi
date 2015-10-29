// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.pubinfo.izhejiang.controller:
//            WifiListFun

class this._cls0 extends Handler
{

    final WifiListFun this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 7: // '\007'
        case 8: // '\b'
        default:
            return;

        case 0: // '\0'
            wifi_isClicked = true;
            WifiListFun.access$0(WifiListFun.this).disableNetwork(WifiListFun.access$0(WifiListFun.this).getConnectionInfo().getNetworkId());
            WifiListFun.access$0(WifiListFun.this).disconnect();
            return;

        case 1: // '\001'
            setWifiListView();
            return;

        case 2: // '\002'
            showWifiBtn();
            return;

        case 6: // '\006'
            wifi_isClicked = true;
            return;

        case 9: // '\t'
            getWiFi();
            break;
        }
    }

    ()
    {
        this$0 = WifiListFun.this;
        super();
    }
}
