// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.app.Service;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import com.pubinfo.freewifialliance.protocol.HeartHitInterface;
import com.pubinfo.freewifialliance.protocol.impl.HeartHitConn;
import com.pubinfo.wifi_core.core.data.ComData;
import com.pubinfo.wifi_core.core.database.Database;
import com.pubinfo.wifi_core.core.database.WifiInfoData;
import com.pubinfo.wifi_core.core.util.FileManager;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class WifiHitService extends Service
    implements HeartHitInterface
{

    private String ssid;
    private Timer timer;
    TimerTask timerTask;
    private WifiManager wifiManager;

    public WifiHitService()
    {
        timer = new Timer();
        timerTask = new TimerTask() {

            final WifiHitService this$0;

            public void run()
            {
                ssid = wifiManager.getConnectionInfo().getSSID();
                Database.getInstance(WifiHitService.this).selectUserRow();
                if (ssid == null || ssid == "" || ComData.getInstance().getWifiInfoData() == null) goto _L2; else goto _L1
_L1:
                int i = 0;
_L5:
                if (i < ComData.getInstance().getWifiInfoData().size()) goto _L3; else goto _L2
_L2:
                return;
_L3:
                if (checkWifiType(ssid).equals(((WifiInfoData)ComData.getInstance().getWifiInfoData().get(i)).getType()))
                {
                    WifiInfoData wifiinfodata = (WifiInfoData)ComData.getInstance().getWifiInfoData().get(i);
                    new HeartHitConn(wifiinfodata.getPhone(), wifiinfodata.getKey(), FileManager.getMacAddress(WifiHitService.this), 1, FileManager.getDevId(WifiHitService.this), ssid, WifiHitService.this);
                    return;
                }
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = WifiHitService.this;
                super();
            }
        };
    }

    public void HeartHitErr()
    {
    }

    public void HeartHitSucc()
    {
    }

    public String checkWifiType(String s)
    {
        if (s.toLowerCase().equals("chinanet"))
        {
            return "ChinaNet";
        } else
        {
            return "hichinaWifi";
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        Database.getInstance(this).selectUserRow();
        timer.schedule(timerTask, 0L, 0x1b7740L);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return super.onStartCommand(intent, i, j);
    }



}
