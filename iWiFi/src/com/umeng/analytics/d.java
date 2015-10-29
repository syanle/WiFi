// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import com.umeng.analytics.a.f;
import com.umeng.analytics.onlineconfig.c;
import com.umeng.common.Log;
import com.umeng.common.b;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics:
//            i, a, c, h, 
//            g, j, e

public abstract class d
    implements i, c
{
    private final class a
        implements Runnable
    {

        final d a;
        private Context b;

        public void run()
        {
            synchronized (d.a(a))
            {
                a.d.a(b);
            }
            return;
            exception2;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw exception2;
            }
            catch (Exception exception)
            {
                Log.b("MobclickAgent", "Exception occurred in ReportMessageHandler", exception);
                return;
            }
            catch (Error error)
            {
                Log.b("MobclickAgent", (new StringBuilder()).append("Error : ").append(error.getMessage()).toString());
            }
            try
            {
                com.umeng.analytics.j.j(b);
                return;
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
            return;
        }

        a(Context context)
        {
            a = d.this;
            super();
            b = context.getApplicationContext();
        }
    }

    private final class b
        implements Runnable
    {

        final d a;
        private Context b;

        public void run()
        {
            synchronized (d.a(a))
            {
                d.a(a, b);
            }
            return;
            exception2;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw exception2;
            }
            catch (Exception exception)
            {
                Log.b("MobclickAgent", "Exception occurred in ReportMessageHandler", exception);
                return;
            }
            catch (Error error)
            {
                Log.b("MobclickAgent", (new StringBuilder()).append("Error : ").append(error.getMessage()).toString());
            }
            try
            {
                com.umeng.analytics.j.j(b);
                return;
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
            return;
        }

        b(Context context)
        {
            a = d.this;
            super();
            b = context.getApplicationContext();
        }
    }


    private final com.umeng.analytics.a a = new com.umeng.analytics.a();
    private final Object b = new Object();
    private final Handler c;
    protected final com.umeng.analytics.c d = new com.umeng.analytics.c();
    protected final f e = new f();
    protected final int f = 1;
    protected final int g = 2;
    protected final int h = 3;
    protected final int i = 4;
    protected final int j = 5;
    String k;
    String l;
    private final String m = "body";
    private final String n = "header";
    private int o;
    private long p;
    private long q;
    private long r;
    private boolean s;

    public d()
    {
        o = -1;
        p = -1L;
        q = -1L;
        r = -1L;
        k = null;
        l = null;
        s = false;
        HandlerThread handlerthread = new HandlerThread("MobclickAgent");
        handlerthread.start();
        c = new Handler(handlerthread.getLooper());
    }

    static Object a(d d1)
    {
        return d1.b;
    }

    private String a(Context context, JSONObject jsonobject, String s1)
    {
        HttpPost httppost;
        Object obj;
        httppost = new HttpPost(s1);
        obj = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((HttpParams) (obj)), 10000);
        HttpConnectionParams.setSoTimeout(((HttpParams) (obj)), 30000);
        obj = new DefaultHttpClient(((HttpParams) (obj)));
        httppost.addHeader("X-Umeng-Sdk", c(context));
        context = com.umeng.analytics.h.a(context);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        context = new HttpHost(context, 80);
        ((HttpClient) (obj)).getParams().setParameter("http.route.default-proxy", context);
        context = jsonobject.toString();
        Log.a("MobclickAgent", context);
        if (!g.t)
        {
            break MISSING_BLOCK_LABEL_269;
        }
        context = com.umeng.common.util.f.a((new StringBuilder()).append("content=").append(context).toString(), "utf-8");
        httppost.addHeader("Content-Encoding", "deflate");
        httppost.setEntity(new InputStreamEntity(new ByteArrayInputStream(context), com.umeng.common.util.f.a));
_L1:
        context = new Date();
        jsonobject = ((HttpClient) (obj)).execute(httppost);
        r = (new Date()).getTime() - context.getTime();
        if (jsonobject.getStatusLine().getStatusCode() != 200)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        Log.a("MobclickAgent", (new StringBuilder()).append("Sent message to ").append(s1).toString());
        context = jsonobject.getEntity();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        return a(context.getContent());
        jsonobject = new ArrayList(1);
        jsonobject.add(new BasicNameValuePair("content", context));
        httppost.setEntity(new UrlEncodedFormEntity(jsonobject, "UTF-8"));
          goto _L1
        context;
        Log.b("MobclickAgent", "ClientProtocolException,Failed to send message.", context);
        return null;
        context;
        Log.b("MobclickAgent", "IOException,Failed to send message.", context);
        return null;
    }

    private String a(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 64);
        stringbuilder = new StringBuilder();
_L1:
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        stringbuilder.append((new StringBuilder()).append(s1).append("\n").toString());
          goto _L1
        Object obj;
        obj;
        Log.b("MobclickAgent", "Caught IOException in convertStreamToString()", ((Exception) (obj)));
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.b("MobclickAgent", "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        return null;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.b("MobclickAgent", "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        return stringbuilder.toString();
        obj;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.b("MobclickAgent", "Caught IOException in convertStreamToString()", inputstream);
            return null;
        }
        throw obj;
    }

    private void a(Context context)
    {
        if (o == -1)
        {
            int ai[] = com.umeng.analytics.j.i(context);
            o = ai[0];
            p = ai[1];
            if (o == 4 || o == 6)
            {
                q = com.umeng.analytics.j.e(context).getLong("last_report_time", -1L);
                return;
            }
        }
    }

    static void a(d d1, Context context)
    {
        d1.d(context);
    }

    private void b(Context context)
    {
        if (o == 6 || o == 4)
        {
            com.umeng.analytics.j.e(context).edit().putLong("last_report_time", q).commit();
        }
        if (r != -1L)
        {
            e.f = r;
            com.umeng.analytics.j.c(context).edit().putLong("req_time", r).commit();
        }
    }

    private String c(Context context)
    {
        if (!e.b())
        {
            e.b(context, new String[] {
                l, k
            });
        }
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(e.w);
        stringbuffer.append("/");
        stringbuffer.append(e.x);
        stringbuffer.append(" ");
        try
        {
            StringBuffer stringbuffer1 = new StringBuffer();
            stringbuffer1.append(context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString());
            stringbuffer1.append("/");
            stringbuffer1.append(e.t);
            stringbuffer1.append(" ");
            stringbuffer1.append(e.g);
            stringbuffer1.append("/");
            stringbuffer1.append(e.i);
            stringbuffer1.append(" ");
            stringbuffer1.append(e.d);
            stringbuffer.append(URLEncoder.encode(stringbuffer1.toString(), "UTF-8"));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
        return stringbuffer.toString();
    }

    private void d(Context context)
    {
        JSONObject jsonobject = g(context);
        if (jsonobject == null || jsonobject.isNull("body"))
        {
            return;
        }
        String s1 = null;
        int i1 = 0;
        do
        {
label0:
            {
                if (i1 < g.r.length)
                {
                    s1 = a(context, jsonobject, g.r[i1]);
                    if (s1 == null)
                    {
                        break label0;
                    }
                }
                if (s1 != null)
                {
                    com.umeng.analytics.j.j(context);
                    Log.a("MobclickAgent", (new StringBuilder()).append("send applog succeed :").append(s1).toString());
                } else
                {
                    q = -1L;
                    com.umeng.analytics.j.b(context, jsonobject, com.umeng.common.b.d(context));
                    Log.a("MobclickAgent", "send applog failed");
                }
                b(context);
                return;
            }
            i1++;
        } while (true);
    }

    public void a(int i1, long l1)
    {
        o = i1;
        p = l1;
    }

    public void a(Context context, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (s || i1 != 4)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        a(context);
        f(context);
        s = true;
        if (i1 != 5) goto _L2; else goto _L1
_L1:
        d.a(context);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b(context, i1))
        {
            c.post(new b(context));
        }
        if (d.b())
        {
            c.post(new a(context));
        }
        if (true) goto _L4; else goto _L3
_L3:
        context;
        throw context;
    }

    boolean b(Context context, int i1)
    {
        if (com.umeng.common.b.n(context)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        i1;
        JVM INSTR tableswitch 1 4: default 40
    //                   1 42
    //                   2 144
    //                   3 7
    //                   4 51;
           goto _L3 _L4 _L5 _L1 _L6
_L3:
        return false;
_L4:
        if (o == 0)
        {
            return true;
        }
        break; /* Loop/switch isn't completed */
_L6:
        if (o == 1)
        {
            return true;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (o == 6 && System.currentTimeMillis() - q > p)
        {
            q = System.currentTimeMillis();
            return true;
        }
        if (o == 4 && System.currentTimeMillis() - q > g.g)
        {
            q = System.currentTimeMillis();
            return true;
        }
        if (o == 5 && com.umeng.common.b.l(context))
        {
            return true;
        }
          goto _L1
_L5:
        return true;
    }

    public void e(Context context)
    {
        a(context, 1);
    }

    public void f(Context context)
    {
        a.a(context);
        a.a(this);
    }

    JSONObject g(Context context)
    {
        Object obj = new JSONObject();
        if (!e.b())
        {
            e.b(context, new String[] {
                l, k
            });
        }
        if (e.a())
        {
            break MISSING_BLOCK_LABEL_64;
        }
        Log.b("MobclickAgent", "protocol Header need Appkey or Device ID ,Please check AndroidManifest.xml ");
        return null;
        d.b(context);
        if (d.a() > 0)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        Log.c("MobclickAgent", "no message to send");
        return null;
        try
        {
            if (!d.c())
            {
                throw new Exception((new StringBuilder()).append("protocol Body has invalid field: ").append(d.d().toString()).toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.b("MobclickAgent", "", ((Exception) (obj)));
            com.umeng.analytics.j.j(context);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.b("MobclickAgent", (new StringBuilder()).append("Error:").append(((Error) (obj)).getMessage()).toString());
            com.umeng.analytics.j.j(context);
            return null;
        }
        ((JSONObject) (obj)).put("header", new e(this));
        ((JSONObject) (obj)).put("body", d.d());
        d.e();
        return ((JSONObject) (obj));
    }
}
