// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.d;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import net.youmi.android.a.b.i.a;
import net.youmi.android.a.b.i.c;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpUriRequest;

public class b extends a
{

    private static long i = 0L;
    private String h;

    public b(Context context, c c1)
    {
        super(context, c1);
    }

    private static String a(HttpResponse httpresponse, String s, boolean flag)
    {
        byte abyte0[] = null;
        if (httpresponse == null) goto _L2; else goto _L1
_L1:
        Object obj;
        Exception exception;
        int j;
        try
        {
            j = httpresponse.getStatusLine().getStatusCode();
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            httpresponse = null;
            s = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            s = abyte0;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        net.youmi.android.a.c.b.a.c("Response http code is : %d", new Object[] {
            Integer.valueOf(j)
        });
        if (j < 200 || j >= 300) goto _L4; else goto _L3
_L3:
        obj = httpresponse.getEntity();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        try
        {
            net.youmi.android.a.c.b.a.c("Response ContentLength : %d , ContentType : %s", new Object[] {
                Long.valueOf(((HttpEntity) (obj)).getContentLength()), ((HttpEntity) (obj)).getContentType()
            });
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse) { }
        try
        {
            httpresponse = ((HttpEntity) (obj)).getContentEncoding();
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            httpresponse = null;
            continue; /* Loop/switch isn't completed */
        }
        if (httpresponse == null) goto _L6; else goto _L5
_L5:
        if (!httpresponse.getValue().toLowerCase(Locale.US).contains("gzip")) goto _L6; else goto _L7
_L7:
        httpresponse = new GZIPInputStream(((HttpEntity) (obj)).getContent());
_L16:
        if (httpresponse == null)
        {
            try
            {
                obj = ((HttpEntity) (obj)).getContent();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s = null;
                continue; /* Loop/switch isn't completed */
            }
            finally
            {
                obj = null;
                s = httpresponse;
                httpresponse = exception;
                continue; /* Loop/switch isn't completed */
            }
            httpresponse = ((HttpResponse) (obj));
        }
        if (httpresponse != null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        net.youmi.android.a.c.b.a.b("Response Content is null");
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (httpresponse != null)
        {
            try
            {
                httpresponse.close();
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse)
            {
                return null;
            }
        }
        return null;
        obj = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L10:
        j = httpresponse.read(abyte0);
        if (j <= 0) goto _L9; else goto _L8
_L8:
        ((ByteArrayOutputStream) (obj)).write(abyte0, 0, j);
          goto _L10
        s;
        s = ((String) (obj));
_L14:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (httpresponse != null)
        {
            try
            {
                httpresponse.close();
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_189;
        }
_L9:
        ((ByteArrayOutputStream) (obj)).flush();
        abyte0 = ((ByteArrayOutputStream) (obj)).toByteArray();
        i = abyte0.length;
        s = new String(abyte0, s);
        if (obj != null)
        {
            try
            {
                ((ByteArrayOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        if (httpresponse != null)
        {
            try
            {
                httpresponse.close();
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse) { }
        }
        return s;
_L2:
        if (!flag) goto _L4; else goto _L11
_L11:
        net.youmi.android.a.c.b.a.b("Request failed , reponse is null");
_L4:
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse) { }
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse)
            {
                return null;
            }
        } else
        {
            break MISSING_BLOCK_LABEL_189;
        }
_L13:
        if (obj != null)
        {
            try
            {
                ((ByteArrayOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        throw httpresponse;
        exception;
        obj = null;
        s = httpresponse;
        httpresponse = exception;
        continue; /* Loop/switch isn't completed */
        exception;
        s = httpresponse;
        httpresponse = exception;
        if (true) goto _L13; else goto _L12
        s;
        s = null;
        if (true) goto _L14; else goto _L6
_L6:
        httpresponse = null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    protected void a(HttpResponse httpresponse)
    {
        boolean flag;
        if (e != null)
        {
            flag = e.a();
        } else
        {
            flag = false;
        }
        h = a(httpresponse, e.d(), flag);
    }

    protected void c()
    {
        super.c();
        b.addHeader("Accept-Encoding", "gzip, deflate");
        try
        {
            net.youmi.android.a.c.c.b b1 = new net.youmi.android.a.c.c.b(a);
            b.addHeader("X-YM-CID", b1.a());
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public long d()
    {
        return i;
    }

    public String e()
    {
        return h;
    }

}
