// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.util.Log;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.baidu.location:
//            c, s

class  extends Thread
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

    ine(s s1)
    {
        a = s1;
        super();
    }
}
