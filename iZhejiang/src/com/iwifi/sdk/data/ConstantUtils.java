// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.data;


public class ConstantUtils
{

    public static final int ANDROID_OS_VERSION;
    public static final String PREFERENCE_LOCATION_ADDRESS = "Location_Address";
    public static final String PREFERENCE_LOCATION_LATITUDE = "Location_Latitude";
    public static final String PREFERENCE_LOCATION_LONGITUDE = "Location_Longitude";
    public static final String PREFERENCE_LOCATION_RESULTTYPE = "Location_ResultType";
    public static final String PREFERENCE_LOCATION_TIME = "Location_Time";
    public static final String PREFERENCE_PUSH_INFO_LATEST_AUTHEN_PHONENUM = "latest_authen_phoneNum";
    public static final String PREFERENCE_PUSH_INFO_UPDATED_FLAG = "pushInfo_updated_flag";
    public static final String PREFERNCE_CENTER_PAGE_JUMP = "jump";
    public static final String PREFERNCE_CENTER_PAGE_TAB_INDEX = "center_page_tab_current_index";
    public static final String PREFERNCE_QUICK_SHARE = "QuickSharedShown";
    public static final String PREFERNCE_WEIXIN_SHARE = "WeixinShown";
    public static final String PUSH_ADDRESS = "uppushinfo.html";
    public static final String PUSH_HOST = "http://app2c.51awifi.com/PubInfoWifiInterface/sdk/";
    public static final String SHARED_PREFERENCE_FILE_NAME = "location_preferences";
    public static final String iWiFi_CLIENT_VERSION = "2.0";
    public static final String iWiFi_Client_Authen_Default_AppID = "56697b27fe070c1064f9f5bf8c8174bc";
    public static final boolean iWiFi_Client_Enable_Push = true;

    public ConstantUtils()
    {
    }

    static 
    {
        ANDROID_OS_VERSION = Integer.parseInt(android.os.Build.VERSION.SDK);
    }
}
