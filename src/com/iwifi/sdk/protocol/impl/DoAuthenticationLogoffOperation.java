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

    public void Global_AuthenticationRequest(final String phoneNum, final String appversion, final String app_id)
    {
        (new Thread() {

            final DoAuthenticationLogoffOperation this$0;
            private final String val$app_id;
            private final String val$appversion;
            private final String val$phoneNum;

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
                        message.obj = authenUtils.generateJson("OK", "Already onLine", null, null, null, null, null, null, null, null);
                        Logger.i((new StringBuilder(String.valueOf("iWiFiSDK|Authentication|Global_AuthenticationRequest"))).append("sync_getPortalUrl").toString(), "Already onLine");
                    } else
                    {
                        message.what = 1;
                        message.obj = authenUtils.generateJson("FAIL", (new StringBuilder("NetWork Error: ")).append(as[1]).toString(), null, null, null, null, null, null, null, null);
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
                sdkcommonmotheds = new SDKCommonMotheds(mContext);
                obj3 = sdkcommonmotheds.getLocalMacAddress();
                s3 = sdkcommonmotheds.getLocalIpAddress();
                s4 = sdkcommonmotheds.getIMEICode();
                as1 = authenUtils.sync_getTempToken(phoneNum, appversion, ((String) (obj3)), s3, s4, ((String) (obj1)), s, app_id, ((String) (obj)), s2);
                if (as1[0] != null && as1[0].equalsIgnoreCase("FAIL"))
                {
                    obj = mhandler.obtainMessage();
                    obj.what = 1;
                    obj.obj = authenUtils.generateJson("FAIL", (new StringBuilder("Get Token Failed : ")).append(as1[1]).toString(), null, null, null, null, null, null, null, null);
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
                    obj1 = authenUtils.AP_sync_LoginAuthen(s, phoneNum, s2, "android", ((String) (obj1)), "http://www.baidu.com");
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
                    obj = new WifiAuthenticationProcedure(mContext, ((_cls1) (obj1)). new WifiAuthenticationRequestCallback() {

                        final _cls2 this$1;
                        private final String val$dev_id;

                        public void onAuthenticationRequestFailure(String s)
                        {
                            Message message = mhandler.obtainMessage();
                            message.what = 1;
                            s = authenUtils.generateAuthResultJson(s, "AAA_AUTH", dev_id, null, "", null, "");
                            message.obj = s;
                            Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure", (new StringBuilder("result: ")).append(s).toString());
                            mhandler.sendMessage(message);
                        }

                        public void onAuthenticationRequestSuccess(String s)
                        {
                            Message message = mhandler.obtainMessage();
                            message.what = 0;
                            s = authenUtils.generateAuthResultJson(s, "AAA_AUTH", dev_id, null, "", null, "");
                            message.obj = s;
                            Logger.d("iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess", (new StringBuilder("result: ")).append(s).toString());
                            mhandler.sendMessage(message);
                        }

            
            {
                this$1 = final__pcls2;
                dev_id = String.this;
                super();
            }
                    }, null);
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
                    obj = authenUtils.AC_sync_LoginAuthen(phoneNum, ((String) (obj1)), s2, s3, s, ((String) (obj)));
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
                    obj = authenUtils.Third_sync_LoginAuthen(phoneNum, ((String) (obj1)), appversion, ((String) (obj3)), s3, s4, s2, ((String) (obj)), URLEncoder.encode(s1));
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
                    message1.obj = authenUtils.generateJson("FAIL", (new StringBuilder("Unkown authen type: ")).append(s5).toString(), s5, ((String) (obj1)), ((String) (obj)), "", "", null, null, "");
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
                super();
            }
        }).start();
    }

    public void Global_LogoffUrlRequest(final String phonenum, final String appAuth_type, final String logoffUrl, final String token, final String thirdToken, final String ac_name, final String platform_code, 
            final String portalUrl)
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
                private final String val$logoffUrl;
                private final String val$phonenum;
                private final String val$platform_code;
                private final String val$portalUrl;
                private final String val$thirdToken;
                private final String val$token;

                public void run()
                {
                    int i = 2;
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
                        Message message2 = mhandler.obtainMessage();
                        if (portalUrl == null)
                        {
                            message2.what = 3;
                            message2.obj = "{\"result\":\"FAIL\",\"message\":\"Third Platform offLine failed because input RedirectParams is null\"}";
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
                            obj = authenUtils.Third_sync_LogoffReq(phonenum, s, ((String) (obj)), token, thirdToken, portalUrl);
                            if (((AuthenticatedMethodsUtils.LogoffResultInfo) (obj)).logoff_status)
                            {
                                i = 2;
                            } else
                            {
                                i = 3;
                            }
                            message2.what = i;
                            message2.obj = ((AuthenticatedMethodsUtils.LogoffResultInfo) (obj)).logoff_resultInfo;
                        }
                        mhandler.sendMessage(message2);
                    } else
                    if ("AC_AUTH".equals(appAuth_type))
                    {
                        Logger.d((new StringBuilder(String.valueOf("iWiFiSDK|Logoff|Global_LogoffUrlRequest"))).append("Global_LogoffUrlRequest").toString(), " AC Logoff ");
                        Message message = mhandler.obtainMessage();
                        Object obj1 = (new SDKCommonMotheds(mContext)).getLocalIpAddress();
                        obj1 = authenUtils.AC_sync_LogoffReq(ac_name, ((String) (obj1)), logoffUrl);
                        if (!((AuthenticatedMethodsUtils.LogoffResultInfo) (obj1)).logoff_status)
                        {
                            i = 3;
                        }
                        message.what = i;
                        message.obj = ((AuthenticatedMethodsUtils.LogoffResultInfo) (obj1)).logoff_resultInfo;
                        mhandler.sendMessage(message);
                    } else
                    {
                        Message message1 = mhandler.obtainMessage();
                        message1.what = 3;
                        if ("AP_AUTH".equals(appAuth_type))
                        {
                            message1.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"This appAuthen_type don't need logoff operation : ")).append(appAuth_type).append("\"}").toString();
                        } else
                        {
                            message1.obj = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Unkown appAuthen_type : ")).append(appAuth_type).append("\"}").toString();
                        }
                        mhandler.sendMessage(message1);
                        Logger.d("iWiFiSDK|Logoff|Global_LogoffUrlRequest", (new StringBuilder(" Logoff error: ")).append(message1.obj).toString());
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
                super();
            }
            }).start();
            return;
        }
    }



}
