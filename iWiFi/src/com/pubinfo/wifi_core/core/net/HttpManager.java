// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.net;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.pubinfo.wifi_core.core.net:
//            TrustAllSSLSocketFactory

public class HttpManager
{

    private DefaultHttpClient sClient;

    public HttpManager()
    {
        init();
    }

    private void init()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpProtocolParams.setUserAgent(basichttpparams, "CDMA+WLAN");
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 20000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 20000);
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        try
        {
            schemeregistry.register(new Scheme("https", TrustAllSSLSocketFactory.getDefault(), 443));
        }
        catch (KeyManagementException keymanagementexception)
        {
            keymanagementexception.printStackTrace();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
        }
        catch (KeyStoreException keystoreexception)
        {
            keystoreexception.printStackTrace();
        }
        catch (UnrecoverableKeyException unrecoverablekeyexception)
        {
            unrecoverablekeyexception.printStackTrace();
        }
        sClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    public HttpResponse execute(HttpHost httphost, HttpGet httpget)
        throws IOException
    {
        return sClient.execute(httphost, httpget);
    }

    public HttpResponse execute(HttpGet httpget)
        throws IOException
    {
        return sClient.execute(httpget);
    }

    public HttpResponse execute(HttpHead httphead)
        throws IOException
    {
        return sClient.execute(httphead);
    }

    public HttpResponse execute(HttpPost httppost)
        throws IOException
    {
        return sClient.execute(httppost);
    }

    public CookieStore getCookieStore()
    {
        this;
        JVM INSTR monitorenter ;
        CookieStore cookiestore = sClient.getCookieStore();
        this;
        JVM INSTR monitorexit ;
        return cookiestore;
        Exception exception;
        exception;
        throw exception;
    }

    public void setCookieStore(CookieStore cookiestore)
    {
        this;
        JVM INSTR monitorenter ;
        sClient.setCookieStore(cookiestore);
        this;
        JVM INSTR monitorexit ;
        return;
        cookiestore;
        throw cookiestore;
    }
}
