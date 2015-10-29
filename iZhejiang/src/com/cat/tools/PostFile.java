// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.ta.util.http.Tools;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpConnectionManager;
import org.apache.commons.httpclient.HttpVersion;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.multipart.FilePart;
import org.apache.commons.httpclient.methods.multipart.MultipartRequestEntity;
import org.apache.commons.httpclient.methods.multipart.Part;
import org.apache.commons.httpclient.methods.multipart.StringPart;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpMethodParams;

// Referenced classes of package com.cat.tools:
//            HttpConf

public class PostFile
{

    static String actionUrl;
    static String mLocalVersionName;
    static long nowTime;
    static String startTime;
    static long time;
    protected static WifiManager wifiMgr = null;

    public PostFile()
    {
    }

    public static String getLocalMacAddress(Context context)
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)context.getApplicationContext().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public static String upload(Map map, Map map1, String s, Context context)
        throws IOException
    {
        int i;
        PostMethod postmethod = new PostMethod(actionUrl);
        postmethod.getParams().setContentCharset("UTF-8");
        Object obj = context.getPackageManager();
        String s1;
        try
        {
            mLocalVersionName = ((PackageManager) (obj)).getPackageInfo(context.getPackageName(), 1).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        obj = (new StringBuilder(String.valueOf(context.getPackageName()))).append("+").append(mLocalVersionName).append("+android+").append(android.os.Build.VERSION.RELEASE).toString();
        nowTime = System.currentTimeMillis();
        startTime = context.getSharedPreferences("TimeDifference", 0).getString("difftime", "");
        if (startTime.equals(""))
        {
            time = nowTime;
        } else
        {
            time = nowTime + Long.parseLong(startTime);
        }
        s1 = s.split(";")[0];
        s = s.split(";")[1];
        s1 = Tools.getSign((new StringBuilder("user-agent=")).append(((String) (obj))).append("&action=").append(s).append("&termac=").append(getLocalMacAddress(context)).append("&tertype=android").append("&timestamp=").append(Long.toString(time)).append("&appkey=").append(context.getString(0x7f060001)).append("&secret=").append(context.getString(0x7f060002)).append("&").toString());
        postmethod.addRequestHeader("user-agent", ((String) (obj)));
        postmethod.addRequestHeader("action", s);
        postmethod.addRequestHeader("termac", getLocalMacAddress(context));
        postmethod.addRequestHeader("tertype", "android");
        postmethod.addRequestHeader("timestamp", Long.toString(time));
        postmethod.addRequestHeader("appkey", context.getString(0x7f060001));
        postmethod.addRequestHeader("sign", s1);
        s = postmethod.getRequestCharSet();
        context = new Part[map.size() + map1.size()];
        i = 0;
        map1 = map1.entrySet().iterator();
_L3:
        if (map1.hasNext()) goto _L2; else goto _L1
_L1:
        map = map.entrySet().iterator();
_L4:
        if (!map.hasNext())
        {
            obj = new HttpClient();
            postmethod.setRequestEntity(new MultipartRequestEntity(context, postmethod.getParams()));
            map = new HttpClientParams();
            map.setParameter("http.useragent", "Mozilla/4.0 (compatible; FIREFOX 9.0; IBM AIX 5)");
            map.setHttpElementCharset(s);
            map.setConnectionManagerTimeout(5000L);
            map.setVersion(HttpVersion.HTTP_1_1);
            i = ((HttpClient) (obj)).executeMethod(postmethod);
            map1 = "";
            map = map1;
            java.util.Map.Entry entry;
            if (i == 200)
            {
                try
                {
                    map = postmethod.getResponseBodyAsString();
                }
                // Misplaced declaration of an exception variable
                catch (Map map)
                {
                    map.printStackTrace();
                    map = map1;
                }
            }
            postmethod.releaseConnection();
            ((HttpClient) (obj)).getHttpConnectionManager().closeIdleConnections(0L);
            return map;
        }
        break MISSING_BLOCK_LABEL_570;
_L2:
        entry = (java.util.Map.Entry)map1.next();
        context[i] = new FilePart((String)entry.getKey(), (File)entry.getValue(), null, s);
        i++;
          goto _L3
        map1 = (java.util.Map.Entry)map.next();
        context[i] = new StringPart((String)map1.getKey(), (String)map1.getValue(), s);
        i++;
          goto _L4
    }

    static 
    {
        actionUrl = (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("upload.html").toString();
    }
}
