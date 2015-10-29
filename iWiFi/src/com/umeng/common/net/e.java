// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import com.umeng.common.Log;
import com.umeng.common.util.h;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

// Referenced classes of package com.umeng.common.net:
//            d

class e
    implements Runnable
{

    final String a[];
    final boolean b;
    final Map c;
    final d d;

    e(d d1, String as[], boolean flag, Map map)
    {
        d = d1;
        a = as;
        b = flag;
        c = map;
        super();
    }

    public void run()
    {
        int j = (new Random()).nextInt(1000);
        if (a != null) goto _L2; else goto _L1
_L1:
        Log.a(com.umeng.common.net.d.a(), (new StringBuilder()).append(j).append("service report: urls is null").toString());
_L4:
        return;
_L2:
        String as[];
        int i;
        int k;
        as = a;
        k = as.length;
        i = 0;
_L6:
        if (i >= k) goto _L4; else goto _L3
_L3:
        String s;
        Object obj;
        s = as[i];
        obj = h.a();
        String s1 = ((String) (obj)).split(" ")[0];
        String s2 = ((String) (obj)).split(" ")[1];
        long l1 = System.currentTimeMillis();
        obj = new StringBuilder(s);
        ((StringBuilder) (obj)).append("&data=").append(s1);
        ((StringBuilder) (obj)).append("&time=").append(s2);
        ((StringBuilder) (obj)).append("&ts=").append(l1);
        if (b)
        {
            ((StringBuilder) (obj)).append("&action_type=").append(1);
        } else
        {
            ((StringBuilder) (obj)).append("&action_type=").append(-2);
        }
        if (c != null)
        {
            String s3;
            for (Iterator iterator = c.keySet().iterator(); iterator.hasNext(); ((StringBuilder) (obj)).append("&").append(s3).append("=").append((String)c.get(s3)))
            {
                s3 = (String)iterator.next();
            }

        }
        int l;
        Log.a(com.umeng.common.net.d.a(), (new StringBuilder()).append(j).append(": service report:\tget: ").append(((StringBuilder) (obj)).toString()).toString());
        obj = new HttpGet(((StringBuilder) (obj)).toString());
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 20000);
        obj = (new DefaultHttpClient(basichttpparams)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        Log.a(com.umeng.common.net.d.a(), (new StringBuilder()).append(j).append(": service report:status code:  ").append(((HttpResponse) (obj)).getStatusLine().getStatusCode()).toString());
        l = ((HttpResponse) (obj)).getStatusLine().getStatusCode();
        if (l == 200) goto _L4; else goto _L5
_L5:
        i++;
          goto _L6
        Object obj1;
        obj1;
        Log.c(com.umeng.common.net.d.a(), (new StringBuilder()).append(j).append(": service report:\tClientProtocolException,Failed to send message.").append(s).toString(), ((Exception) (obj1)));
          goto _L5
        obj1;
        Log.c(com.umeng.common.net.d.a(), (new StringBuilder()).append(j).append(": service report:\tIOException,Failed to send message.").append(s).toString(), ((Exception) (obj1)));
          goto _L5
    }
}
