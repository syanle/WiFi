// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.DhcpInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.format.Formatter;
import android.util.Log;
import com.iwifi.sdk.chinanet.WifiAuthenticationProcedure;
import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.CheckCodeAuthInterface;
import com.iwifi.sdk.protocol.DoSmsAuthInterface;
import com.iwifi.sdk.protocol.GetPortalUrlCallback;
import com.iwifi.sdk.protocol.GlobaleAuthenticationRequestCallback;
import com.iwifi.sdk.protocol.impl.CheckCodeAuthConn_iWiFi_20;
import com.iwifi.sdk.protocol.impl.DoSmsAuthConn_iWiFi_20;
import com.iwifi.sdk.protocol.impl.GetPortalURL;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import com.pubinfo.freewifialliance.view.AESEN;
import com.pubinfo.wifi_core.AppBaseActivity;
import com.pubinfo.wifi_core.core.database.Database;
import java.net.URLEncoder;
import org.json.JSONObject;

public abstract class LoginFun extends AppBaseActivity
    implements DoSmsAuthInterface, CheckCodeAuthInterface, GetPortalUrlCallback, GlobaleAuthenticationRequestCallback
{

    private static final String AESTYPE = "AES/CBC/NoPadding";
    protected static String type;
    String ac_name;
    AESEN aes;
    String appauth_type;
    String dev_id;
    String final_dev_id;
    String logoffUrl;
    private CodeResult mCodeResult;
    private String mPhoneNum;
    String mac;
    String message;
    protected String num;
    String platform_code;
    String portal_url;
    String result;
    String save_portal_url;
    protected String ssid;
    String third_token;
    String token;
    protected WifiAuthenticationProcedure wifiListPage;
    private WifiManager wifiMgr;

    public LoginFun()
    {
        aes = new AESEN();
        wifiMgr = null;
        mac = null;
        save_portal_url = "";
    }

    private String getDhcpGatewayAddr()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getSystemService("wifi");
        }
        DhcpInfo dhcpinfo = wifiMgr.getDhcpInfo();
        Log.v("iWifiSDKDemo", (new StringBuilder("Gateway address : ")).append(Formatter.formatIpAddress(dhcpinfo.gateway)).toString());
        return Formatter.formatIpAddress(dhcpinfo.gateway);
    }

    private String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void checkCodeAuthSucc(String s)
    {
        Database.getInstance(context).insertUser("", mPhoneNum, "", "", "", "", "", "");
        type = getIntent().getStringExtra("type");
        if (type != null && type.equals("log"))
        {
            finish();
            return;
        }
        try
        {
            getCheckCodeSuccess();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return;
    }

    protected void doConnectNet(String s, String s1)
    {
        mPhoneNum = s;
        wifiMgr = (WifiManager)getSystemService("wifi");
        mac = getLocalMacAddress();
        new CheckCodeAuthConn_iWiFi_20(mPhoneNum, s1, "android", mac, final_dev_id, this);
    }

    public void doSmsAuthSucc(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder("doSmsAuthSucc:  ")).append(s).toString());
        getSmsAuthSuccess();
    }

    public abstract void getCheckCodeSuccess();

    public abstract void getConfirmFail();

    public abstract void getConfirmSuccess(String s);

    public void getPortalUrlCallback(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder("getDeviceInfosCallback:  ")).append(s).toString());
        s = GetCodeResultParser.GetCodeResultList(s, "result", "message", "portal_url");
        if (s.getResult().contains("OK"))
        {
            save_portal_url = URLEncoder.encode(s.getData());
            final_dev_id = SDKCommonMotheds.getDevidOrPltCodeFromUrl(s.getData(), "dev_id=");
            if (final_dev_id == null)
            {
                final_dev_id = "";
            }
            mac = getLocalMacAddress();
            new DoSmsAuthConn_iWiFi_20(num, final_dev_id, mac, save_portal_url, this);
            return;
        }
        try
        {
            mac = getLocalMacAddress();
            new DoSmsAuthConn_iWiFi_20(num, "", mac, "", this);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return;
    }

    public abstract void getSmsAuthSuccess();

    protected void getSmsCode(String s)
    {
        num = s;
        new GetPortalURL(this);
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
            platform_code = s.getString("platform_code");
            logoffUrl = s.getString("logoffUrl");
            token = s.getString("token");
            portal_url = s.getString("portal_url");
            third_token = s.getString("third_token");
            dev_id = s.getString("dev_id");
            ac_name = s.getString("ac_name");
            if (!message.equalsIgnoreCase("Already onLine"))
            {
                s = getSharedPreferences("LOGOFF", 0).edit();
                s.putString("result", result);
                s.putString("message", message);
                s.putString("appauth_type", appauth_type);
                s.putString("platform_code", platform_code);
                s.putString("logoffUrl", logoffUrl);
                s.putString("token", token);
                s.putString("portal_url", portal_url);
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
}
