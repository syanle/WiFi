// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.pubinfo.freewifialliance.protocol.impl.HeartHitConn;
import com.pubinfo.wifi_core.core.data.ComData;
import com.pubinfo.wifi_core.core.database.Database;
import com.pubinfo.wifi_core.core.database.WifiInfoData;
import com.pubinfo.wifi_core.core.util.FileManager;
import java.util.List;
import java.util.TimerTask;

// Referenced classes of package com.pubinfo.freewifialliance.service:
//            WifiHitService

class this._cls0 extends TimerTask
{

    final WifiHitService this$0;

    public void run()
    {
        WifiHitService.access$1(WifiHitService.this, WifiHitService.access$0(WifiHitService.this).getConnectionInfo().getSSID());
        Database.getInstance(WifiHitService.this).selectUserRow();
        if (WifiHitService.access$2(WifiHitService.this) == null || WifiHitService.access$2(WifiHitService.this) == "" || ComData.getInstance().getWifiInfoData() == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < ComData.getInstance().getWifiInfoData().size()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        if (checkWifiType(WifiHitService.access$2(WifiHitService.this)).equals(((WifiInfoData)ComData.getInstance().getWifiInfoData().get(i)).getType()))
        {
            WifiInfoData wifiinfodata = (WifiInfoData)ComData.getInstance().getWifiInfoData().get(i);
            new HeartHitConn(wifiinfodata.getPhone(), wifiinfodata.getKey(), FileManager.getMacAddress(WifiHitService.this), 1, FileManager.getDevId(WifiHitService.this), WifiHitService.access$2(WifiHitService.this), WifiHitService.this);
            return;
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    n()
    {
        this$0 = WifiHitService.this;
        super();
    }
}
