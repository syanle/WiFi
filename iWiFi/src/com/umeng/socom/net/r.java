// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.net;

import android.text.TextUtils;
import com.umeng.socom.Log;
import com.umeng.socom.util.b;
import com.umeng.socom.util.f;
import com.umeng.socom.util.g;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ByteArrayBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socom.net:
//            s, t

public class r
{

    private static final String a = com/umeng/socom/net/r.getName();
    private Map b;
    private StringBuilder c;

    public r()
    {
    }

    private static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 8192);
        stringbuilder = new StringBuilder();
_L1:
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            Object obj;
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                Log.b(a, "Caught IOException in convertStreamToString()", inputstream);
                return null;
            }
            return stringbuilder.toString();
        }
        stringbuilder.append((new StringBuilder(String.valueOf(s1))).append("\n").toString());
          goto _L1
        obj;
        Log.b(a, "Caught IOException in convertStreamToString()", ((Exception) (obj)));
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.b(a, "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        return null;
        obj;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.b(a, "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        throw obj;
    }

    private JSONObject a(s s1)
    {
        String s2;
        int i;
        i = (new Random()).nextInt(1000);
        s2 = s1.e();
        System.getProperty("line.separator");
        if (s2.length() > 1)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        Log.b(a, (new StringBuilder(String.valueOf(i))).append(":\tInvalid baseUrl.").toString());
        return null;
        a((new StringBuilder(String.valueOf(i))).append(":\tget: ").append(s2).toString());
        s1 = new HttpGet(s2);
        s1.addHeader("Accept-Encoding", "gzip");
        if (b == null || b.size() <= 0) goto _L2; else goto _L1
_L1:
        Object obj = b.keySet().iterator();
_L16:
        if (((Iterator) (obj)).hasNext()) goto _L3; else goto _L2
_L2:
        obj = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj)), 10000);
        HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj)), 20000);
        obj = (new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj)))).execute(s1);
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200) goto _L5; else goto _L4
_L4:
        s1 = ((HttpResponse) (obj)).getEntity();
        if (s1 == null) goto _L7; else goto _L6
_L6:
        try
        {
            s1 = s1.getContent();
            obj = ((HttpResponse) (obj)).getFirstHeader("Content-Encoding");
        }
        // Misplaced declaration of an exception variable
        catch (s s1)
        {
            Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tClientProtocolException,Failed to send message.").append(s2).toString(), s1);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (s s1)
        {
            Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s2).toString(), s1);
            return null;
        }
        if (obj == null) goto _L9; else goto _L8
_L8:
        if (!((Header) (obj)).getValue().equalsIgnoreCase("gzip")) goto _L9; else goto _L10
_L10:
        Log.a(a, (new StringBuilder(String.valueOf(i))).append("  Use GZIPInputStream get data....").toString());
        s1 = new GZIPInputStream(s1);
_L13:
        s1 = com.umeng.socom.util.b.d(a(((InputStream) (s1))), "UTF-8").trim();
        if (s1 == null)
        {
            return null;
        }
          goto _L11
_L3:
        String s3 = (String)((Iterator) (obj)).next();
        s1.addHeader(s3, (String)b.get(s3));
        continue; /* Loop/switch isn't completed */
_L9:
        if (obj == null) goto _L13; else goto _L12
_L12:
        if (!((Header) (obj)).getValue().equalsIgnoreCase("deflate")) goto _L13; else goto _L14
_L14:
        Log.a(a, (new StringBuilder(String.valueOf(i))).append("  Use InflaterInputStream get data....").toString());
        s1 = new InflaterInputStream(s1);
          goto _L13
_L11:
        return new JSONObject(s1);
_L5:
        Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tFailed to get message.").append(s2).toString());
_L7:
        return null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    private JSONObject a(String s1, s s2)
    {
        int i;
        Object obj;
        HttpPost httppost;
        Object obj1;
        Map map;
        Iterator iterator;
        boolean flag;
        if (s2.d() == null)
        {
            obj = "";
        } else
        {
            obj = s2.d().toString();
        }
        i = (new Random()).nextInt(1000);
        System.getProperty("line.separator");
        httppost = new HttpPost(s1);
        obj1 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj1)), 10000);
        HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj1)), 30000);
        obj1 = new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj1)));
        String s3;
        byte abyte0[];
        ByteArrayBody bytearraybody;
        try
        {
            map = s2.c();
        }
        // Misplaced declaration of an exception variable
        catch (s s2)
        {
            Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tClientProtocolException,Failed to send message.").append(s1).toString(), s2);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (s s2)
        {
            Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s1).toString(), s2);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (s s2)
        {
            Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s1).toString(), s2);
            s2.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.b(a, (new StringBuilder("### POST response decrypt Failed!  ")).append(s1.toString()).toString());
            s1.printStackTrace();
            return null;
        }
        if (map == null) goto _L2; else goto _L1
_L1:
        if (map.size() <= 0) goto _L2; else goto _L3
_L3:
        obj = new MultipartEntity();
        iterator = map.keySet().iterator();
_L21:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        map = s2.b();
        if (map == null) goto _L7; else goto _L6
_L6:
        if (map.size() <= 0) goto _L7; else goto _L8
_L8:
        iterator = map.keySet().iterator();
_L16:
        if (iterator.hasNext()) goto _L9; else goto _L7
_L7:
        httppost.setEntity(((HttpEntity) (obj)));
_L19:
        obj = ((HttpClient) (obj1)).execute(httppost);
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200) goto _L11; else goto _L10
_L10:
        s2 = ((HttpResponse) (obj)).getEntity();
        if (s2 == null) goto _L13; else goto _L12
_L12:
        s2 = s2.getContent();
        obj = ((HttpResponse) (obj)).getFirstHeader("Content-Encoding");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_263;
        }
        if (((Header) (obj)).getValue().equalsIgnoreCase("deflate"))
        {
            s2 = new InflaterInputStream(s2);
        }
        s2 = com.umeng.socom.util.b.d(a(((InputStream) (s2))), "UTF-8").trim();
        flag = TextUtils.isEmpty(s2);
        if (flag)
        {
            return null;
        }
          goto _L14
_L5:
        s3 = (String)iterator.next();
        ((MultipartEntity) (obj)).addPart(s3, new StringBody(map.get(s3).toString(), Charset.defaultCharset()));
        continue; /* Loop/switch isn't completed */
_L9:
        s3 = (String)iterator.next();
        s2 = (s.a)map.get(s3);
        abyte0 = ((s.a) (s2)).b;
        if (abyte0 == null) goto _L16; else goto _L15
_L15:
        if (abyte0.length < 1) goto _L16; else goto _L17
_L17:
        if (!TextUtils.isEmpty(((s.a) (s2)).a))
        {
            break MISSING_BLOCK_LABEL_593;
        }
        s2 = (new StringBuilder()).append(System.currentTimeMillis()).toString();
_L18:
        bytearraybody = new ByteArrayBody(abyte0, s2);
        ((MultipartEntity) (obj)).addPart(s3, bytearraybody);
        Log.a(a, (new StringBuilder(String.valueOf(i))).append(":\tbody:  ").append(s3).append("=").append(bytearraybody).toString());
        a((new StringBuilder(String.valueOf(i))).append(":\tbody:  ").append(s3).append("=[").append(s2).append("]").toString());
          goto _L16
        s2 = ((s.a) (s2)).a;
          goto _L18
_L2:
label0:
        {
            if (!a())
            {
                break label0;
            }
            s2 = f.a((new StringBuilder("content=")).append(((String) (obj))).toString(), Charset.defaultCharset().toString());
            httppost.addHeader("Content-Encoding", "deflate");
            httppost.setEntity(new InputStreamEntity(new ByteArrayInputStream(s2), s2.length));
        }
          goto _L19
        s2 = new ArrayList(1);
        s2.add(new BasicNameValuePair("content", ((String) (obj))));
        httppost.setEntity(new UrlEncodedFormEntity(s2, "UTF-8"));
          goto _L19
_L14:
        return new JSONObject(s2);
_L11:
        Log.c(a, (new StringBuilder(String.valueOf(i))).append(":\tFailed to send message.").append(s1).toString());
        return null;
_L13:
        return null;
        if (true) goto _L21; else goto _L20
_L20:
    }

    private void a(String s1)
    {
        c.append(s1);
    }

    private void b(String s1)
    {
        if (g.c(s1) || !(s.h.equals(s1.trim()) ^ com.umeng.socom.net.s.g.equals(s1.trim())))
        {
            throw new RuntimeException((new StringBuilder("\u9A8C\u8BC1\u8BF7\u6C42\u65B9\u5F0F\u5931\u8D25[")).append(s1).append("]").toString());
        } else
        {
            return;
        }
    }

    public r a(Map map)
    {
        b = map;
        return this;
    }

    public t a(s s1, Class class1)
    {
        String s2 = s1.f().trim();
        b(s2);
        c = new StringBuilder();
        if (s.h.equals(s2))
        {
            s1 = a(s1);
        } else
        if (com.umeng.socom.net.s.g.equals(s2))
        {
            s1 = a(s1.i, s1);
        } else
        {
            s1 = null;
        }
        if (s1 == null)
        {
            return null;
        }
        s1 = (t)class1.getConstructor(new Class[] {
            org/json/JSONObject
        }).newInstance(new Object[] {
            s1
        });
        return s1;
        s1;
        Log.b(a, "SecurityException", s1);
_L2:
        return null;
        s1;
        Log.b(a, "NoSuchMethodException", s1);
        continue; /* Loop/switch isn't completed */
        s1;
        Log.b(a, "IllegalArgumentException", s1);
        continue; /* Loop/switch isn't completed */
        s1;
        Log.b(a, "InstantiationException", s1);
        continue; /* Loop/switch isn't completed */
        s1;
        Log.b(a, "IllegalAccessException", s1);
        continue; /* Loop/switch isn't completed */
        s1;
        Log.b(a, "InvocationTargetException", s1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a()
    {
        return false;
    }

}
