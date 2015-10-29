// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import java.util.List;
import org.apache.http.HttpEntity;

// Referenced classes of package com.baidu.location:
//            ax, n, f

abstract class s
    implements ax, n
{

    private static int cU = 4;
    private static String cX = "10.0.0.172";
    protected static int cY = 0;
    private static int cZ = 80;
    public int c0;
    public String cR;
    public HttpEntity cS;
    public List cT;
    private boolean cV;
    public String cW;

    s()
    {
        cV = false;
        cR = null;
        c0 = 3;
        cS = null;
        cT = null;
        cW = null;
    }

    private void L()
    {
        cU = P();
    }

    static int M()
    {
        return cU;
    }

    static String O()
    {
        return cX;
    }

    private int P()
    {
        Context context = f.getServiceContext();
        Object obj = (ConnectivityManager)context.getSystemService("connectivity");
        if (obj == null)
        {
            return 4;
        }
        NetworkInfo networkinfo = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (networkinfo == null) goto _L2; else goto _L1
_L1:
        if (networkinfo.isAvailable()) goto _L3; else goto _L2
_L3:
        if (networkinfo.getType() == 1)
        {
            return 3;
        }
        Cursor cursor;
        obj = Uri.parse("content://telephony/carriers/preferapn");
        cursor = context.getContentResolver().query(((Uri) (obj)), null, null, null, null);
        if (cursor == null) goto _L5; else goto _L4
_L4:
        if (!cursor.moveToFirst()) goto _L5; else goto _L6
_L6:
        obj = cursor.getString(cursor.getColumnIndex("apn"));
        if (obj == null) goto _L8; else goto _L7
_L7:
        if (!((String) (obj)).toLowerCase().contains("ctwap")) goto _L8; else goto _L9
_L9:
        obj = Proxy.getDefaultHost();
        if (obj == null) goto _L11; else goto _L10
_L10:
        if (((String) (obj)).equals("") || ((String) (obj)).equals("null")) goto _L11; else goto _L12
_L12:
        cX = ((String) (obj));
        cZ = 80;
        if (cursor == null) goto _L14; else goto _L13
_L13:
        cursor.close();
          goto _L14
_L8:
        if (obj == null) goto _L5; else goto _L15
_L15:
        if (!((String) (obj)).toLowerCase().contains("wap")) goto _L5; else goto _L16
_L16:
        obj = Proxy.getDefaultHost();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (((String) (obj)).equals("") || ((String) (obj)).equals("null"))
        {
            break MISSING_BLOCK_LABEL_284;
        }
_L20:
        cX = ((String) (obj));
        cZ = 80;
        if (cursor == null) goto _L18; else goto _L17
_L17:
        cursor.close();
          goto _L18
_L5:
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        cursor.close();
        return 2;
        obj;
        obj = null;
_L19:
        int i;
        try
        {
            i = _mthif(context, ((NetworkInfo) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return 4;
        }
        return i;
        obj;
        return 4;
        obj;
        obj = networkinfo;
        if (true) goto _L19; else goto _L2
_L2:
        return 4;
_L14:
        return 1;
_L11:
        obj = "10.0.0.200";
          goto _L12
_L18:
        return 1;
        obj = "10.0.0.172";
          goto _L20
    }

    static int S()
    {
        return cZ;
    }

    private static int _mthif(Context context, NetworkInfo networkinfo)
    {
        byte byte0 = 2;
        if (networkinfo == null || networkinfo.getExtraInfo() == null) goto _L2; else goto _L1
_L1:
        context = networkinfo.getExtraInfo().toLowerCase();
        if (context == null) goto _L2; else goto _L3
_L3:
        if (!context.startsWith("cmwap") && !context.startsWith("uniwap") && !context.startsWith("3gwap")) goto _L5; else goto _L4
_L4:
        int i;
        context = Proxy.getDefaultHost();
        if (context == null || context.equals("") || context.equals("null"))
        {
            context = "10.0.0.172";
        }
        cX = context;
        i = 1;
_L7:
        return i;
_L5:
        if (context.startsWith("ctwap"))
        {
            context = Proxy.getDefaultHost();
            if (context == null || context.equals("") || context.equals("null"))
            {
                context = "10.0.0.200";
            }
            cX = context;
            return 1;
        }
        i = byte0;
        if (context.startsWith("cmnet"))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = byte0;
        if (context.startsWith("uninet"))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = byte0;
        if (context.startsWith("ctnet"))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = byte0;
        if (context.startsWith("3gnet"))
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        context = Proxy.getDefaultHost();
        i = byte0;
        if (context != null)
        {
            i = byte0;
            if (context.length() > 0)
            {
                if ("10.0.0.172".equals(context.trim()))
                {
                    cX = "10.0.0.172";
                    return 1;
                }
                i = byte0;
                if ("10.0.0.200".equals(context.trim()))
                {
                    cX = "10.0.0.200";
                    return 1;
                }
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    static void _mthif(s s1)
    {
        s1.L();
    }

    public static boolean _mthif(Context context)
    {
label0:
        {
            boolean flag;
            try
            {
                context = (ConnectivityManager)context.getSystemService("connectivity");
                if (context.getActiveNetworkInfo() == null)
                {
                    break label0;
                }
                flag = context.getActiveNetworkInfo().isAvailable();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return false;
            }
            return flag;
        }
        return false;
    }

    static boolean _mthif(s s1, boolean flag)
    {
        s1.cV = flag;
        return flag;
    }

    public void N()
    {
        (new _cls2()).start();
    }

    public void Q()
    {
        (new _cls1()).start();
    }

    public void R()
    {
        (new _cls3()).start();
    }

    abstract void T();

    abstract void _mthdo(boolean flag);


    private class _cls2 extends Thread
    {

        final s a;

        public void run()
        {
            Object obj;
            int i;
            a.cR = c._mthfor();
            a.T();
            i = a.c0;
            s._mthif(a);
            obj = null;
_L2:
            if (i <= 0)
            {
                break MISSING_BLOCK_LABEL_257;
            }
            HttpPost httppost = new HttpPost(a.cR);
            obj = new UrlEncodedFormEntity(a.cT, "utf-8");
            httppost.setHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
            httppost.setHeader("Accept-Charset", "UTF-8;");
            httppost.setEntity(((HttpEntity) (obj)));
            obj = new DefaultHttpClient();
            ((HttpClient) (obj)).getParams().setParameter("http.connection.timeout", Integer.valueOf(12000));
            ((HttpClient) (obj)).getParams().setParameter("http.socket.timeout", Integer.valueOf(12000));
            HttpProtocolParams.setUseExpectContinue(((HttpClient) (obj)).getParams(), false);
            if ((s.M() == 1 || s.M() == 4) && (a.c0 - i) % 2 == 0)
            {
                HttpHost httphost = new HttpHost(s.O(), s.S(), "http");
                ((HttpClient) (obj)).getParams().setParameter("http.route.default-proxy", httphost);
            }
            obj = ((HttpClient) (obj)).execute(httppost);
            if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200)
            {
                break MISSING_BLOCK_LABEL_296;
            }
            a.cS = ((HttpResponse) (obj)).getEntity();
            a._mthdo(true);
            if (i <= 0)
            {
                s.cY++;
                a.cS = null;
                a._mthdo(false);
            } else
            {
                s.cY = 0;
            }
            s._mthif(a, false);
            return;
            httppost.abort();
            obj = httppost;
_L3:
            i--;
            if (true) goto _L2; else goto _L1
_L1:
            obj;
            obj = httppost;
_L4:
            ((HttpPost) (obj)).abort();
            Log.d("baidu_location_service", "NetworkCommunicationException!");
              goto _L3
            Exception exception;
            exception;
              goto _L4
        }

        _cls2()
        {
            a = s.this;
            super();
        }
    }


    private class _cls1 extends Thread
    {

        final s a;

        public void run()
        {
            int i;
            a.cR = c._mthfor();
            a.T();
            i = a.c0;
            s._mthif(a);
_L2:
            if (i <= 0)
            {
                break MISSING_BLOCK_LABEL_233;
            }
            HttpGet httpget;
            httpget = new HttpGet(a.cR);
            httpget.setHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
            httpget.setHeader("Accept-Charset", "UTF-8;");
            Object obj = new DefaultHttpClient();
            ((HttpClient) (obj)).getParams().setParameter("http.connection.timeout", Integer.valueOf(12000));
            ((HttpClient) (obj)).getParams().setParameter("http.socket.timeout", Integer.valueOf(12000));
            HttpProtocolParams.setUseExpectContinue(((HttpClient) (obj)).getParams(), false);
            if ((s.M() == 1 || s.M() == 4) && (a.c0 - i) % 2 == 0)
            {
                HttpHost httphost = new HttpHost(s.O(), s.S(), "http");
                ((HttpClient) (obj)).getParams().setParameter("http.route.default-proxy", httphost);
            }
            obj = ((HttpClient) (obj)).execute(httpget);
            if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200)
            {
                break MISSING_BLOCK_LABEL_272;
            }
            a.cS = ((HttpResponse) (obj)).getEntity();
            a._mthdo(true);
            Exception exception;
            if (i <= 0)
            {
                s.cY++;
                a.cS = null;
                a._mthdo(false);
            } else
            {
                s.cY = 0;
            }
            s._mthif(a, false);
            return;
            try
            {
                httpget.abort();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.d("baidu_location_service", "NetworkCommunicationException!");
            }
            i--;
            if (true) goto _L2; else goto _L1
_L1:
        }

        _cls1()
        {
            a = s.this;
            super();
        }
    }


    private class _cls3 extends Thread
    {

        final s a;

        public void run()
        {
            Object obj;
            int i;
            a.cR = c._mthfor();
            a.T();
            i = a.c0;
            s._mthif(a);
            obj = null;
_L2:
            if (i <= 0)
            {
                break MISSING_BLOCK_LABEL_264;
            }
            HttpPost httppost = new HttpPost(a.cR);
            obj = new FileEntity(new File(a.cW), "binary/octet-stream");
            httppost.setHeader("Content-Type", "application/octet-stream");
            httppost.setHeader("Accept-Charset", "UTF-8;");
            httppost.setEntity(((HttpEntity) (obj)));
            obj = new DefaultHttpClient();
            ((HttpClient) (obj)).getParams().setParameter("http.connection.timeout", Integer.valueOf(12000));
            ((HttpClient) (obj)).getParams().setParameter("http.socket.timeout", Integer.valueOf(12000));
            HttpProtocolParams.setUseExpectContinue(((HttpClient) (obj)).getParams(), false);
            if ((s.M() == 1 || s.M() == 4) && (a.c0 - i) % 2 == 0)
            {
                HttpHost httphost = new HttpHost(s.O(), s.S(), "http");
                ((HttpClient) (obj)).getParams().setParameter("http.route.default-proxy", httphost);
            }
            obj = ((HttpClient) (obj)).execute(httppost);
            if (((HttpResponse) (obj)).getStatusLine().getStatusCode() != 200)
            {
                break MISSING_BLOCK_LABEL_303;
            }
            a.cS = ((HttpResponse) (obj)).getEntity();
            a._mthdo(true);
            if (i <= 0)
            {
                s.cY++;
                a.cS = null;
                a._mthdo(false);
            } else
            {
                s.cY = 0;
            }
            s._mthif(a, false);
            return;
            httppost.abort();
            obj = httppost;
_L3:
            i--;
            if (true) goto _L2; else goto _L1
_L1:
            obj;
            obj = httppost;
_L4:
            ((HttpPost) (obj)).abort();
            Log.d("baidu_location_service", "NetworkCommunicationException!");
              goto _L3
            Exception exception;
            exception;
              goto _L4
        }

        _cls3()
        {
            a = s.this;
            super();
        }
    }

}
