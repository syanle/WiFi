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

class this._cls1 extends WifiLogOffCallback
{

    final dler this$1;

    public void onLogOffFailure(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 3;
        message.obj = s;
        Logger.d("iWiFiSDK|Logoff|AAA Logoff|onLogOffFailure", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    public void onLogOffSuccess(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 2;
        message.obj = s;
        Logger.d("iWiFiSDK|Logoff|AAA Logoff|onLogOffSuccess", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    l.secret()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3

/* anonymous class */
    class DoAuthenticationLogoffOperation._cls3 extends Thread
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
            Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", (new StringBuilder("phonenum=")).append(phonenum).append(" & appAuth_type=").append(appAuth_type).append(" & token=").append(token).append(" & thirdToken=").append(thirdToken).append(" & ac_name=").append(ac_name).append(" & platform_code=").append(platform_code).append(" & logoffUrl=").append(logoffUrl).append(" & portalUrl=").append(portalUrl).append(" | Logoff Request start").toString());
            if ("AAA_AUTH".equals(appAuth_type))
            {
                Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " AAA Logoff ");
                (new WifiAuthenticationProcedure(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), null, new DoAuthenticationLogoffOperation._cls3._cls1())).doLogOffRequest(phonenum, logoffUrl);
            } else
            if ("THIRD_AUTH".equals(appAuth_type))
            {
                Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " Third Logoff ");
                Message message3 = mhandler.obtainMessage();
                if (portalUrl == null)
                {
                    message3.what = 3;
                    message3.obj = "{\"result\":\"FAIL\",\"message\":\"Third Platform offLine failed because input RedirectParams is null\"}";
                } else
                {
                    String s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(URLDecoder.decode(portalUrl), "platform_code=");
                    Object obj = s;
                    if (s == null)
                    {
                        obj = "";
                    }
                    s = ((String) (obj));
                    if (platform_code != null)
                    {
                        s = ((String) (obj));
                        if (!platform_code.equals(""))
                        {
                            s = platform_code;
                        }
                    }
                    obj = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getLocalIpAddress();
                    obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).Third_sync_LogoffReq(phonenum, s, ((String) (obj)), token, thirdToken, portalUrl, appkey, secret);
                    int i;
                    if (((AuthenticatedMethodsUtils.LogoffResultInfo) (obj)).logoff_status)
                    {
                        i = 2;
                    } else
                    {
                        i = 3;
                    }
                    message3.what = i;
                    message3.obj = ((AuthenticatedMethodsUtils.LogoffResultInfo) (obj)).logoff_resultInfo;
                }
                mhandler.sendMessage(message3);
            } else
            if ("AC_AUTH".equals(appAuth_type) || "BAS_AUTH".equals(appAuth_type) || "FIT_AP_AUTH".equals(appAuth_type) || "VLAN_AUTH".equals(appAuth_type))
            {
                Logger.d((new StringBuilder(String.valueOf("iWiFiSDK|Logoff|Global_LogoffUrlRequest"))).append("Global_LogoffUrlRequest").toString(), " AC Logoff ");
                Message message = mhandler.obtainMessage();
                Object obj1 = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getLocalIpAddress();
                obj1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AC_sync_LogoffReq(phonenum, token, ac_name, ((String) (obj1)), logoffUrl);
                int j;
                if (((AuthenticatedMethodsUtils.LogoffResultInfo) (obj1)).logoff_status)
                {
                    j = 2;
                } else
                {
                    j = 3;
                }
                message.what = j;
                message.obj = ((AuthenticatedMethodsUtils.LogoffResultInfo) (obj1)).logoff_resultInfo;
                mhandler.sendMessage(message);
            } else
            if ("AP_AUTH".equals(appAuth_type))
            {
                Logger.d((new StringBuilder(String.valueOf("iWiFiSDK|Logoff|Global_LogoffUrlRequest"))).append("Global_LogoffUrlRequest").toString(), " AP Logoff ");
                Message message1 = mhandler.obtainMessage();
                Object obj2 = (new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this))).getDhcpGatewayAddr();
                obj2 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AP_sync_LogoffReq(((String) (obj2)), phonenum, token);
                int k;
                if (((AuthenticatedMethodsUtils.LogoffResultInfo) (obj2)).logoff_status)
                {
                    k = 2;
                } else
                {
                    k = 3;
                }
                message1.what = k;
                message1.obj = ((AuthenticatedMethodsUtils.LogoffResultInfo) (obj2)).logoff_resultInfo;
                mhandler.sendMessage(message1);
            } else
            {
                Message message2 = mhandler.obtainMessage();
                message2.what = 3;
                if ("AP_AUTH".equals(appAuth_type))
                {
                    message2.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"This appAuthen_type don't need logoff operation : ")).append(appAuth_type).append("\"}").toString();
                } else
                {
                    message2.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Unkown appAuthen_type : ")).append(appAuth_type).append("\"}").toString();
                }
                mhandler.sendMessage(message2);
                Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", (new StringBuilder(" Logoff error: ")).append(message2.obj).toString());
            }
            Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", " Logoff exit ");
            Looper.loop();
        }


            
            {
                this$0 = final_doauthenticationlogoffoperation;
                phonenum = s;
                appAuth_type = s1;
                token = s2;
                thirdToken = s3;
                ac_name = s4;
                platform_code = s5;
                logoffUrl = s6;
                portalUrl = s7;
                appkey = s8;
                secret = String.this;
                super();
            }
    }

}
