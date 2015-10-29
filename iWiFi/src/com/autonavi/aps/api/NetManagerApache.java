// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class NetManagerApache
{

    private static NetManagerApache b = null;
    private Context a;

    private NetManagerApache()
    {
    }

    public static NetManagerApache getInstance(Context context)
    {
        if (b == null)
        {
            NetManagerApache netmanagerapache = new NetManagerApache();
            b = netmanagerapache;
            netmanagerapache.a = context.getApplicationContext();
        }
        return b;
    }

    public static String intToIpAddr(int i)
    {
        return (new StringBuilder(String.valueOf(i & 0xff))).append(".").append(i >> 8 & 0xff).append(".").append(i >> 16 & 0xff).append(".").append(i >>> 24).toString();
    }

    public String doPostXmlAsString(String s, String s1)
    {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i;
        int j;
        int k;
        int l;
        StringBuffer stringbuffer = new StringBuffer();
        Object obj1 = null;
        obj = null;
        Object obj6 = null;
        Object obj7 = null;
        obj3 = null;
        Object obj5 = null;
        obj4 = null;
        HttpResponse httpresponse;
        Object obj8;
        Header header;
        try
        {
            obj2 = getHttpClient();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj2 = obj4;
            s = ((String) (obj3));
            s1 = ((String) (obj1));
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj2 = null;
            obj1 = obj5;
            s1 = ((String) (obj));
            obj = obj2;
            continue; /* Loop/switch isn't completed */
        }
        obj = obj2;
        obj2 = obj6;
        obj1 = obj7;
        try
        {
            s = new HttpPost(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s1 = ((String) (obj));
            obj = s;
            obj2 = obj4;
            s = ((String) (obj1));
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj1 = obj5;
            s1 = ((String) (obj2));
            continue; /* Loop/switch isn't completed */
        }
        obj2 = obj6;
        obj1 = obj7;
        s1 = new StringEntity(s1, "UTF-8");
        obj2 = obj6;
        obj1 = obj7;
        s1.setContentType("text/xml");
        obj2 = obj6;
        obj1 = obj7;
        s.setHeader("Content-Type", "application/soap+xml;charset=UTF-8");
        obj2 = obj6;
        obj1 = obj7;
        s.setEntity(s1);
        obj2 = obj6;
        obj1 = obj7;
        httpresponse = ((HttpClient) (obj)).execute(s);
        s = "utf-8";
        obj2 = obj6;
        obj1 = obj7;
        obj3 = httpresponse.getHeaders("Content-Type");
        s1 = s;
        if (obj3 == null) goto _L2; else goto _L1
_L1:
        obj2 = obj6;
        obj1 = obj7;
        k = obj3.length;
        i = 0;
          goto _L3
_L2:
        s = null;
        obj3 = null;
        obj2 = obj6;
        obj1 = obj7;
        obj8 = httpresponse.getHeaders("Content-Encoding");
        if (obj8 == null) goto _L5; else goto _L4
_L4:
        obj2 = obj6;
        obj1 = obj7;
        j = obj8.length;
        i = 0;
          goto _L6
_L5:
        obj2 = obj6;
        obj1 = obj7;
        if (httpresponse.getStatusLine().getStatusCode() != 200) goto _L8; else goto _L7
_L7:
        obj2 = obj6;
        obj1 = obj7;
        s = httpresponse.getEntity().getContent();
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_313;
        }
        obj2 = s;
        obj1 = s;
        if (!((String) (obj3)).equals("gzip"))
        {
            break MISSING_BLOCK_LABEL_313;
        }
        obj2 = s;
        obj1 = s;
        s = new GZIPInputStream(s);
        s1 = new BufferedReader(new InputStreamReader(s, s1));
_L17:
        obj1 = s1.readLine();
        if (obj1 != null) goto _L10; else goto _L9
_L9:
        if (s1 != null)
        {
            s1.close();
        }
        if (s != null)
        {
            s.close();
        }
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
        }
        return stringbuffer.toString();
_L22:
        obj2 = obj6;
        obj1 = obj7;
        obj8 = obj3[i].getValue();
        s1 = s;
        if (obj8 == null) goto _L12; else goto _L11
_L11:
        obj2 = obj6;
        obj1 = obj7;
        s1 = s;
        if (((String) (obj8)).length() <= 0) goto _L12; else goto _L13
_L13:
        obj2 = obj6;
        obj1 = obj7;
        obj8 = ((String) (obj8)).split(";");
        s1 = s;
        if (obj8 == null) goto _L12; else goto _L14
_L14:
        obj2 = obj6;
        obj1 = obj7;
        s1 = s;
        if (obj8.length <= 0) goto _L12; else goto _L15
_L15:
        obj2 = obj6;
        obj1 = obj7;
        l = obj8.length;
        j = 0;
          goto _L16
_L26:
        s1 = obj8[j];
        obj2 = obj6;
        obj1 = obj7;
        if (!s1.trim().toLowerCase().startsWith("charset="))
        {
            break MISSING_BLOCK_LABEL_845;
        }
        obj2 = obj6;
        obj1 = obj7;
        s1 = s1.trim().toLowerCase().replace("charset=", "");
          goto _L12
_L24:
        header = obj8[i];
        obj3 = s;
        obj2 = obj6;
        obj1 = obj7;
        if (header.getValue() == null)
        {
            break MISSING_BLOCK_LABEL_606;
        }
        obj3 = s;
        obj2 = obj6;
        obj1 = obj7;
        if (header.getValue().length() <= 0)
        {
            break MISSING_BLOCK_LABEL_606;
        }
        obj2 = obj6;
        obj1 = obj7;
        obj3 = header.getValue();
        i++;
        s = ((String) (obj3));
        continue; /* Loop/switch isn't completed */
_L10:
        stringbuffer.append(((String) (obj1)));
          goto _L17
        obj1;
        obj2 = s1;
        s1 = ((String) (obj));
        obj = obj1;
_L20:
        throw obj;
        obj3;
        obj = s1;
        s1 = s;
        obj1 = obj2;
        s = ((String) (obj3));
_L19:
        if (obj1 != null)
        {
            ((BufferedReader) (obj1)).close();
        }
        if (s1 != null)
        {
            s1.close();
        }
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
        }
        throw s;
        obj1;
        s1 = s;
        s = ((String) (obj1));
        obj1 = obj5;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj2 = s;
        s = ((String) (obj1));
        obj1 = s1;
        s1 = ((String) (obj2));
        if (true) goto _L19; else goto _L18
        Exception exception;
        exception;
        s1 = ((String) (obj));
        obj = exception;
        obj2 = obj4;
        if (true) goto _L20; else goto _L8
_L8:
        s = null;
        s1 = null;
          goto _L9
_L3:
        if (i < k) goto _L22; else goto _L21
_L21:
        s1 = s;
          goto _L2
_L6:
        if (i < j) goto _L24; else goto _L23
_L23:
        obj3 = s;
          goto _L5
_L16:
        if (j < l) goto _L26; else goto _L25
_L25:
        s1 = s;
_L12:
        i++;
        s = s1;
          goto _L3
        j++;
          goto _L16
    }

    public HttpClient getHttpClient()
    {
        DefaultHttpClient defaulthttpclient;
        boolean flag;
        defaulthttpclient = new DefaultHttpClient();
        Object obj = (ConnectivityManager)a.getSystemService("connectivity");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null || !((NetworkInfo) (obj)).isAvailable() || !((NetworkInfo) (obj)).isConnected() || !((NetworkInfo) (obj)).getTypeName().equalsIgnoreCase("wifi"))
        {
            break MISSING_BLOCK_LABEL_208;
        }
        flag = true;
_L1:
        if (!flag)
        {
            Object obj1 = Proxy.getHost(a);
            if (obj1 != null && ((String) (obj1)).length() > 0)
            {
                String s = Build.MODEL;
                if (s != null && (s.indexOf("OMAP_SS") >= 0 || s.indexOf("omap_ss") >= 0 || s.indexOf("MT810") >= 0 || s.indexOf("MT720") >= 0 || s.indexOf("GT-I9008") >= 0))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    obj1 = new HttpHost(((String) (obj1)), Proxy.getPort(a));
                    defaulthttpclient.getParams().setParameter("http.route.default-proxy", obj1);
                }
            }
        }
        HttpConnectionParams.setConnectionTimeout(defaulthttpclient.getParams(), 20000);
        HttpConnectionParams.setSoTimeout(defaulthttpclient.getParams(), 20000);
        return defaulthttpclient;
        flag = false;
          goto _L1
    }

}
