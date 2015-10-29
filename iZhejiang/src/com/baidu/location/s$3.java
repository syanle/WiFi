// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.util.Log;
import java.io.File;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.FileEntity;
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
        httppost.setEntity(((org.apache.http.HttpEntity) (obj)));
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

    ine(s s1)
    {
        a = s1;
        super();
    }
}
