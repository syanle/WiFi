// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import net.youmi.android.a.b.h.e;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package net.youmi.android.a.b.i:
//            j, k, e

public class i
{

    private static String a;

    public static long a(Context context, String s)
    {
label0:
        {
            {
                long l2 = -1L;
                Object obj = null;
                if (s != null)
                {
                    break label0;
                }
                int l;
                long l1;
                if (false)
                {
                    try
                    {
                        throw new NullPointerException();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context) { }
                }
                if (false)
                {
                    try
                    {
                        throw new NullPointerException();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context)
                    {
                        return -1L;
                    }
                }
            }
            return l2;
        }
        context = b(context);
        try
        {
            obj = new HttpGet(s);
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
        }
        s = context.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        l = s.getStatusLine().getStatusCode();
        if (l < 200 || l >= 300)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        l1 = s.getEntity().getContentLength();
        if (obj != null)
        {
            try
            {
                ((HttpGet) (obj)).abort();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        l2 = l1;
        if (context != null)
        {
            try
            {
                context.getConnectionManager().shutdown();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return l1;
            }
            return l1;
        }
        while (false) 
        {
            if (obj != null)
            {
                try
                {
                    ((HttpGet) (obj)).abort();
                }
                // Misplaced declaration of an exception variable
                catch (String s) { }
            }
            if (context != null)
            {
                try
                {
                    context.getConnectionManager().shutdown();
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    return -1L;
                }
                return -1L;
            }
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_35;
        }
        context;
        s = null;
        context = ((Context) (obj));
_L4:
        if (s != null)
        {
            try
            {
                s.abort();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (context != null)
        {
            try
            {
                context.getConnectionManager().shutdown();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return -1L;
            }
            return -1L;
        } else
        {
            break MISSING_BLOCK_LABEL_129;
        }
        s;
        obj = null;
        context = null;
_L2:
        if (obj != null)
        {
            try
            {
                ((HttpGet) (obj)).abort();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        if (context != null)
        {
            try
            {
                context.getConnectionManager().shutdown();
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        s = ((String) (obj));
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String a()
    {
        if (a == null)
        {
            try
            {
                StringBuilder stringbuilder = new StringBuilder(256);
                stringbuilder.append("Mozilla/5.0 (Linux; U; Android ");
                stringbuilder.append(android.os.Build.VERSION.RELEASE);
                stringbuilder.append("; ");
                stringbuilder.append(e.a().toLowerCase());
                stringbuilder.append("; ");
                stringbuilder.append(e.d());
                stringbuilder.append(" Build/");
                stringbuilder.append(Build.ID);
                stringbuilder.append(") AppleWebkit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1");
                a = stringbuilder.toString();
            }
            catch (Throwable throwable)
            {
                return "";
            }
        }
        return a;
    }

    public static DefaultHttpClient a(Context context, net.youmi.android.a.b.i.e e1)
    {
        context = new DefaultHttpClient(a(context));
        context.setRedirectHandler(new j(e1));
        return context;
    }

    public static HttpParams a(Context context)
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basichttpparams, 1000L);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 30000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 30000);
        HttpClientParams.setRedirecting(basichttpparams, true);
        HttpProtocolParams.setUserAgent(basichttpparams, a());
        if (k.c(context).equals("cmwap"))
        {
            basichttpparams.setParameter("http.route.default-proxy", new HttpHost("10.0.0.172", 80, null));
        }
        return basichttpparams;
    }

    public static boolean a(String s, String s1)
    {
        boolean flag1 = true;
        if (s != null && s1 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        s = s.trim();
        s1 = s1.trim();
        if (s.length() == 0 || s1.length() == 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        flag = flag1;
        if (s.equalsIgnoreCase(s1)) goto _L4; else goto _L3
_L3:
        boolean flag2;
        s1 = Uri.parse(s1);
        if (!s.contains(s1.getPath()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = s.contains(s1.getHost());
        flag = flag1;
        if (flag2) goto _L4; else goto _L5
_L5:
        return false;
        s;
        if (true) goto _L5; else goto _L6
_L6:
        return false;
    }

    public static DefaultHttpClient b(Context context)
    {
        return a(context, ((net.youmi.android.a.b.i.e) (null)));
    }
}
