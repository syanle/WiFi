// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;


public class HttpConf
{

    public static final String APP_KEY = "10001000";
    public static final String APP_SECRET = "513add10608f815f4d7eaf7c6376097b";
    public static final String Ad_LIST = "GetAd";
    public static final String BIKE_LIST = "GetBikeParkInfo";
    public static final String CHINANET_USERNAME_SUFFIX = "@51iwifi.com";
    public static final String CITY_LIST = "GetCityListServlet";
    public static final String CUSTOM_URL = "http://www.baidu.com";
    public static final String GasInfo_LIST = "GetOilServlet";
    public static final String GasSation_LIST = "GetOilinfoServlet";
    public static final String JIE_KOU = "yxtjk/";
    public static final String MAIN_MENU = "GetMenuServlet";
    public static final String METHOD_AUTH = "api-hichina/auth";
    public static final String METHOD_CHECKCODE = "checkcode";
    public static final String METHOD_CHINANETAUTH = "chinanetauth";
    public static final String METHOD_HEARTHIT = "chinanetheartbeat";
    public static final String METHOD_NETTYPE = "api-hichina/info";
    public static final String METHOD_SMS = "sms";
    public static final String METHOD_SSID = "ssidlists";
    public static final String PARK_LIST = "GetParksServlet";
    public static final String ROAD = "GetRoadServlet";
    public static final String SEARCH = "GetSearchResultServlet";
    public static final String SUISHOUPAI = "GetSuiShouPaiServlet";
    public static final String VIDEO_LIST = "GetVideoinfoListServlet";
    public static final String WIFI_HOST = "http://www.hichinawifi.com/wifiapp/";
    public static final String WIFI_HOST2 = "http://115.239.134.129/wifiapp/";
    public static final String ZONE = "GetZoneServlet";
    public static boolean b_iWiFiSDK_ThirdPartyJar = false;
    public static String iWiFi20_AC_HOST = "http://auth.51awifi.com/bas/";
    public static String iWiFi20_AUTHEN_STR = "http://portal.51iwifi.com";
    public static String iWiFi20_AUTHEN_STR2 = "http://portal.51awifi.com";
    public static final String iWiFi20_METHOD_AC = "appaciauth.htm";
    public static final String iWiFi20_METHOD_ACOFF = "appacilogout.htm";
    public static final String iWiFi20_METHOD_APAUTH = "smartwifi/auth";
    public static final String iWiFi20_METHOD_CHECKCODE = "checkcode.html";
    public static final String iWiFi20_METHOD_GETPORTAL = "getPortalUrl";
    public static final String iWiFi20_METHOD_SDKKEY = "checkapp.html";
    public static final String iWiFi20_METHOD_SMS = "sendcode.html";
    public static final String iWiFi20_METHOD_SSID = "ssidlists.html";
    public static final String iWiFi20_METHOD_THIRD_AUTH = "appauth.html";
    public static final String iWiFi20_METHOD_THIRD_LOGOFF = "useroffline.html";
    public static final String iWiFi20_METHOD_TOKEN = "token.html";
    public static final String iWiFi20_METHOD_VERIFY_PLATFORMCODE = "platform10/platformcode.htm";
    public static String iWiFi20_WIFI_HOST = "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/";
    public static String iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL = "http://app.51iwifi.com:12380/redirect.jsp";
    public static final String iWiFi_3RD_JAR_VERSION_TAG = "2.2.1_170_20141230";
    public static String iWiFi_SECOND_AGENT = "";
    public static String iWiFi_USER_AGENT = "CDMA+WLAN";

    public HttpConf()
    {
    }

    public static void setUserAgent(String s)
    {
        iWiFi_SECOND_AGENT = s;
    }

    static 
    {
        b_iWiFiSDK_ThirdPartyJar = false;
    }
}
