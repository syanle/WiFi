// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.pubinfo.wifi_core.core.util.WifiAdmin;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WifiListPage

class val.position
    implements android.view.stPage.WifiAdapter._cls1
{

    final this._cls1 this$1;
    private final int val$position;

    public void onClick(View view)
    {
        if (!(new StringBuilder("\"")).append(((ScanResult)WifiListPage.getTianyiWifi().get(val$position)).SSID).append("\"").toString().equals(cess._mth2(this._cls1.this).getConnectedWifiSSId()) && !((ScanResult)WifiListPage.getTianyiWifi().get(val$position)).SSID.equals(cess._mth2(this._cls1.this).getConnectedWifiSSId())) goto _L2; else goto _L1
_L1:
        if (WifiListPage.access$0())
        {
            cess._mth2(this._cls1.this).arg2 = val$position;
            cess._mth2(this._cls1.this).connToWifiJugdeByRecord();
            WifiListPage.access$1(false);
        }
_L4:
        return;
_L2:
        if (!WifiListPage.access$2()) goto _L4; else goto _L3
_L3:
        WifiListPage.access$3(cess._mth2(this._cls1.this));
        cess._mth2(this._cls1.this).arg2 = val$position;
        cess._mth2(this._cls1.this).handler.sendEmptyMessageDelayed(0, 10000L);
        try
        {
            if (!cess._mth2(this._cls1.this).wifiManager.isWifiEnabled())
            {
                cess._mth2(this._cls1.this).initWifiNotEnable();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return;
        }
        view = new WifiAdmin(cess._mth2(this._cls1.this));
        view.addNetwork(view.CreateWifiInfo(((ScanResult)WifiListPage.getTianyiWifi().get(val$position)).SSID, "", 1));
        WifiListPage.access$4(cess._mth2(this._cls1.this)).setAdapter(new nit>(cess._mth2(this._cls1.this), cess._mth2(this._cls1.this), WifiListPage.getTianyiWifi(), "", 0));
        cess._mth2(this._cls1.this).setClicked(true);
        WifiListPage.access$5(cess._mth2(this._cls1.this)).setText(cess._mth2(this._cls1.this).getString(0x7f06005c));
        WifiListPage.access$6(cess._mth2(this._cls1.this)).setVisibility(0);
        WifiListPage.access$6(cess._mth2(this._cls1.this)).setText((new StringBuilder(String.valueOf(((ScanResult)WifiListPage.getTianyiWifi().get(val$position)).SSID))).append(cess._mth2(this._cls1.this).getString(0x7f06005d)).toString());
        WifiListPage.access$7(false);
        return;
    }

    ()
    {
        this$1 = final_;
        val$position = I.this;
        super();
    }
}
