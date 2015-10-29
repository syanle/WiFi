// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iwifi.sdk.chinanet.WifiAuthenticationProcedure;
import com.iwifi.sdk.chinanet.WifiLogOffCallback;
import com.iwifi.sdk.tools.Logger;
import java.net.URLDecoder;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            DoAuthenticationLogoffOperation, SDKCommonMotheds, AuthenticatedMethodsUtils

class val.secret extends Thread
{

    final DoAuthenticationLogoffOperation this$0;
    private final String val$ac_name;
    private final String val$appAuth_type;
    private final String val$appkey;
    private final String val$logoffUrl;
    private final String val$phonenum;
    private final String val$platform_code;
    private final String val$portalUrl;
    private final String val$secret;
    private final String val$thirdToken;
    private final String val$token;

    public void run()
    {
        super.run();
        Looper.prepare();
        Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", (new StringBuilder("phonenum=")).append(val$phonenum).append(" & appAuth_type=").append(val$appAuth_type).append(" & token=").append(val$token).append(" & thirdToken=").append(val$thirdToken).append(" & ac_name=").append(val$ac_name).append(" & platform_code=").append(val$platform_code).append(" & logoffUrl=").append(val$logoffUrl).append(" & portalUrl=").append(val$portalUrl).append(" | Logoff Request start").toString());
        if ("AAA_AUTH".equals(val$appAuth_type))
        {
            Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " AAA Logoff ");
            (new WifiAuthenticationProcedure(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), null, new WifiLogOffCallback() {

                final DoAuthenticationLogoffOperation._cls3 this$1;

                public void onLogOffFailure(String s1)
                {
                    Message message4 = mhandler.obtainMessage();
                    message4.what = 3;
                    message4.obj = s1;
                    Logger.d("iWiFiSDK|Logoff|AAA Logoff|onLogOffFailure", (new StringBuilder("result: ")).append(s1).toString());
                    mhandler.sendMessage(message4);
                }

                public void onLogOffSuccess(String s1)
                {
                    Message message4 = mhandler.obtainMessage();
                    message4.what = 2;
                    message4.obj = s1;
                    Logger.d("iWiFiSDK|Logoff|AAA Logoff|onLogOffSuccess", (new StringBuilder("result: ")).append(s1).toString());
                    mhandler.sendMessage(message4);
                }

            
            {
                this$1 = DoAuthenticationLogoffOperation._cls3.this;
                super();
            }
            })).doLogOffRequest(val$phonenum, val$logoffUrl);
        } else
        if ("THIRD_AUTH".equals(val$appAuth_type))
        {
            Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " Third Logoff ");
            Message message3 = mhandler.obtainMessage();
            if (val$portalUrl == null)
            {
                message3.what = 3;
                message3.obj = "{\"result\":\"FAIL\",\"message\":\"Third Platform offLine failed because input RedirectParams is null\"}";
            } else
            {
                String s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(URLDecoder.decode(val$portalUrl), "platform_code=");
                Object obj = s;
                if (s == null)
                {
                    obj = "";
                }
                s = ((String) (obj));
                if (val$platform_code != null)
                {
                    s = ((String) (obj));
                    if (!val$platform_code.equals(""))
                    {
                        s = val$platform_code;
                    }
                }
                obj = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getLocalIpAddress();
                obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).Third_sync_LogoffReq(val$phonenum, s, ((String) (obj)), val$token, val$thirdToken, val$portalUrl, val$appkey, val$secret);
                int i;
                if (((sultInfo) (obj)).logoff_status)
                {
                    i = 2;
                } else
                {
                    i = 3;
                }
                message3.what = i;
                message3.obj = ((sultInfo) (obj)).logoff_resultInfo;
            }
            mhandler.sendMessage(message3);
        } else
        if ("AC_AUTH".equals(val$appAuth_type) || "BAS_AUTH".equals(val$appAuth_type) || "FIT_AP_AUTH".equals(val$appAuth_type) || "VLAN_AUTH".equals(val$appAuth_type))
        {
            Logger.d((new StringBuilder(String.valueOf("iWiFiSDK|Logoff|Global_LogoffUrlRequest"))).append("Global_LogoffUrlRequest").toString(), " AC Logoff ");
            Message message = mhandler.obtainMessage();
            Object obj1 = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getLocalIpAddress();
            obj1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AC_sync_LogoffReq(val$phonenum, val$token, val$ac_name, ((String) (obj1)), val$logoffUrl);
            int j;
            if (((sultInfo) (obj1)).logoff_status)
            {
                j = 2;
            } else
            {
                j = 3;
            }
            message.what = j;
            message.obj = ((sultInfo) (obj1)).logoff_resultInfo;
            mhandler.sendMessage(message);
        } else
        if ("AP_AUTH".equals(val$appAuth_type))
        {
            Logger.d((new StringBuilder(String.valueOf("iWiFiSDK|Logoff|Global_LogoffUrlRequest"))).append("Global_LogoffUrlRequest").toString(), " AP Logoff ");
            Message message1 = mhandler.obtainMessage();
            Object obj2 = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getDhcpGatewayAddr();
            obj2 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AP_sync_LogoffReq(((String) (obj2)), val$phonenum, val$token);
            int k;
            if (((sultInfo) (obj2)).logoff_status)
            {
                k = 2;
            } else
            {
                k = 3;
            }
            message1.what = k;
            message1.obj = ((sultInfo) (obj2)).logoff_resultInfo;
            mhandler.sendMessage(message1);
        } else
        {
            Message message2 = mhandler.obtainMessage();
            message2.what = 3;
            if ("AP_AUTH".equals(val$appAuth_type))
            {
                message2.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"This appAuthen_type don't need logoff operation : ")).append(val$appAuth_type).append("\"}").toString();
            } else
            {
                message2.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Unkown appAuthen_type : ")).append(val$appAuth_type).append("\"}").toString();
            }
            mhandler.sendMessage(message2);
            Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", (new StringBuilder(" Logoff error: ")).append(message2.obj).toString());
        }
        Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " Logoff exit ");
        Looper.loop();
    }


    _cls1.this._cls1()
    {
        this$0 = final_doauthenticationlogoffoperation;
        val$phonenum = s;
        val$appAuth_type = s1;
        val$token = s2;
        val$thirdToken = s3;
        val$ac_name = s4;
        val$platform_code = s5;
        val$logoffUrl = s6;
        val$portalUrl = s7;
        val$appkey = s8;
        val$secret = String.this;
        super();
    }
}
