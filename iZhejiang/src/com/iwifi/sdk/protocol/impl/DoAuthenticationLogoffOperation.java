// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iwifi.sdk.chinanet.WelcomePage;
import com.iwifi.sdk.chinanet.WifiAuthenticationProcedure;
import com.iwifi.sdk.chinanet.WifiAuthenticationRequestCallback;
import com.iwifi.sdk.chinanet.WifiLogOffCallback;
import com.iwifi.sdk.protocol.GlobaleAuthenticationRequestCallback;
import com.iwifi.sdk.tools.HttpConf;
import com.iwifi.sdk.tools.Logger;
import java.net.URLDecoder;
import java.net.URLEncoder;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            AuthenticatedMethodsUtils, SDKCommonMotheds

public class DoAuthenticationLogoffOperation
{

    private static final int MSG_AUTHENTICATION_FAIL = 1;
    private static final int MSG_AUTHENTICATION_SUCCESS = 0;
    private static final int MSG_LOGOFF_FAIL = 3;
    private static final int MSG_LOGOFF_SUCCESS = 2;
    private AuthenticatedMethodsUtils authenUtils;
    private GlobaleAuthenticationRequestCallback mCallback;
    private Context mContext;
    Handler mhandler;

    public DoAuthenticationLogoffOperation(Context context, GlobaleAuthenticationRequestCallback globaleauthenticationrequestcallback)
    {
        mContext = null;
        authenUtils = null;
        mhandler = new Handler() {

            final DoAuthenticationLogoffOperation this$0;

            public void handleMessage(Message message)
            {
                super.handleMessage(message);
                String s = (String)message.obj;
                switch (message.what)
                {
                default:
                    return;

                case 1: // '\001'
                    mCallback.onAuthenticationReqFail(s);
                    return;

                case 0: // '\0'
                    if (HttpConf.b_iWiFiSDK_ThirdPartyJar)
                    {
                        message = new Intent(mContext, com/iwifi/sdk/chinanet/WelcomePage);
                        message.setFlags(0x10000000);
                        mContext.startActivity(message);
                    }
                    mCallback.onAuthenticationReqSucc(s);
                    return;

                case 2: // '\002'
                    mCallback.onLogoffRequestSucc(s);
                    return;

                case 3: // '\003'
                    mCallback.onLogoffRequestFail(s);
                    return;
                }
            }

            
            {
                this$0 = DoAuthenticationLogoffOperation.this;
                super();
            }
        };
        mContext = context;
        mCallback = globaleauthenticationrequestcallback;
        if (HttpConf.b_iWiFiSDK_ThirdPartyJar)
        {
            Logger.setLogStatus(false, 0, 0);
        }
        authenUtils = new AuthenticatedMethodsUtils();
    }

    public void Authen_Set3rdPortalUrl(String s)
    {
        HttpConf.iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL = s;
    }

    public void Global_AuthenticationRequest(final String phoneNum, final String appversion, final String app_id, final String appkey, final String secret)
    {
        (new Thread() {

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
                String as[] = authenUtils.sync_getPortalUrl("http://www.baidu.com");
                if (as[0].equals("false"))
                {
                    Message message = mhandler.obtainMessage();
                    if (as[1].contains("200"))
                    {
                        message.what = 0;
                        message.obj = authenUtils.generateJson("OK", "Already onLine", null, null, null, null, null, null, null, null, null);
                        Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), "Already onLine");
                    } else
                    {
                        message.what = 1;
                        message.obj = authenUtils.generateJson("FAIL", (new StringBuilder("NetWork Error: ")).append(as[1]).toString(), null, null, null, null, null, null, null, null, null);
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
                sdkcommonmotheds = new SDKCommonMotheds(mContext);
                obj2 = sdkcommonmotheds.getLocalMacAddress();
                s4 = sdkcommonmotheds.getLocalIpAddress();
                s5 = sdkcommonmotheds.getIMEICode();
                as1 = authenUtils.sync_getTempToken(phoneNum, appversion, ((String) (obj2)), s4, s5, ((String) (dev_id)), s1, app_id, ((String) (obj)), s, appkey, secret);
                if (as1[0] != null && as1[0].equalsIgnoreCase("FAIL"))
                {
                    obj = mhandler.obtainMessage();
                    obj.what = 1;
                    obj.obj = authenUtils.generateJson("FAIL", (new StringBuilder("Get Token Failed : ")).append(as1[1]).toString(), null, null, null, null, null, null, null, null, null);
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
                    dev_id = authenUtils.AP_sync_LoginAuthen(s1, phoneNum, s3, "android", ((String) (dev_id)), s, "http://www.baidu.com");
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
                    obj = new WifiAuthenticationProcedure(mContext, s. new WifiAuthenticationRequestCallback() {

                        final _cls2 this$1;
                        private final String val$accountID;
                        private final String val$dev_id;

                        public void onAuthenticationRequestFailure(String s)
                        {
                            Message message = mhandler.obtainMessage();
                            message.what = 1;
                            s = authenUtils.generateAuthResultJson(s, "AAA_AUTH", dev_id, null, "", null, accountID, "");
                            message.obj = s;
                            Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure", (new StringBuilder("result: ")).append(s).toString());
                            mhandler.sendMessage(message);
                        }

                        public void onAuthenticationRequestSuccess(String s)
                        {
                            Message message = mhandler.obtainMessage();
                            message.what = 0;
                            s = authenUtils.generateAuthResultJson(s, "AAA_AUTH", dev_id, null, "", null, accountID, "");
                            message.obj = s;
                            Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess", (new StringBuilder("result: ")).append(s).toString());
                            mhandler.sendMessage(message);
                        }

            
            {
                this$1 = final__pcls2;
                dev_id = s;
                accountID = String.this;
                super();
            }
                    }, null);
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
                    obj = authenUtils.AC_sync_LoginAuthen((new StringBuilder(String.valueOf(phoneNum))).append("@51iwifi.com").toString(), ((String) (dev_id)), s3, s4, s1, s, ((String) (obj)));
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
                    obj = authenUtils.Third_sync_LoginAuthen(phoneNum, ((String) (dev_id)), appversion, ((String) (obj2)), s4, s5, s3, ((String) (obj)), s, URLEncoder.encode(s2), appkey, secret);
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
                    message1.obj = authenUtils.generateJson("FAIL", (new StringBuilder("Unkown authen type: ")).append(s6).toString(), s6, ((String) (dev_id)), ((String) (obj)), "", "", null, null, s, "");
                    mhandler.sendMessage(message1);
                    Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", (new StringBuilder("Error: ")).append(message1.obj).toString());
                }
                Logger.d("iWiFiSDK|Authentication|Global_AuthenticationRequest", "Authenticaton exit");
                Looper.loop();
            }


            
            {
                this$0 = DoAuthenticationLogoffOperation.this;
                phoneNum = s;
                appversion = s1;
                app_id = s2;
                appkey = s3;
                secret = s4;
                super();
            }
        }).start();
    }

    public void Global_LogoffUrlRequest(final String phonenum, final String appAuth_type, final String logoffUrl, final String token, final String thirdToken, final String ac_name, final String platform_code, 
            final String portalUrl, final String appkey, final String secret)
    {
        if (appAuth_type == null)
        {
            return;
        } else
        {
            (new Thread() {

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
                        (new WifiAuthenticationProcedure(mContext, null, new WifiLogOffCallback() {

                            final _cls3 this$1;

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

            
            {
                this$1 = _cls3.this;
                super();
            }
                        })).doLogOffRequest(phonenum, logoffUrl);
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
                            obj = (new SDKCommonMotheds(mContext)).getLocalIpAddress();
                            obj = authenUtils.Third_sync_LogoffReq(phonenum, s, ((String) (obj)), token, thirdToken, portalUrl, appkey, secret);
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
                        Object obj1 = (new SDKCommonMotheds(mContext)).getLocalIpAddress();
                        obj1 = authenUtils.AC_sync_LogoffReq(phonenum, token, ac_name, ((String) (obj1)), logoffUrl);
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
                        Object obj2 = (new SDKCommonMotheds(mContext)).getDhcpGatewayAddr();
                        obj2 = authenUtils.AP_sync_LogoffReq(((String) (obj2)), phonenum, token);
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
                this$0 = DoAuthenticationLogoffOperation.this;
                phonenum = s;
                appAuth_type = s1;
                token = s2;
                thirdToken = s3;
                ac_name = s4;
                platform_code = s5;
                logoffUrl = s6;
                portalUrl = s7;
                appkey = s8;
                secret = s9;
                super();
            }
            }).start();
            return;
        }
    }



}
