// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.iwifi.sdk.data.SsidList;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.GlobaleAuthenticationRequestCallback;
import com.iwifi.sdk.protocol.UpdateSsidListInterface;
import com.iwifi.sdk.protocol.impl.UpdateSsidListConn_iWiFi_20;
import com.pubinfo.freewifialliance.view.WelcomePage;
import com.pubinfo.wifi_core.AppBaseActivity;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.json.JSONObject;

public abstract class WifiListFun extends AppBaseActivity
    implements UpdateSsidListInterface, GlobaleAuthenticationRequestCallback
{
    public class WifiConnectedBroadcastReciver extends BroadcastReceiver
    {

        final WifiListFun this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (isClicked && "android.net.wifi.STATE_CHANGE".equals(intent.getAction()))
            {
                context = intent.getParcelableExtra("networkInfo");
                if (context != null)
                {
                    boolean flag;
                    if (((NetworkInfo)context).getState() == android.net.NetworkInfo.State.CONNECTED)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if (flag)
                    {
                        handler.removeMessages(0);
                        handler.sendEmptyMessage(2);
                        isClicked = false;
                    }
                }
            }
        }

        public WifiConnectedBroadcastReciver()
        {
            this$0 = WifiListFun.this;
            super();
        }
    }


    private static List tianyiWifi = new ArrayList();
    public String ac_name;
    public String appauth_type;
    final Calendar c = Calendar.getInstance();
    String data;
    public String dev_id;
    public Handler handler;
    private final BroadcastReceiver homePressReceiver = new BroadcastReceiver() {

        final String SYSTEM_DIALOG_REASON_HOME_KEY = "homekey";
        final String SYSTEM_DIALOG_REASON_KEY = "reason";
        final WifiListFun this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS"))
            {
                context = intent.getStringExtra("reason");
                if (context != null && context.equals("homekey"))
                {
                    finish();
                }
            }
        }

            
            {
                this$0 = WifiListFun.this;
                super();
            }
    };
    boolean isClicked;
    public String logoffUrl;
    public String message;
    public String platform_code;
    public String portal_url;
    public String result;
    private List results;
    public String third_token;
    public String token;
    WifiConnectedBroadcastReciver wifiConnectedBroadcastReciver;
    private WifiManager wifiManager;
    private List wificonf;

    public WifiListFun()
    {
        isClicked = false;
        data = (new StringBuilder(String.valueOf(c.get(1)))).append("-").append(c.get(2) + 1).append("-").append(c.get(5)).toString();
        handler = new Handler() {

            final WifiListFun this$0;

            public void handleMessage(Message message1)
            {
                switch (message1.what)
                {
                default:
                    return;

                case 0: // '\0'
                    showMsgToast("\u8FDE\u63A5\u8D85\u65F6");
                    wifiManager.disableNetwork(wifiManager.getConnectionInfo().getNetworkId());
                    wifiManager.disconnect();
                    hideLoadingView();
                    return;

                case 1: // '\001'
                    setWifiListView();
                    return;

                case 2: // '\002'
                    connToWifi();
                    return;

                case 3: // '\003'
                    showMsgToast("ping\u8FDE\u63A5\u6210\u529F");
                    return;

                case 4: // '\004'
                    showMsgToast("ping\u8FDE\u63A5\u5931\u8D25");
                    return;

                case 5: // '\005'
                    hideLoadingView();
                    startActivity(new Intent(WifiListFun.this, com/pubinfo/freewifialliance/view/WelcomePage));
                    finish();
                    return;

                case 6: // '\006'
                    showMsgToast("\u7F51\u7EDC\u4E0D\u53EF\u7528");
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

    public abstract void connToWifi();

    public abstract void connWifiBy();

    public abstract void getConfirmFail();

    public abstract void getConfirmSuccess(String s);

    public String getConnectedWifiSSId()
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

    public void getWiFi()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) goto _L2; else goto _L1
_L1:
        tianyiWifi.clear();
        wifiManager.startScan();
        wificonf = wifiManager.getConfiguredNetworks();
        results = wifiManager.getScanResults();
        if (results == null) goto _L4; else goto _L3
_L3:
        int i = 0;
_L8:
        if (i < results.size()) goto _L5; else goto _L4
_L4:
        handler.sendEmptyMessage(1);
_L2:
        return;
_L5:
        if (!isWifiAlliance(((ScanResult)results.get(i)).SSID)) goto _L7; else goto _L6
_L6:
        int j;
        boolean flag;
        flag = false;
        j = 0;
_L9:
        if (j >= tianyiWifi.size())
        {
            j = ((flag) ? 1 : 0);
        } else
        {
label0:
            {
                if (!((ScanResult)results.get(i)).SSID.equals(((ScanResult)tianyiWifi.get(j)).SSID))
                {
                    break label0;
                }
                j = 1;
            }
        }
        if (j == 0)
        {
            tianyiWifi.add((ScanResult)results.get(i));
        }
_L7:
        i++;
          goto _L8
        j++;
          goto _L9
    }

    public abstract void hideLoadingView();

    public boolean isClicked()
    {
        return isClicked;
    }

    public void onAuthenticationReqFail(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder(" onAuthenticationReqFail : ")).append(s).toString());
        getConfirmFail();
    }

    public void onAuthenticationReqSucc(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder(" onAuthenticationReqSucc : ")).append(s).toString());
        try
        {
            s = GetCodeResultParser.GetJsonObject(s);
            result = s.getString("result");
            message = s.getString("message");
            appauth_type = s.getString("appauth_type");
            logoffUrl = s.getString("logoffUrl");
            token = s.getString("token");
            portal_url = s.getString("portal_url");
            platform_code = s.getString("platform_code");
            third_token = s.getString("third_token");
            dev_id = s.getString("dev_id");
            ac_name = s.getString("ac_name");
            if (!message.equalsIgnoreCase("Already onLine"))
            {
                s = getSharedPreferences("LOGOFF", 0).edit();
                s.putString("result", result);
                s.putString("message", message);
                s.putString("appauth_type", appauth_type);
                s.putString("logoffUrl", logoffUrl);
                s.putString("token", token);
                s.putString("portal_url", portal_url);
                s.putString("platform_code", platform_code);
                s.putString("third_token", third_token);
                s.putString("dev_id", dev_id);
                s.putString("ac_name", ac_name);
                s.commit();
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        getConfirmSuccess(dev_id);
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        unregisterReceiver(wifiConnectedBroadcastReciver);
        unregisterReceiver(homePressReceiver);
        if (tianyiWifi.size() > 0)
        {
            Intent intent = new Intent();
            intent.setAction("com.pubinfo.freewifialliance.service.WifiConnService.FreshViewBroadcastReceiver");
            sendBroadcast(intent);
        }
    }

    protected void onResume()
    {
        super.onResume();
        wifiConnectedBroadcastReciver = new WifiConnectedBroadcastReciver();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.wifi.STATE_CHANGE");
        registerReceiver(wifiConnectedBroadcastReciver, intentfilter);
        intentfilter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        registerReceiver(homePressReceiver, intentfilter);
    }

    public void setClicked(boolean flag)
    {
        isClicked = flag;
    }

    public abstract void setWifiListView();

    public abstract void showLoadingView();

    public void updateSsidErr(String s)
    {
    }

    public void updateSsidList()
    {
        new UpdateSsidListConn_iWiFi_20(this);
    }

    public void updateSsidListSucc(SsidList ssidlist)
    {
        Object obj = getSharedPreferences("ssidlist", 0);
        if (!((SharedPreferences) (obj)).getString("version", "").trim().equals(ssidlist.getVersion().trim()))
        {
            obj = ((SharedPreferences) (obj)).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("data", ssidlist.getData());
            ((android.content.SharedPreferences.Editor) (obj)).putString("version", ssidlist.getVersion());
            ((android.content.SharedPreferences.Editor) (obj)).putString("time", data);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
        }
    }



}
