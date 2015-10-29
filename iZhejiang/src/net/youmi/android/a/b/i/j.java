// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package net.youmi.android.a.b.i:
//            e

final class j
    implements RedirectHandler
{

    final e a;

    j(e e1)
    {
        a = e1;
        super();
    }

    public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
    {
        httpresponse = httpresponse.getFirstHeader("location");
        if (httpresponse != null)
        {
            if ((httpresponse = httpresponse.getValue()) != null)
            {
                if (a != null)
                {
                    a.a(httpresponse);
                }
                return URI.create(httpresponse);
            }
        }
        return null;
    }

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        return i == 301 || i == 302 || i == 303 || i == 307;
    }
}
