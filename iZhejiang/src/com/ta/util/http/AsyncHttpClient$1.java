// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.ta.util.http:
//            AsyncHttpClient

class this._cls0
    implements HttpRequestInterceptor
{

    final AsyncHttpClient this$0;

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!httprequest.containsHeader("Accept-Encoding"))
        {
            httprequest.addHeader("Accept-Encoding", "gzip");
        }
        httpcontext = AsyncHttpClient.access$0(AsyncHttpClient.this).keySet().iterator();
        do
        {
            if (!httpcontext.hasNext())
            {
                return;
            }
            String s = (String)httpcontext.next();
            httprequest.addHeader(s, (String)AsyncHttpClient.access$0(AsyncHttpClient.this).get(s));
        } while (true);
    }

    t()
    {
        this$0 = AsyncHttpClient.this;
        super();
    }
}
