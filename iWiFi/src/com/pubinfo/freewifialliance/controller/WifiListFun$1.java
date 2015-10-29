// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import com.pubinfo.freewifialliance.view.WelcomePage;

// Referenced classes of package com.pubinfo.freewifialliance.controller:
//            WifiListFun

class this._cls0 extends Handler
{

    final WifiListFun this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            WifiListFun.access$0(WifiListFun.this, "\u8FDE\u63A5\u8D85\u65F6");
            WifiListFun.access$1(WifiListFun.this).disableNetwork(WifiListFun.access$1(WifiListFun.this).getConnectionInfo().getNetworkId());
            WifiListFun.access$1(WifiListFun.this).disconnect();
            hideLoadingView();
            return;

        case 1: // '\001'
            setWifiListView();
            return;

        case 2: // '\002'
            connToWifi();
            return;

        case 3: // '\003'
            WifiListFun.access$0(WifiListFun.this, "ping\u8FDE\u63A5\u6210\u529F");
            return;

        case 4: // '\004'
            WifiListFun.access$0(WifiListFun.this, "ping\u8FDE\u63A5\u5931\u8D25");
            return;

        case 5: // '\005'
            hideLoadingView();
            startActivity(new Intent(WifiListFun.this, com/pubinfo/freewifialliance/view/WelcomePage));
            finish();
            return;

        case 6: // '\006'
            WifiListFun.access$0(WifiListFun.this, "\u7F51\u7EDC\u4E0D\u53EF\u7528");
            return;

        case 7: // '\007'
            hideLoadingView();
            return;

        case 8: // '\b'
            showLoadingView();
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
