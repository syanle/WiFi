// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cat.impl.DoApInfoConn;
import com.cat.impl.DoCommentConn;
import com.cat.protocol.DoApInfoInterface;
import com.cat.protocol.DoCommentInterface;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.GlobaleAuthenticationRequestCallback;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;

public abstract class ConnectFun extends ThinkAndroidBaseActivity
    implements GlobaleAuthenticationRequestCallback, DoApInfoInterface, DoCommentInterface
{

    public String ac_name;
    public String accountid;
    public String appauth_type;
    public Button btn_commit;
    public String dev_id;
    public Handler handler;
    public ImageView iv_tag;
    public String logoffUrl;
    public String message;
    public String platform_code;
    public String portal_url;
    public String result;
    public String third_token;
    public String token;
    public TextView tv_msg;
    private WifiManager wifiManager;

    public ConnectFun()
    {
        handler = new Handler() {

            final ConnectFun this$0;

            public void handleMessage(Message message1)
            {
                switch (message1.what)
                {
                case 1: // '\001'
                default:
                    return;

                case 0: // '\0'
                    Object obj = getSharedPreferences("ConnectActivity", 0);
                    message1 = ((SharedPreferences) (obj)).getString("ssidclick", "");
                    obj = ((SharedPreferences) (obj)).getString("ssidconnect", "");
                    if ((new StringBuilder("\"")).append(message1).append("\"").toString().equals(obj) || message1.equals(obj))
                    {
                        handler.sendEmptyMessage(2);
                        return;
                    } else
                    {
                        connTimeOut();
                        return;
                    }

                case 2: // '\002'
                    connToWifi();
                    return;
                }
            }

            
            {
                this$0 = ConnectFun.this;
                super();
            }
        };
    }

    public abstract void connTimeOut();

    public abstract void connToWifi();

    protected void getApInfo(String s, String s1, Context context)
    {
        diffTime();
        new DoApInfoConn(s, s1, this, context);
    }

    protected void getComment(String s, String s1, String s2, String s3, Context context)
    {
        diffTime();
        new DoCommentConn(s, s1, s2, s3, this, context);
    }

    public abstract void getConfirmFail();

    public abstract void getConfirmSuccess(String s, String s1);

    public String getConnectedWifiMac()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getBSSID();
        } else
        {
            return "";
        }
    }

    public String getStandardTime(long l)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("HH:mm:ss", Locale.getDefault());
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT+0"));
        Date date = new Date(1000L * l);
        simpledateformat.format(date);
        return simpledateformat.format(date);
    }

    public void onAuthenticationReqFail(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder(" onAuthenticationReqFail : ")).append(s).toString());
        getConfirmFail();
    }

    public void onAuthenticationReqSucc(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder(" onAuthenticationReqSucc : ")).append(s).toString());
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
        accountid = s.getString("accountid");
        if (!message.equalsIgnoreCase("Already onLine")) goto _L2; else goto _L1
_L1:
        s = getSharedPreferences("LOGOFF", 0);
        dev_id = s.getString(dev_id, "");
        accountid = s.getString(accountid, "");
_L4:
        getConfirmSuccess(dev_id, accountid);
        return;
_L2:
        try
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
            s.putString("accountid", accountid);
            s.commit();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public abstract void setStatus(int i, String s, String s1, int j, String s2, String s3);
}
