// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.androidpn.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.iwifi.sdk.data.ConstantUtils;
import com.iwifi.sdk.protocol.impl.AuthenticatedMethodsUtils;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import com.iwifi.sdk.tools.DataObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.androidpn.client.LogUtil;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.util.EntityUtils;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class AndroidpnStatusReceiver extends BroadcastReceiver
{

    private static final String LOG_TAG = LogUtil.makeLogTag(com/pubinfo/androidpn/client/AndroidpnStatusReceiver);
    private static final String STR_CITY_ONE = "\u5E02";
    private static final String STR_CITY_SEC = "\u5730\u533A";
    private static final String STR_PROVINCE = "\u7701";
    private static SDKCommonMotheds commonMethods;
    private static AndroidpnStatusReceiver mInstance;
    String Address;
    String Countrycode;
    String Latitude;
    String Longitude;
    String PhoneNum;
    private LocalBroadcastManager lbm;

    public AndroidpnStatusReceiver()
    {
        Countrycode = null;
        PhoneNum = null;
        Latitude = null;
        Longitude = null;
        Address = null;
    }

    private void UploadUserPushInfo(final Context mcontext, final String phoneNum, final String countrycode, final String imei, final String loc_latitude, final String loc_longitude, final String loc_city, 
            final String cur_ssid, final String androidpn_usrName, final String androidpn_psw, final String appkey, final String secret)
    {
        (new Thread() {

            final AndroidpnStatusReceiver this$0;
            private final String val$androidpn_psw;
            private final String val$androidpn_usrName;
            private final String val$appkey;
            private final String val$countrycode;
            private final String val$cur_ssid;
            private final String val$imei;
            private final String val$loc_city;
            private final String val$loc_latitude;
            private final String val$loc_longitude;
            private final Context val$mcontext;
            private final String val$phoneNum;
            private final String val$secret;

            public void run()
            {
                Object obj;
                Object obj1;
                super.run();
                obj = SDKCommonMotheds.getSign((new StringBuilder("authid=")).append(phoneNum).append("&countrycode=").append(countrycode).append("&imei=").append(imei).append("&lat=").append(loc_latitude).append("&lng=").append(loc_longitude).append("&city=").append(loc_city).append("&ssid=").append(cur_ssid).append("&terversion=").append(ConstantUtils.ANDROID_OS_VERSION).append("&appversion=").append("2.0").append("&tertype=android").append("&username=").append(androidpn_usrName).append("&password=").append(androidpn_psw).append("&appkey=").append(appkey).append("&secret=").append(secret).toString());
                obj1 = new ArrayList();
                ((List) (obj1)).add(new DataObject("authid", phoneNum));
                ((List) (obj1)).add(new DataObject("countrycode", countrycode));
                ((List) (obj1)).add(new DataObject("imei", imei));
                ((List) (obj1)).add(new DataObject("lat", loc_latitude));
                ((List) (obj1)).add(new DataObject("lng", loc_longitude));
                ((List) (obj1)).add(new DataObject("city", loc_city));
                ((List) (obj1)).add(new DataObject("ssid", cur_ssid));
                ((List) (obj1)).add(new DataObject("terversion", (new StringBuilder()).append(ConstantUtils.ANDROID_OS_VERSION).toString()));
                ((List) (obj1)).add(new DataObject("appversion", "2.0"));
                ((List) (obj1)).add(new DataObject("tertype", "android"));
                ((List) (obj1)).add(new DataObject("username", androidpn_usrName));
                ((List) (obj1)).add(new DataObject("password", androidpn_psw));
                ((List) (obj1)).add(new DataObject("appkey", appkey));
                ((List) (obj1)).add(new DataObject("sign", ((String) (obj))));
                obj = null;
                try
                {
                    obj1 = AuthenticatedMethodsUtils.syncPostConnect("http://app2c.51awifi.com/PubInfoWifiInterface/sdk/", "uppushinfo.html", "", "", null, com.iwifi.sdk.protocol.impl.AuthenticatedMethodsUtils.PostEntityTypeEnum.POST_ENTITY_TYPE_UrlEncodedFormEntity, ((List) (obj1)), null);
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1)
                {
                    ((HttpHostConnectException) (obj1)).printStackTrace();
                    continue; /* Loop/switch isn't completed */
                }
                obj = obj1;
_L11:
                if (obj == null || ((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200) goto _L2; else goto _L1
_L1:
                mcontext.getSharedPreferences("location_preferences", 0).edit().putBoolean("pushInfo_updated_flag", true).putString("latest_authen_phoneNum", PhoneNum).putString("Location_Address", Address).commit();
                obj1 = ((HttpResponse) (obj)).getFirstHeader("Content-type");
                if (obj1 == null) goto _L4; else goto _L3
_L3:
                if (((Header) (obj1)).getValue() == null || !((Header) (obj1)).getValue().startsWith("text/html")) goto _L4; else goto _L5
_L5:
                obj = SDKCommonMotheds.JSoupHTMLParse(((HttpResponse) (obj)).getEntity().getContent());
                obj1 = ((Document) (obj)).getElementsByTag("body");
                if (obj1 == null) goto _L7; else goto _L6
_L6:
                ((Elements) (obj1)).text();
_L2:
                return;
_L7:
                try
                {
                    (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"HTML's content cann't be recognized. That is:")).append(((Document) (obj)).toString()).append("\"}").toString();
                    return;
                }
                catch (IllegalStateException illegalstateexception)
                {
                    illegalstateexception.printStackTrace();
                    return;
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return;
                }
                catch (ParseException parseexception)
                {
                    parseexception.printStackTrace();
                }
                break MISSING_BLOCK_LABEL_727;
_L4:
                if (obj1 == null) goto _L2; else goto _L8
_L8:
                if (((Header) (obj1)).getValue() == null || !((Header) (obj1)).getValue().startsWith("application/json")) goto _L2; else goto _L9
_L9:
                EntityUtils.toString(((HttpResponse) (obj)).getEntity());
                return;
                return;
                if (true) goto _L11; else goto _L10
_L10:
            }

            
            {
                this$0 = AndroidpnStatusReceiver.this;
                phoneNum = s;
                countrycode = s1;
                imei = s2;
                loc_latitude = s3;
                loc_longitude = s4;
                loc_city = s5;
                cur_ssid = s6;
                androidpn_usrName = s7;
                androidpn_psw = s8;
                appkey = s9;
                secret = s10;
                mcontext = context;
                super();
            }
        }).start();
    }

    public static String cityNameFilter(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (s.contains("\u7701"))
        {
            String s2 = s.split("\u7701", 2)[0];
            String s1 = s.split("\u7701", 2)[1];
            if (s1.contains("\u5E02"))
            {
                s = (new StringBuilder(String.valueOf(s1.split("\u5E02", 2)[0]))).append("\u5E02").toString();
            } else
            {
                s = s1;
                if (s1.contains("\u5730\u533A"))
                {
                    s = (new StringBuilder(String.valueOf(s1.split("\u5E02", 2)[0]))).append("\u5730\u533A").toString();
                }
            }
            s = (new StringBuilder(String.valueOf(s2))).append("\u7701").append(s).toString();
        } else
        {
            if (!s.contains("\u5E02"))
            {
                continue; /* Loop/switch isn't completed */
            }
            s = (new StringBuilder(String.valueOf(s.split("\u5E02", 2)[0]))).append("\u5E02").toString();
        }
_L4:
        return s;
        if (!s.contains("\u5730\u533A")) goto _L1; else goto _L3
_L3:
        s = (new StringBuilder(String.valueOf(s.split("\u5730\u533A", 2)[0]))).append("\u5730\u533A").toString();
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    private boolean determineUploadPushInfoCondition(Context context, String s, String s1)
    {
        Object obj = context.getSharedPreferences("location_preferences", 0);
        if (!((SharedPreferences) (obj)).getBoolean("pushInfo_updated_flag", false))
        {
            return true;
        }
        context = ((SharedPreferences) (obj)).getString("latest_authen_phoneNum", "");
        obj = cityNameFilter(((SharedPreferences) (obj)).getString("Location_Address", ""));
        return ((String) (obj)).equals("") || context.equals("") || !context.equals(s) || !((String) (obj)).equals(cityNameFilter(s1));
    }

    public static AndroidpnStatusReceiver getReceiverInstance()
    {
        if (mInstance == null)
        {
            mInstance = new AndroidpnStatusReceiver();
        }
        return mInstance;
    }

    public final void doRegister(Context context)
    {
        commonMethods = new SDKCommonMotheds(context);
        lbm = LocalBroadcastManager.getInstance(context);
        context = new IntentFilter();
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_LOGINED");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING");
        context.addAction("org.androidpn.client.ANDROIDPN_STATUS_CONNECTING");
        context.addAction("org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY");
        lbm.registerReceiver(this, context);
    }

    public final void doUnregester(Context context)
    {
        lbm.unregisterReceiver(this);
    }

    public final void loadParams(String s, String s1, String s2, String s3, String s4)
    {
        Countrycode = s;
        PhoneNum = s1;
        Latitude = s2;
        Longitude = s3;
        Address = s4;
    }

    public void onReceive(Context context, Intent intent)
    {
        Object obj;
        String s;
        String s1;
        intent = intent.getAction();
        Log.d(LOG_TAG, intent);
        if (!"org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS".equals(intent) && !"org.androidpn.client.ANDROIDPN_STATUS_LOGINED".equals(intent))
        {
            break MISSING_BLOCK_LABEL_150;
        }
        Log.v(LOG_TAG, "test ---- APN Login Success ---- enter ");
        obj = context.getSharedPreferences("client_preferences", 0);
        Log.v(LOG_TAG, " push loaction  others ");
        intent = ((SharedPreferences) (obj)).getString("XMPP_USERNAME", "");
        obj = ((SharedPreferences) (obj)).getString("XMPP_PASSWORD", "");
        s = commonMethods.getIMEICode();
        s1 = commonMethods.getConnectedWifiSSId();
        if (determineUploadPushInfoCondition(context, PhoneNum, Address))
        {
            UploadUserPushInfo(context, PhoneNum, Countrycode, s, Latitude, Longitude, cityNameFilter(Address), s1, intent, ((String) (obj)), "10001000", "513add10608f815f4d7eaf7c6376097b");
        }
_L1:
        return;
        if ("org.androidpn.client.ANDROIDPN_STATUS_CONNECTED".equals(intent))
        {
            Log.v(LOG_TAG, "test ---- APN connected ---- enter ");
            return;
        }
        if ("org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED".equals(intent))
        {
            Log.v(LOG_TAG, "test ---- APN Failed ---- enter ");
            return;
        }
        if ("org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT".equals(intent))
        {
            Log.v(LOG_TAG, "test ---- APN Disconnect ---- enter ");
            return;
        }
        if ("org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING".equals(intent))
        {
            Log.v(LOG_TAG, "test ---- APN reconnecting ---- enter ");
            return;
        }
        if ("org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY".equals(intent))
        {
            lbm.sendBroadcast(new Intent("org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS"));
            return;
        }
        if ("org.androidpn.client.ANDROIDPN_STATUS_CONNECTING".equals(intent))
        {
            Log.v(LOG_TAG, "test ---- APN connecting ---- enter ");
            return;
        }
          goto _L1
        context;
    }

}
