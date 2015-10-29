// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.cat.impl.DoSsidInfoConn;
import com.cat.list.XListView;
import com.cat.protocol.DoSsidInfoInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseFragment;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public abstract class WifiListFun extends ThinkAndroidBaseFragment
    implements DoSsidInfoInterface
{

    private static List tianyiWifi = new ArrayList();
    public String ac_name;
    public String accountid;
    public String appauth_type;
    final Calendar c = Calendar.getInstance();
    String data;
    public String dev_id;
    public Handler handler;
    boolean isClicked;
    protected ImageView iv_pageInnerLoading;
    protected LinearLayout ll_pageInnerLoading;
    public String logoffUrl;
    public String message;
    protected AnimationDrawable msInnerLoadingAnim;
    public String platform_code;
    public String portal_url;
    public String result;
    private List results;
    public String third_token;
    public String token;
    protected XListView wifiLView;
    private WifiManager wifiManager;
    public boolean wifi_isClicked;
    private List wificonf;

    public WifiListFun()
    {
        isClicked = false;
        wifi_isClicked = true;
        ll_pageInnerLoading = null;
        iv_pageInnerLoading = null;
        msInnerLoadingAnim = null;
        data = (new StringBuilder(String.valueOf(c.get(1)))).append("-").append(c.get(2) + 1).append("-").append(c.get(5)).toString();
        handler = new Handler() {

            final WifiListFun this$0;

            public void handleMessage(Message message1)
            {
                switch (message1.what)
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
                    wifiManager.disableNetwork(wifiManager.getConnectionInfo().getNetworkId());
                    wifiManager.disconnect();
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

            
            {
                this$0 = WifiListFun.this;
                super();
            }
        };
    }

    public static List getTianyiWifi()
    {
        return tianyiWifi;
    }

    public String getConnectedSSID()
    {
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID();
        } else
        {
            return "";
        }
    }

    public String getConnectedWifiMac()
    {
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getBSSID();
        } else
        {
            return "";
        }
    }

    protected void getSsidInfo(String s, String s1, String s2, String s3, Context context)
    {
        diffTime();
        new DoSsidInfoConn(s, s1, s2, s3, this, context);
    }

    public void getWiFi()
    {
        wifiManager = (WifiManager)getActivity().getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) goto _L2; else goto _L1
_L1:
        tianyiWifi.clear();
        wifiManager.startScan();
        wificonf = wifiManager.getConfiguredNetworks();
        results = wifiManager.getScanResults();
        if (results == null) goto _L4; else goto _L3
_L3:
        int i = 0;
_L6:
        if (i < results.size()) goto _L5; else goto _L4
_L4:
        handler.sendEmptyMessage(1);
        return;
_L5:
        tianyiWifi.add((ScanResult)results.get(i));
        i++;
        if (true) goto _L6; else goto _L2
_L2:
        hideLoading();
        showMsgToast(getString(0x7f06002f));
        return;
    }

    protected void hideLoading()
    {
        wifiLView.setVisibility(0);
        if (ll_pageInnerLoading.getVisibility() == 0)
        {
            ll_pageInnerLoading.setVisibility(8);
        }
    }

    public abstract void setWifiListView();

    protected void showLoading()
    {
        wifiLView.setVisibility(8);
        ll_pageInnerLoading.setVisibility(0);
        if (msInnerLoadingAnim.isRunning())
        {
            msInnerLoadingAnim.stop();
            msInnerLoadingAnim.start();
            return;
        } else
        {
            msInnerLoadingAnim.start();
            return;
        }
    }

    protected void showMsgToast(String s)
    {
        Toast.makeText(getActivity(), s, 0).show();
    }

    public abstract void showWifiBtn();


}
