// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

class this._cls0
    implements HttpResponseInterceptor
{

    final WifiAsyncHttpClient this$0;

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        httpcontext = httpresponse.getEntity();
        if (httpcontext != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((httpcontext = httpcontext.getContentEncoding()) != null)
        {
            httpcontext = httpcontext.getElements();
            int j = httpcontext.length;
            int i = 0;
            while (i < j) 
            {
                if (httpcontext[i].getName().equalsIgnoreCase("gzip"))
                {
                    httpresponse.setEntity(new flatingEntity(httpresponse.getEntity()));
                    return;
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    t()
    {
        this$0 = WifiAsyncHttpClient.this;
        super();
    }
}
