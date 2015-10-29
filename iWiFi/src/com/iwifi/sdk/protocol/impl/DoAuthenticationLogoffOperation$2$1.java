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

class val.dev_id extends WifiAuthenticationRequestCallback
{

    final dler this$1;
    private final String val$dev_id;

    public void onAuthenticationRequestFailure(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 1;
        s = DoAuthenticationLogoffOperation.access$2(_fld0).generateAuthResultJson(s, "AAA_AUTH", val$dev_id, null, "", null, "");
        message.obj = s;
        Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    public void onAuthenticationRequestSuccess(String s)
    {
        Message message = mhandler.obtainMessage();
        message.what = 0;
        s = DoAuthenticationLogoffOperation.access$2(_fld0).generateAuthResultJson(s, "AAA_AUTH", val$dev_id, null, "", null, "");
        message.obj = s;
        Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess", (new StringBuilder("result: ")).append(s).toString());
        mhandler.sendMessage(message);
    }

    l.app_id()
    {
        this$1 = final_app_id;
        val$dev_id = String.this;
        super();
    }

    // Unreferenced inner class com/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2

/* anonymous class */
    class DoAuthenticationLogoffOperation._cls2 extends Thread
    {

        final DoAuthenticationLogoffOperation this$0;
        private final String val$app_id;
        private final String val$appversion;
        private final String val$phoneNum;

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
                    message.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("OK", "Already onLine", null, null, null, null, null, null, null, null);
                    Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), "Already onLine");
                } else
                {
                    message.what = 1;
                    message.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("NetWork Error: ")).append(as[1]).toString(), null, null, null, null, null, null, null, null);
                    Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), (new StringBuilder("Network error:  ")).append(as[1]).toString());
                }
                mhandler.sendMessage(message);
                Looper.loop();
                return;
            }
            Object obj2 = as[1];
            Object obj;
            Object obj1;
            String s;
            String s2;
            String s3;
            Object obj3;
            String s4;
            SDKCommonMotheds sdkcommonmotheds;
            String as1[];
            if (SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj2)), "dev_id=") == null)
            {
                obj1 = "";
            } else
            {
                obj1 = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj2)), "dev_id=");
            }
            s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj2)), "platform_code=");
            obj = s;
            if (s == null)
            {
                obj = "";
            }
            if (SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj2)), "ac_name=") == null)
            {
                s = "";
            } else
            {
                s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj2)), "ac_name=");
            }
            s2 = URLEncoder.encode(((String) (obj2)));
            sdkcommonmotheds = new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this));
            obj3 = sdkcommonmotheds.getLocalMacAddress();
            s3 = sdkcommonmotheds.getLocalIpAddress();
            s4 = sdkcommonmotheds.getIMEICode();
            as1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).sync_getTempToken(phoneNum, appversion, ((String) (obj3)), s3, s4, ((String) (obj1)), s, app_id, ((String) (obj)), s2);
            if (as1[0] != null && as1[0].equalsIgnoreCase("FAIL"))
            {
                obj = mhandler.obtainMessage();
                obj.what = 1;
                obj.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("Get Token Failed : ")).append(as1[1]).toString(), null, null, null, null, null, null, null, null);
                mhandler.sendMessage(((Message) (obj)));
                Looper.loop();
                return;
            }
            s2 = as1[0];
            String s5 = as1[1];
            if (!as1[2].equals(""))
            {
                obj = as1[2];
            }
            if ("AP_AUTH".equals(s5))
            {
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AP Authentication");
                obj = mhandler.obtainMessage();
                s = sdkcommonmotheds.getDhcpGatewayAddr();
                obj1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AP_sync_LoginAuthen(s, phoneNum, s2, "android", ((String) (obj1)), "http://www.baidu.com");
                int i;
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (obj1)).auth_status)
                {
                    i = 0;
                } else
                {
                    i = 1;
                }
                obj.what = i;
                obj.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (obj1)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj)));
            } else
            if ("AAA_AUTH".equals(s5))
            {
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AAA Authentication");
                obj = new WifiAuthenticationProcedure(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), ((DoAuthenticationLogoffOperation._cls2._cls1) (obj1)). new DoAuthenticationLogoffOperation._cls2._cls1(), null);
                ((WifiAuthenticationProcedure) (obj)).SetWebViewStatus(false);
                ((WifiAuthenticationProcedure) (obj)).doAunthenticaterRequest(phoneNum, s2);
            } else
            if ("AC_AUTH".equals(s5))
            {
                obj3 = mhandler.obtainMessage();
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AC Authentication");
                obj = ((String) (obj2)).split("http://");
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
                obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AC_sync_LoginAuthen(phoneNum, ((String) (obj1)), s2, s3, s, ((String) (obj)));
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_status)
                {
                    j = 0;
                } else
                {
                    j = 1;
                }
                obj3.what = j;
                obj3.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj3)));
            } else
            if ("THIRD_AUTH".equals(s5))
            {
                String s1;
                int k;
                if (((String) (obj2)).indexOf("?") == -1)
                {
                    s1 = "";
                } else
                {
                    s1 = ((String) (obj2)).substring(((String) (obj2)).indexOf("?") + 1);
                }
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Third Authentication");
                obj2 = mhandler.obtainMessage();
                obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).Third_sync_LoginAuthen(phoneNum, ((String) (obj1)), appversion, ((String) (obj3)), s3, s4, s2, ((String) (obj)), URLEncoder.encode(s1));
                if (((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_status)
                {
                    k = 0;
                } else
                {
                    k = 1;
                }
                obj2.what = k;
                obj2.obj = ((AuthenticatedMethodsUtils.AuthenResultInfo) (obj)).auth_resultInfo;
                mhandler.sendMessage(((Message) (obj2)));
            } else
            {
                Message message1 = mhandler.obtainMessage();
                message1.what = 1;
                message1.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("Unkown authen type: ")).append(s5).toString(), s5, ((String) (obj1)), ((String) (obj)), "", "", null, null, "");
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
                app_id = String.this;
                super();
            }
    }

}
