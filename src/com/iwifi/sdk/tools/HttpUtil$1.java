// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.util.Log;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.iwifi.sdk.tools:
//            HttpUtil, Logger

class this._cls0
    implements RedirectHandler
{

    final HttpUtil this$0;

    public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
        throws ProtocolException
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        httpcontext = httpresponse.getFirstHeader("location");
        if (httpcontext == null)
        {
            throw new ProtocolException((new StringBuilder("Received redirect response ")).append(httpresponse.getStatusLine()).append(" but no location header").toString());
        }
        httpresponse = httpcontext.getValue();
        Log.v("HttpUtils", (new StringBuilder("Redirect requested to location '")).append(httpresponse).append("'").toString());
        Logger.d("HttpUtils", (new StringBuilder("Redirect requested to location '")).append(httpresponse).append("'").toString());
        try
        {
            httpcontext = new URI(httpresponse);
        }
        // Misplaced declaration of an exception variable
        catch (HttpContext httpcontext)
        {
            throw new ProtocolException((new StringBuilder("Invalid redirect URI: ")).append(httpresponse).toString(), httpcontext);
        }
        HttpUtil.access$13(HttpUtil.this, httpcontext.toString());
        return httpcontext;
    }

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        int i;
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        i = httpresponse.getStatusLine().getStatusCode();
        Logger.d("HttpUtils", (new StringBuilder("isRedirectRequested : ")).append(i).toString());
        i;
        JVM INSTR tableswitch 301 307: default 92
    //                   301 94
    //                   302 94
    //                   303 136
    //                   304 92
    //                   305 92
    //                   306 92
    //                   307 94;
           goto _L1 _L2 _L2 _L3 _L1 _L1 _L1 _L2
_L1:
        return false;
_L2:
        if ((httpresponse = ((HttpRequest)httpcontext.getAttribute("http.request")).getRequestLine().getMethod()).equalsIgnoreCase("GET") || httpresponse.equalsIgnoreCase("HEAD"))
        {
            return true;
        }
          goto _L1
_L3:
        return true;
    }

    ntext()
    {
        this$0 = HttpUtil.this;
        super();
    }
}
