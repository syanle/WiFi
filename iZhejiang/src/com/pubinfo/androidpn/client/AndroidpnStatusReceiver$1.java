// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.androidpn.client;

import android.content.Context;
import android.content.SharedPreferences;
import com.iwifi.sdk.data.ConstantUtils;
import com.iwifi.sdk.protocol.impl.AuthenticatedMethodsUtils;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import com.iwifi.sdk.tools.DataObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.util.EntityUtils;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

// Referenced classes of package com.pubinfo.androidpn.client:
//            AndroidpnStatusReceiver

class val.mcontext extends Thread
{

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
        obj = SDKCommonMotheds.getSign((new StringBuilder("authid=")).append(val$phoneNum).append("&countrycode=").append(val$countrycode).append("&imei=").append(val$imei).append("&lat=").append(val$loc_latitude).append("&lng=").append(val$loc_longitude).append("&city=").append(val$loc_city).append("&ssid=").append(val$cur_ssid).append("&terversion=").append(ConstantUtils.ANDROID_OS_VERSION).append("&appversion=").append("2.0").append("&tertype=android").append("&username=").append(val$androidpn_usrName).append("&password=").append(val$androidpn_psw).append("&appkey=").append(val$appkey).append("&secret=").append(val$secret).toString());
        obj1 = new ArrayList();
        ((List) (obj1)).add(new DataObject("authid", val$phoneNum));
        ((List) (obj1)).add(new DataObject("countrycode", val$countrycode));
        ((List) (obj1)).add(new DataObject("imei", val$imei));
        ((List) (obj1)).add(new DataObject("lat", val$loc_latitude));
        ((List) (obj1)).add(new DataObject("lng", val$loc_longitude));
        ((List) (obj1)).add(new DataObject("city", val$loc_city));
        ((List) (obj1)).add(new DataObject("ssid", val$cur_ssid));
        ((List) (obj1)).add(new DataObject("terversion", (new StringBuilder()).append(ConstantUtils.ANDROID_OS_VERSION).toString()));
        ((List) (obj1)).add(new DataObject("appversion", "2.0"));
        ((List) (obj1)).add(new DataObject("tertype", "android"));
        ((List) (obj1)).add(new DataObject("username", val$androidpn_usrName));
        ((List) (obj1)).add(new DataObject("password", val$androidpn_psw));
        ((List) (obj1)).add(new DataObject("appkey", val$appkey));
        ((List) (obj1)).add(new DataObject("sign", ((String) (obj))));
        obj = null;
        try
        {
            obj1 = AuthenticatedMethodsUtils.syncPostConnect("http://app2c.51awifi.com/PubInfoWifiInterface/sdk/", "uppushinfo.html", "", "", null, com.iwifi.sdk.protocol.impl.PostEntityTypeEnum.POST_ENTITY_TYPE_UrlEncodedFormEntity, ((List) (obj1)), null);
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
        val$mcontext.getSharedPreferences("location_preferences", 0).edit().utBoolean("pushInfo_updated_flag", true).utString("latest_authen_phoneNum", PhoneNum).utString("Location_Address", Address).ommit();
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

    ostEntityTypeEnum()
    {
        this$0 = final_androidpnstatusreceiver;
        val$phoneNum = s;
        val$countrycode = s1;
        val$imei = s2;
        val$loc_latitude = s3;
        val$loc_longitude = s4;
        val$loc_city = s5;
        val$cur_ssid = s6;
        val$androidpn_usrName = s7;
        val$androidpn_psw = s8;
        val$appkey = s9;
        val$secret = s10;
        val$mcontext = Context.this;
        super();
    }
}
