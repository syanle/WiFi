// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iwifi.sdk.chinanet.WifiAuthenticationProcedure;
import com.iwifi.sdk.chinanet.WifiAuthenticationRequestCallback;
import com.iwifi.sdk.tools.Logger;
import java.net.URLEncoder;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            DoAuthenticationLogoffOperation, AuthenticatedMethodsUtils, SDKCommonMotheds

class val.accountID extends WifiAuthenticationRequestCallback
{

    final dler this$1;
    private final String val$accountID;
    private final String val$dev_id;

    public void onAuthenticationRequestFailure(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 1;
        s = DoAuthenticationLogoffOperation.access$2(_fld0).generateAuthResultJson(s, "AAA_AUTH", val$dev_id, null, "", null, val$accountID, "");
        message.obj = s;
        Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    public void onAuthenticationRequestSuccess(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 0;
        s = DoAuthenticationLogoffOperation.access$2(_fld0).generateAuthResultJson(s, "AAA_AUTH", val$dev_id, null, "", null, val$accountID, "");
        message.obj = s;
        Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    l.secret()
    {
        this$1 = final_secret;
        val$dev_id = s;
        val$accountID = String.this;
        super();
    }

    // Unreferenced inner class com/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2

/* anonymous class */
    class DoAuthenticationLogoffOperation._cls2 extends Thread
    {

        final DoAuthenticationLogoffOperation this$0;
        private final String val$app_id;
        private final String val$appkey;
        private final String val$appversion;
        private final String val$phoneNum;
        private final String val$secret;

        public void run()
        {
            Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", (new StringBuilder("username=")).append(phoneNum).append(" & appversion=").append(appversion).append(" | authentication start").toString());
            super.run();
            Looper.prepare();
            String as[] = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).sync_getPortalUrl("http://www.baidu.com");
            if (as[0].equals("false"))
            {
                Message message = mhandler.obtainMessage();
                if (as[1].contains("200"))
                {
                    message.what = 0;
                    message.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("OK", "Already onLine", null, null, null, null, null, null, null, null, null);
                    Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), "Already onLine");
                } else
                {
                    message.what = 1;
                    message.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("NetWork Error: ")).append(as[1]).toString(), null, null, null, null, null, null, null, null, null);
                    Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), (new StringBuilder("Network error:  ")).append(as[1]).toString());
                }
                mhandler.sendMessage(message);
                Looper.loop();
                return;
            }
            Object obj1 = as[1];
            Object obj;
            final Object dev_id;
            String s;
            String s1;
            String s4;
            Object obj2;
            String s5;
            SDKCommonMotheds sdkcommonmotheds;
            String as1[];
            if (SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "dev_id=") == null)
            {
                dev_id = "";
            } else
            {
                dev_id = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "dev_id=");
            }
            s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "platform_code=");
            obj = s;
            if (s == null)
            {
                obj = "";
            }
            if (SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "ac_name=") == null)
            {
                s1 = "";
            } else
            {
                s1 = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "ac_name=");
            }
            s = URLEncoder.encode(((String) (obj1)));
            sdkcommonmotheds = new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this));
            obj2 = sdkcommonmotheds.getLocalMacAddress();
            s4 = sdkcommonmotheds.getLocalIpAddress();
            s5 = sdkcommonmotheds.getIMEICode();
            as1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).sync_getTempToken(phoneNum, appversion, ((String) (obj2)), s4, s5, ((String) (dev_id)), s1, app_id, ((String) (obj)), s, appkey, secret);
            if (as1[0] != null && as1[0].equalsIgnoreCase("FAIL"))
            {
                obj = mhandler.obtainMessage();
                obj.what = 1;
                obj.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("Get Token Failed : ")).append(as1[1]).toString(), null, null, null, null, null, null, null, null, null);
                mhandler.sendMessage(((Message) (obj)));
                Looper.loop();
                return;
            }
            s = "";
            String s3 = as1[0];
            String s6 = as1[1];
            if (!as1[2].equals(""))
            {
                obj = as1[2];
            }
            if (!as1[3].equals(""))
            {
                s = as1[3];
            }
            if ("AP_AUTH".equals(s6))
            {
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AP Authentication");
                obj = mhandler.obtainMessage();
                s1 = sdkcommonmotheds.getDhcpGatewayAddr();
                dev_id = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AP_sync_LoginAuthen(s1, phoneNum, s3, "android", ((String) (dev_id)), s, "http://www.baidu.com");
                int i;
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (dev_id)).auth_status)
                {
                    i = 0;
                } else
                {
                    i = 1;
                }
                obj.what = i;
                obj.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (dev_id)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj)));
            } else
            if ("AAA_AUTH".equals(s6))
            {
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AAA Authentication");
                obj = new WifiAuthenticationProcedure(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), s. new DoAuthenticationLogoffOperation._cls2._cls1(), null);
                ((WifiAuthenticationProcedure) (obj)).SetWebViewStatus(false);
                ((WifiAuthenticationProcedure) (obj)).doAunthenticaterRequest(phoneNum, s3);
            } else
            if ("AC_AUTH".equals(s6) || "BAS_AUTH".equals(s6) || "FIT_AP_AUTH".equals(s6) || "VLAN_AUTH".equals(s6))
            {
                obj2 = mhandler.obtainMessage();
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AC Authentication");
                obj = ((String) (obj1)).split("http://");
                int j;
                if (obj.length > 1)
                {
                    if (obj[1].indexOf("/") == -1)
                    {
                        obj = "";
                    } else
                    {
                        obj = obj[1].substring(0, obj[1].indexOf("/") + 1);
                    }
                } else
                if (obj[0].indexOf("/") == -1)
                {
                    obj = "";
                } else
                {
                    obj = obj[0].substring(0, obj[0].indexOf("/") + 1);
                }
                obj = (new StringBuilder("http://")).append(((String) (obj))).toString();
                obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AC_sync_LoginAuthen((new StringBuilder(String.valueOf(phoneNum))).append("@51iwifi.com").toString(), ((String) (dev_id)), s3, s4, s1, s, ((String) (obj)));
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_status)
                {
                    j = 0;
                } else
                {
                    j = 1;
                }
                obj2.what = j;
                obj2.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj2)));
            } else
            if ("THIRD_AUTH".equals(s6))
            {
                String s2;
                int k;
                if (((String) (obj1)).indexOf("?") == -1)
                {
                    s2 = "";
                } else
                {
                    s2 = ((String) (obj1)).substring(((String) (obj1)).indexOf("?") + 1);
                }
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Third Authentication");
                obj1 = mhandler.obtainMessage();
                obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).Third_sync_LoginAuthen(phoneNum, ((String) (dev_id)), appversion, ((String) (obj2)), s4, s5, s3, ((String) (obj)), s, URLEncoder.encode(s2), appkey, secret);
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_status)
                {
                    k = 0;
                } else
                {
                    k = 1;
                }
                obj1.what = k;
                obj1.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj1)));
            } else
            {
                Message message1 = mhandler.obtainMessage();
                message1.what = 1;
                message1.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("Unkown authen type: ")).append(s6).toString(), s6, ((String) (dev_id)), ((String) (obj)), "", "", null, null, s, "");
                mhandler.sendMessage(message1);
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", (new StringBuilder("Error: ")).append(message1.obj).toString());
            }
            Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Authenticaton exit");
            Looper.loop();
        }


            
            {
                this$0 = final_doauthenticationlogoffoperation;
                phoneNum = s;
                appversion = s1;
                app_id = s2;
                appkey = s3;
                secret = String.this;
                super();
            }
    }

}
