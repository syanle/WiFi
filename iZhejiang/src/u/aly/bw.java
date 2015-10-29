// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

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
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package u.aly:
//            br, cd, cc, bx, 
//            by

public class bw
{

    private static final String a = u/aly/bw.getName();
    private Map b;

    public bw()
    {
    }

    private static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 8192);
        stringbuilder = new StringBuilder();
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            Object obj;
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                br.b(a, "Caught IOException in convertStreamToString()", inputstream);
                return null;
            }
            return stringbuilder.toString();
        }
        stringbuilder.append((new StringBuilder(String.valueOf(s))).append("\n").toString());
          goto _L1
        obj;
        br.b(a, "Caught IOException in convertStreamToString()", ((Exception) (obj)));
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            br.b(a, "Caught IOException in convertStreamToString()", inputstream);
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
            br.b(a, "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        throw obj;
    }

    private JSONObject a(String s)
    {
        int i = (new Random()).nextInt(1000);
        String s1;
        s1 = System.getProperty("line.separator");
        if (s.length() > 1)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        br.b(a, (new StringBuilder(String.valueOf(i))).append(":\tInvalid baseUrl.").toString());
        return null;
        Object obj;
        br.a(a, (new StringBuilder(String.valueOf(i))).append(":\tget: ").append(s).toString());
        obj = new HttpGet(s);
        if (b == null || b.size() <= 0) goto _L2; else goto _L1
_L1:
        Object obj1 = b.keySet().iterator();
_L16:
        if (((Iterator) (obj1)).hasNext()) goto _L3; else goto _L2
_L2:
        obj1 = (new DefaultHttpClient(b())).execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        if (((HttpResponse) (obj1)).getStatusLine().getStatusCode() != 200) goto _L5; else goto _L4
_L4:
        obj = ((HttpResponse) (obj1)).getEntity();
        if (obj == null) goto _L7; else goto _L6
_L6:
        try
        {
            obj = ((HttpEntity) (obj)).getContent();
            obj1 = ((HttpResponse) (obj1)).getFirstHeader("Content-Encoding");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tClientProtocolException,Failed to send message.").append(s).toString(), ((Exception) (obj)));
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s).toString(), ((Exception) (obj)));
            return null;
        }
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        if (!((Header) (obj1)).getValue().equalsIgnoreCase("gzip")) goto _L9; else goto _L10
_L10:
        br.a(a, (new StringBuilder(String.valueOf(i))).append("  Use GZIPInputStream get data....").toString());
        obj = new GZIPInputStream(((InputStream) (obj)));
_L13:
        obj = a(((InputStream) (obj)));
        br.a(a, (new StringBuilder(String.valueOf(i))).append(":\tresponse: ").append(s1).append(((String) (obj))).toString());
        if (obj == null)
        {
            return null;
        }
          goto _L11
_L3:
        String s2 = (String)((Iterator) (obj1)).next();
        ((HttpGet) (obj)).addHeader(s2, (String)b.get(s2));
        continue; /* Loop/switch isn't completed */
_L9:
        if (obj1 == null) goto _L13; else goto _L12
_L12:
        if (!((Header) (obj1)).getValue().equalsIgnoreCase("deflate")) goto _L13; else goto _L14
_L14:
        br.a(a, (new StringBuilder(String.valueOf(i))).append("  Use InflaterInputStream get data....").toString());
        obj = new InflaterInputStream(((InputStream) (obj)));
          goto _L13
_L11:
        return new JSONObject(((String) (obj)));
_L5:
        br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tFailed to send message. StatusCode = ").append(((HttpResponse) (obj1)).getStatusLine().getStatusCode()).append(cd.a).append(s).toString());
_L7:
        return null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    private JSONObject a(String s, JSONObject jsonobject)
    {
        Object obj;
        String s1;
        boolean flag;
        int i;
        flag = true;
        s1 = jsonobject.toString();
        i = (new Random()).nextInt(1000);
        br.c(a, (new StringBuilder(String.valueOf(i))).append(":\trequest: ").append(s).append(cd.a).append(s1).toString());
        jsonobject = new HttpPost(s);
        obj = new DefaultHttpClient(b());
        if (!a())
        {
            break MISSING_BLOCK_LABEL_293;
        }
        s1 = cc.a(s1, Charset.defaultCharset().name());
        jsonobject.addHeader("Content-Encoding", "deflate");
        jsonobject.setEntity(new InputStreamEntity(new ByteArrayInputStream(s1), s1.length));
_L1:
        obj = ((HttpClient) (obj)).execute(jsonobject);
        jsonobject = ((HttpResponse) (obj)).getFirstHeader("Content-Type");
        boolean flag1;
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200)
        {
            flag = false;
        }
        flag1 = cd.a(jsonobject, "application/json");
        if (!flag || !flag1)
        {
            break MISSING_BLOCK_LABEL_391;
        }
        ArrayList arraylist;
        try
        {
            jsonobject = ((HttpResponse) (obj)).getEntity();
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tClientProtocolException,Failed to send message.").append(s).toString(), jsonobject);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s).toString(), jsonobject);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tIOException,Failed to send message.").append(s).toString(), jsonobject);
            return null;
        }
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_514;
        }
        jsonobject = jsonobject.getContent();
        obj = ((HttpResponse) (obj)).getFirstHeader("Content-Encoding");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        if (((Header) (obj)).getValue().equalsIgnoreCase("deflate"))
        {
            jsonobject = new InflaterInputStream(jsonobject);
        }
        jsonobject = a(((InputStream) (jsonobject)));
        br.a(a, (new StringBuilder(String.valueOf(i))).append(":\tresponse: ").append(cd.a).append(jsonobject).toString());
        if (jsonobject == null)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_382;
        arraylist = new ArrayList(1);
        arraylist.add(new BasicNameValuePair("content", s1));
        jsonobject.setEntity(new UrlEncodedFormEntity(arraylist, "UTF-8"));
          goto _L1
        return new JSONObject(jsonobject);
        br.c(a, (new StringBuilder(String.valueOf(i))).append(":\tFailed to send message. StatusCode = ").append(((HttpResponse) (obj)).getStatusLine().getStatusCode()).append(cd.a).append(s).toString());
        return null;
        return null;
    }

    private HttpParams b()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 20000);
        HttpProtocolParams.setUserAgent(basichttpparams, System.getProperty("http.agent"));
        return basichttpparams;
    }

    private void b(String s)
    {
        if (cd.d(s) || !(bx.c.equals(s.trim()) ^ bx.b.equals(s.trim())))
        {
            throw new RuntimeException((new StringBuilder("\u9A8C\u8BC1\u8BF7\u6C42\u65B9\u5F0F\u5931\u8D25[")).append(s).append("]").toString());
        } else
        {
            return;
        }
    }

    public bw a(Map map)
    {
        b = map;
        return this;
    }

    public by a(bx bx1, Class class1)
    {
        String s = bx1.c().trim();
        b(s);
        if (bx.c.equals(s))
        {
            bx1 = a(bx1.b());
        } else
        if (bx.b.equals(s))
        {
            bx1 = a(bx1.d, bx1.a());
        } else
        {
            bx1 = null;
        }
        if (bx1 == null)
        {
            return null;
        }
        bx1 = (by)class1.getConstructor(new Class[] {
            org/json/JSONObject
        }).newInstance(new Object[] {
            bx1
        });
        return bx1;
        bx1;
        br.b(a, "SecurityException", bx1);
_L2:
        return null;
        bx1;
        br.b(a, "NoSuchMethodException", bx1);
        continue; /* Loop/switch isn't completed */
        bx1;
        br.b(a, "IllegalArgumentException", bx1);
        continue; /* Loop/switch isn't completed */
        bx1;
        br.b(a, "InstantiationException", bx1);
        continue; /* Loop/switch isn't completed */
        bx1;
        br.b(a, "IllegalAccessException", bx1);
        continue; /* Loop/switch isn't completed */
        bx1;
        br.b(a, "InvocationTargetException", bx1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a()
    {
        return false;
    }

}
