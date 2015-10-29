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

class val.app_id extends Thread
{

    final DoAuthenticationLogoffOperation this$0;
    private final String val$app_id;
    private final String val$appversion;
    private final String val$phoneNum;

    public void run()
    {
        Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", (new StringBuilder("username=")).append(val$phoneNum).append(" & appversion=").append(val$appversion).append(" | authentication start").toString());
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
        Object obj1 = as[1];
        Object obj;
        final Object dev_id;
        String s;
        String s2;
        String s3;
        Object obj2;
        String s4;
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
            s = "";
        } else
        {
            s = SDKCommonMotheds.getDevidOrPltCodeFromUrl(((String) (obj1)), "ac_name=");
        }
        s2 = URLEncoder.encode(((String) (obj1)));
        sdkcommonmotheds = new SDKCommonMotheds(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this));
        obj2 = sdkcommonmotheds.getLocalMacAddress();
        s3 = sdkcommonmotheds.getLocalIpAddress();
        s4 = sdkcommonmotheds.getIMEICode();
        as1 = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).sync_getTempToken(val$phoneNum, val$appversion, ((String) (obj2)), s3, s4, ((String) (dev_id)), s, val$app_id, ((String) (obj)), s2);
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
            dev_id = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AP_sync_LoginAuthen(s, val$phoneNum, s2, "android", ((String) (dev_id)), "http://www.baidu.com");
            int i;
            if (((sultInfo) (dev_id)).auth_status)
            {
                i = 0;
            } else
            {
                i = 1;
            }
            obj.what = i;
            obj.obj = ((sultInfo) (dev_id)).auth_resultInfo;
            mhandler.sendMessage(((Message) (obj)));
        } else
        if ("AAA_AUTH".equals(s5))
        {
            Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "AAA Authentication");
            obj = new WifiAuthenticationProcedure(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), new WifiAuthenticationRequestCallback() {

                final DoAuthenticationLogoffOperation._cls2 this$1;
                private final String val$dev_id;

                public void onAuthenticationRequestFailure(String s6)
                {
                    Message message2 = mhandler.obtainMessage();
                    message2.what = 1;
                    s6 = DoAuthenticationLogoffOperation.access$2(this$0).generateAuthResultJson(s6, "AAA_AUTH", dev_id, null, "", null, "");
                    message2.obj = s6;
                    Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure", (new StringBuilder("result: ")).append(s6).toString());
                    mhandler.sendMessage(message2);
                }

                public void onAuthenticationRequestSuccess(String s6)
                {
                    Message message2 = mhandler.obtainMessage();
                    message2.what = 0;
                    s6 = DoAuthenticationLogoffOperation.access$2(this$0).generateAuthResultJson(s6, "AAA_AUTH", dev_id, null, "", null, "");
                    message2.obj = s6;
                    Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess", (new StringBuilder("result: ")).append(s6).toString());
                    mhandler.sendMessage(message2);
                }

            
            {
                this$1 = DoAuthenticationLogoffOperation._cls2.this;
                dev_id = s;
                super();
            }
            }, null);
            ((WifiAuthenticationProcedure) (obj)).SetWebViewStatus(false);
            ((WifiAuthenticationProcedure) (obj)).doAunthenticaterRequest(val$phoneNum, s2);
        } else
        if ("AC_AUTH".equals(s5))
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
            obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).AC_sync_LoginAuthen(val$phoneNum, ((String) (dev_id)), s2, s3, s, ((String) (obj)));
            if (((sultInfo) (obj)).auth_status)
            {
                j = 0;
            } else
            {
                j = 1;
            }
            obj2.what = j;
            obj2.obj = ((sultInfo) (obj)).auth_resultInfo;
            mhandler.sendMessage(((Message) (obj2)));
        } else
        if ("THIRD_AUTH".equals(s5))
        {
            String s1;
            int k;
            if (((String) (obj1)).indexOf("?") == -1)
            {
                s1 = "";
            } else
            {
                s1 = ((String) (obj1)).substring(((String) (obj1)).indexOf("?") + 1);
            }
            Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Third Authentication");
            obj1 = mhandler.obtainMessage();
            obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).Third_sync_LoginAuthen(val$phoneNum, ((String) (dev_id)), val$appversion, ((String) (obj2)), s3, s4, s2, ((String) (obj)), URLEncoder.encode(s1));
            if (((sultInfo) (obj)).auth_status)
            {
                k = 0;
            } else
            {
                k = 1;
            }
            obj1.what = k;
            obj1.obj = ((sultInfo) (obj)).auth_resultInfo;
            mhandler.sendMessage(((Message) (obj1)));
        } else
        {
            Message message1 = mhandler.obtainMessage();
            message1.what = 1;
            message1.obj = DoAuthenticationLogoffOperation.access$2(DoAuthenticationLogoffOperation.this).generateJson("FAIL", (new StringBuilder("Unkown authen type: ")).append(s5).toString(), s5, ((String) (dev_id)), ((String) (obj)), "", "", null, null, "");
            mhandler.sendMessage(message1);
            Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", (new StringBuilder("Error: ")).append(message1.obj).toString());
        }
        Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Authenticaton exit");
        Looper.loop();
    }


    >()
    {
        this$0 = final_doauthenticationlogoffoperation;
        val$phoneNum = s;
        val$appversion = s1;
        val$app_id = String.this;
        super();
    }
}
