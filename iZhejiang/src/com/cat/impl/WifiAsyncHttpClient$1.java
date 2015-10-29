// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

class this._cls0
    implements HttpRequestInterceptor
{

    final WifiAsyncHttpClient this$0;

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!httprequest.containsHeader("Accept-Encoding"))
        {
            httprequest.addHeader("Accept-Encoding", "gzip");
        }
        httpcontext = WifiAsyncHttpClient.access$0(WifiAsyncHttpClient.this).keySet().iterator();
        do
        {
            if (!httpcontext.hasNext())
            {
                return;
            }
            String s = (String)httpcontext.next();
            httprequest.addHeader(s, (String)WifiAsyncHttpClient.access$0(WifiAsyncHttpClient.this).get(s));
        } while (true);
    }

    t()
    {
        this$0 = WifiAsyncHttpClient.this;
        super();
    }
}
