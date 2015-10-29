// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;


public class HttpConf
{

    public static final String APP_KEY = "10001000";
    public static final String APP_SECRET = "513add10608f815f4d7eaf7c6376097b";
    public static String UPDATE_XMLPATH = "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/checkVersion";
    public static boolean b_iWiFiSDK_ThirdPartyJar = false;
    public static String iWiFi20_AUTHEN_STR = "http://portal.51iwifi.com:80/";
    public static final String iWiFi20_METHOD_APAUTH = "smartwifi/auth";
    public static final String iWiFi20_METHOD_GETPORTAL = "getPortalUrl";
    public static final String iWiFi20_METHOD_SDKKEY = "checkapp.html";
    public static final String iWiFi20_METHOD_SSID = "ssidlists.html";
    public static final String iWiFi20_METHOD_THIRD_AUTH = "appauth.html";
    public static final String iWiFi20_METHOD_THIRD_LOGOFF = "useroffline.html";
    public static final String iWiFi20_METHOD_TOKEN = "token.html";
    public static final String iWiFi20_METHOD_VERIFY_PLATFORMCODE = "platform10/platformcode.htm";
    public static String iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL = "http://app.51iwifi.com:12380/redirect.jsp";
    public static final String iWiFi_3RD_JAR_VERSION_TAG = "2.2.1_170_20141230";
    public static final String iWiFi_METHOD_APINFO = "apinfo1.html";
    public static final String iWiFi_METHOD_COMMENT = "comment.html";
    public static final String iWiFi_METHOD_CTPASS = "getctpass.html";
    public static final String iWiFi_METHOD_CTPASSRESULT = "authctpasstoken.html";
    public static final String iWiFi_METHOD_IVR = "checkivr.html";
    public static final String iWiFi_METHOD_LOGI = "login.html";
    public static final String iWiFi_METHOD_MOBILEEXIST = "checkinfo.html";
    public static final String iWiFi_METHOD_NEARBUSLIST = "getnearbuslist.html";
    public static final String iWiFi_METHOD_NEARTYPE = "getneartype.html";
    public static final String iWiFi_METHOD_PUSHLIST = "getpushlist.html";
    public static final String iWiFi_METHOD_READPUSH = "readpush.html";
    public static final String iWiFi_METHOD_REG = "checksms.html";
    public static final String iWiFi_METHOD_REGNEW = "reg.html";
    public static final String iWiFi_METHOD_REPWD = "repwd.html";
    public static final String iWiFi_METHOD_SMS = "sendsms.html";
    public static final String iWiFi_METHOD_SSID = "ssidinfo.html";
    public static final String iWiFi_METHOD_TIMEDIFF = "gettimedifference.html";
    public static final String iWiFi_METHOD_UPLOAD = "upload.html";
    public static final String iWiFi_METHOD_USERINFO = "getuserinfo.html";
    public static String iWiFi_SECOND_AGENT = "";
    public static String iWiFi_USER_AGENT = "CDMA+WLAN";
    public static String iWiFi_WIFI_HOST;
    public static String iWiFi_WIFI_HOSTAP;
    public static String iWiFi_WIFI_HOSTGE;
    public static String iWiFi_WIFI_HOSTNEAR;
    public static String iWiFi_WIFI_HOSTNFC;
    public static String iWiFi_WIFI_TOTAL;

    public HttpConf()
    {
    }

    public static void setUserAgent(String s)
    {
        iWiFi_SECOND_AGENT = s;
    }

    static 
    {
        iWiFi_WIFI_TOTAL = "http://2cint.51awifi.com/PubInfoWifiInterface";
        iWiFi_WIFI_HOST = (new StringBuilder(String.valueOf(iWiFi_WIFI_TOTAL))).append("/app30/member/").toString();
        iWiFi_WIFI_HOSTAP = (new StringBuilder(String.valueOf(iWiFi_WIFI_TOTAL))).append("/app30/ap/").toString();
        iWiFi_WIFI_HOSTNEAR = (new StringBuilder(String.valueOf(iWiFi_WIFI_TOTAL))).append("/app30/near/").toString();
        iWiFi_WIFI_HOSTGE = (new StringBuilder(String.valueOf(iWiFi_WIFI_TOTAL))).append("/app30/general/").toString();
        iWiFi_WIFI_HOSTNFC = (new StringBuilder(String.valueOf(iWiFi_WIFI_TOTAL))).append("/app30/nfc/").toString();
        b_iWiFiSDK_ThirdPartyJar = false;
    }
}
