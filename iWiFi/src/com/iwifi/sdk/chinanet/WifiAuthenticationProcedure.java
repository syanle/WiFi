// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.iwifi.sdk.chinanet.wispr.IWlanAuthenRequestCallback;
import com.iwifi.sdk.chinanet.wispr.WlanRoamingAuthProtocol;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import com.iwifi.sdk.tools.Logger;

// Referenced classes of package com.iwifi.sdk.chinanet:
//            WifiAuthenticationRequestCallback, WelcomePage, WifiLogOffCallback

public class WifiAuthenticationProcedure
    implements IWlanAuthenRequestCallback
{

    protected static final String CHINANET_MD5_SUFFIX = "@www.51iwifi.com@";
    protected static final String CHINANET_USERNAME_SUFFIX = "@51iwifi.com";
    public Context ctx;
    private boolean is_webview_shown;
    private WifiLogOffCallback logoffCallback;
    private WifiAuthenticationRequestCallback requestCallback;

    public WifiAuthenticationProcedure(Context context, WifiAuthenticationRequestCallback wifiauthenticationrequestcallback, WifiLogOffCallback wifilogoffcallback)
    {
        is_webview_shown = true;
        ctx = context;
        requestCallback = wifiauthenticationrequestcallback;
        logoffCallback = wifilogoffcallback;
    }

    public void SetWebViewStatus(boolean flag)
    {
        is_webview_shown = flag;
    }

    public void doAunthenticaterRequest(String s, String s1)
    {
        (new WlanRoamingAuthProtocol()).doAunthenticaterRequest((new StringBuilder(String.valueOf(s))).append("@51iwifi.com").toString(), s1, SDKCommonMotheds.getMD5((new StringBuilder(String.valueOf(s))).append("@51iwifi.com").append(s1).append("@www.51iwifi.com@").toString()), this);
        Logger.d("iWiFiSDK|AAA Authentication|doAunthenticaterRequest", (new StringBuilder("username=")).append(s).append("&password=").append(s1).toString());
    }

    public void doLogOffRequest(String s, String s1)
    {
        (new WlanRoamingAuthProtocol()).doLogOffRequest(s1, (new StringBuilder(String.valueOf(s))).append("@51iwifi.com").toString(), this);
        Logger.d("iWiFiSDK|AAA Logoff|doLogOffRequest", (new StringBuilder("username=")).append(s).append("&LogoffUrl=").append(s1).toString());
    }

    public boolean getWebViewStatus()
    {
        return is_webview_shown;
    }

    public void onAuthenticationFailed(com.iwifi.sdk.chinanet.wispr.WlanRoamingAuthProtocol.ResultInfos resultinfos)
    {
        Log.i("WifiListPage", (new StringBuilder("Authentication failed: ")).append(resultinfos.failInfo).toString());
        resultinfos = (new StringBuilder("{\"result\":\"-1\",\"msg\":\"")).append(resultinfos.failInfo).append("\",\"logooffurl\":\"\"}").toString();
        requestCallback.onAuthenticationRequestFailure(resultinfos);
    }

    public void onAuthenticationSuccuess(com.iwifi.sdk.chinanet.wispr.WlanRoamingAuthProtocol.ResultInfos resultinfos)
    {
        Log.i("WifiListPage", (new StringBuilder("Authentication success, logoffUrl: ")).append(resultinfos.logoffUrl).toString());
        if (is_webview_shown)
        {
            Intent intent = new Intent(ctx, com/iwifi/sdk/chinanet/WelcomePage);
            ((Activity)ctx).startActivityForResult(intent, 0);
        }
        resultinfos = (new StringBuilder("{\"result\":\"0\",\"msg\":\"\u6210\u529F\",\"logooffurl\":\"")).append(resultinfos.logoffUrl).append("\"}").toString();
        requestCallback.onAuthenticationRequestSuccess(resultinfos);
    }

    public void onLogoffFailed(com.iwifi.sdk.chinanet.wispr.WlanRoamingAuthProtocol.ResultInfos resultinfos)
    {
        Log.i("WifiListPage", (new StringBuilder("Logoff failed: ")).append(resultinfos.failInfo).toString());
        resultinfos = (new StringBuilder("{\"result\":\"-1\",\"msg\":\"")).append(resultinfos.failInfo).append("\"}").toString();
        logoffCallback.onLogOffFailure(resultinfos);
    }

    public void onLogoffSuccess(com.iwifi.sdk.chinanet.wispr.WlanRoamingAuthProtocol.ResultInfos resultinfos)
    {
        Log.i("WifiListPage", "Logoff Success");
        logoffCallback.onLogOffSuccess("{\"result\":\"0\",\"msg\":\"\u6210\u529F\"}");
    }
}
