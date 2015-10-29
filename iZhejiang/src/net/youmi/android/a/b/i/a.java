// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.entity.ByteArrayEntity;

// Referenced classes of package net.youmi.android.a.b.i:
//            b, i, c

public abstract class a
{

    protected Context a;
    protected HttpUriRequest b;
    protected HttpClient c;
    protected b d;
    protected c e;
    protected long f;
    protected long g;

    public a(Context context, c c1)
    {
        f = 0L;
        g = 0L;
        if (context == null || c1 == null)
        {
            throw new NullPointerException();
        } else
        {
            a = context.getApplicationContext();
            e = c1;
            return;
        }
    }

    private void a(HttpResponse httpresponse, long l)
    {
        if (httpresponse != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b b1;
        try
        {
            b1 = d;
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            return;
        }
        if (b1 == null) goto _L1; else goto _L3
_L3:
        b1.b(System.currentTimeMillis() - l);
        int j = httpresponse.getStatusLine().getStatusCode();
        String s = httpresponse.getStatusLine().getReasonPhrase();
        b1.a(j);
        b1.a(s);
        if (b1.f())
        {
            b1.a(b.getAllHeaders());
            b1.b(httpresponse.getAllHeaders());
            return;
        }
          goto _L1
    }

    private HttpResponse e()
    {
        if (c == null)
        {
            c = i.b(a);
        }
        if (b != null) goto _L2; else goto _L1
_L1:
        if (e.b() == null || e.b().size() <= 0) goto _L4; else goto _L3
_L3:
        HttpPost httppost;
        List list;
        httppost = new HttpPost(e.e());
        list = e.b();
        if (e.d() == null) goto _L6; else goto _L5
_L5:
        Object obj = e.d();
_L17:
        httppost.setEntity(new UrlEncodedFormEntity(list, ((String) (obj))));
        b = httppost;
_L2:
        obj = e.c();
        if (obj == null) goto _L8; else goto _L7
_L7:
        if (((List) (obj)).size() <= 0) goto _L8; else goto _L9
_L9:
        int j = 0;
_L10:
        if (j >= ((List) (obj)).size())
        {
            break; /* Loop/switch isn't completed */
        }
        b.addHeader((Header)((List) (obj)).get(j));
        j++;
        if (true) goto _L10; else goto _L8
_L6:
        obj = "UTF-8";
        continue; /* Loop/switch isn't completed */
_L4:
        if (e.k() == null || e.k().length <= 0) goto _L12; else goto _L11
_L11:
        obj = new HttpPost(e.e());
        ((HttpPost) (obj)).setEntity(new ByteArrayEntity(e.k()));
        b = ((HttpUriRequest) (obj));
          goto _L2
        Object obj1;
        obj1;
_L13:
        obj1 = c.execute(b);
        g = ((HttpResponse) (obj1)).getEntity().getContentLength();
        return ((HttpResponse) (obj1));
_L12:
        b = new HttpGet(e.e());
          goto _L2
        obj1;
_L8:
        try
        {
            c();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
          goto _L13
        obj1;
        a(-101, ((Exception) (obj1)));
_L15:
        return null;
        obj1;
        a(-100, ((Exception) (obj1)));
        continue; /* Loop/switch isn't completed */
        obj1;
        a(-102, ((Exception) (obj1)));
        continue; /* Loop/switch isn't completed */
        obj1;
        a(-103, ((Exception) (obj1)));
        continue; /* Loop/switch isn't completed */
        obj1;
        a(-104, ((Exception) (obj1)));
        continue; /* Loop/switch isn't completed */
        obj1;
        a(-99, ((Exception) (obj1)));
        if (true) goto _L15; else goto _L14
_L14:
        if (true) goto _L17; else goto _L16
_L16:
    }

    public long a()
    {
        return f;
    }

    protected void a(int j, Exception exception)
    {
        try
        {
            if (d != null)
            {
                d.b(j);
                d.a(exception);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            return;
        }
    }

    public void a(b b1)
    {
        d = b1;
    }

    public void a(c c1)
    {
        e = c1;
    }

    protected abstract void a(HttpResponse httpresponse);

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        l = System.currentTimeMillis();
        f = l;
        HttpResponse httpresponse = e();
        a(httpresponse, l);
        a(httpresponse);
        Object obj;
        try
        {
            if (b != null)
            {
                b.abort();
            }
        }
        catch (Throwable throwable4) { }
        b = null;
        try
        {
            if (c != null)
            {
                c.getConnectionManager().shutdown();
            }
        }
        catch (Throwable throwable3) { }
        c = null;
        try
        {
            if (d != null)
            {
                long l1 = System.currentTimeMillis();
                d.a(l1 - l);
            }
        }
        catch (Throwable throwable2) { }
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        try
        {
            if (b != null)
            {
                b.abort();
            }
        }
        catch (Throwable throwable1) { }
        b = null;
        try
        {
            if (c != null)
            {
                c.getConnectionManager().shutdown();
            }
        }
        catch (Throwable throwable) { }
        c = null;
        try
        {
            if (d != null)
            {
                long l2 = System.currentTimeMillis();
                d.a(l2 - l);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        if (true)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        obj;
        try
        {
            if (b != null)
            {
                b.abort();
            }
        }
        catch (Throwable throwable7) { }
        b = null;
        try
        {
            if (c != null)
            {
                c.getConnectionManager().shutdown();
            }
        }
        catch (Throwable throwable6) { }
        c = null;
        try
        {
            if (d != null)
            {
                long l3 = System.currentTimeMillis();
                d.a(l3 - l);
            }
        }
        catch (Throwable throwable5) { }
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
    }

    protected void c()
    {
    }

    public abstract long d();
}
