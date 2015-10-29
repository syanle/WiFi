// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.lbsapi.auth:
//            a, ErrorMessage, d

class c
{
    static interface a
    {

        public abstract void a(Object obj);
    }

    class b extends SSLSocketFactory
        implements X509TrustManager
    {

        SSLContext a;
        X509TrustManager b;
        final c c;

        public void checkClientTrusted(X509Certificate ax509certificate[], String s)
            throws CertificateException
        {
            b.checkClientTrusted(ax509certificate, s);
        }

        public void checkServerTrusted(X509Certificate ax509certificate[], String s)
            throws CertificateException
        {
            if (ax509certificate != null && ax509certificate.length == 1)
            {
                ax509certificate[0].checkValidity();
                return;
            } else
            {
                b.checkServerTrusted(ax509certificate, s);
                return;
            }
        }

        public Socket createSocket()
            throws IOException
        {
            return a.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String s, int i, boolean flag)
            throws IOException, UnknownHostException
        {
            return a.getSocketFactory().createSocket(socket, s, i, flag);
        }

        public X509Certificate[] getAcceptedIssuers()
        {
            return b.getAcceptedIssuers();
        }

        public b(KeyStore keystore)
            throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
        {
            c = c.this;
            super(keystore);
            a = SSLContext.getInstance("TLS");
            b = null;
            c1 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            init(keystore);
            c1 = getTrustManagers();
            if (com.baidu.lbsapi.auth.a.a)
            {
                com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("trustmanagers.length:").append(c.this.length).toString());
            }
            if (c.this.length == 0)
            {
                throw new NoSuchAlgorithmException("no trust manager found");
            } else
            {
                b = (X509TrustManager)c.this[0];
                a.init(null, new TrustManager[] {
                    b
                }, null);
                return;
            }
        }
    }


    private final String a = "HttpAsyncTask";
    private Context b;
    private String c;
    private String d;
    private HashMap e;
    private a f;

    protected c(Context context)
    {
        c = null;
        d = null;
        e = null;
        f = null;
        b = context;
    }

    private String a(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context == null || !context.isAvailable())
        {
            return "";
        }
        context = context.getExtraInfo();
        if (context != null && (context.trim().toLowerCase().equals("cmwap") || context.trim().toLowerCase().equals("uniwap") || context.trim().toLowerCase().equals("3gwap") || context.trim().toLowerCase().equals("ctwap")))
        {
            if (context.trim().toLowerCase().equals("ctwap"))
            {
                return "ctwap";
            } else
            {
                return "cmwap";
            }
        } else
        {
            return "wifi";
        }
    }

    static String a(c c1)
    {
        return c1.d;
    }

    private HashMap a(HashMap hashmap)
    {
        HashMap hashmap1 = new HashMap();
        String s;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); hashmap1.put(s, hashmap.get(s)))
        {
            s = iterator.next().toString();
        }

        return hashmap1;
    }

    private HttpClient a()
    {
        Object obj = null;
        Object obj1;
        Exception exception1;
        Object obj2;
        try
        {
            obj2 = CertificateFactory.getInstance("X.509");
        }
        catch (Exception exception)
        {
            return new DefaultHttpClient();
        }
        obj1 = b.getResources().getAssets().open("sapi_cert.cer");
        obj = obj1;
        obj2 = ((CertificateFactory) (obj2)).generateCertificate(((InputStream) (obj1)));
        ((InputStream) (obj1)).close();
        obj = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore) (obj)).load(null, null);
        ((KeyStore) (obj)).setCertificateEntry("ca", ((java.security.cert.Certificate) (obj2)));
        obj = new b(((KeyStore) (obj)));
        ((SSLSocketFactory) (obj)).setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        obj1 = new BasicHttpParams();
        HttpProtocolParams.setVersion(((HttpParams) (obj1)), HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(((HttpParams) (obj1)), "UTF-8");
        obj2 = new SchemeRegistry();
        ((SchemeRegistry) (obj2)).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        ((SchemeRegistry) (obj2)).register(new Scheme("https", ((org.apache.http.conn.scheme.SocketFactory) (obj)), 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(((HttpParams) (obj1)), ((SchemeRegistry) (obj2))), ((HttpParams) (obj1)));
        exception1;
        ((InputStream) (obj)).close();
        throw exception1;
    }

    static void a(c c1, String s, HashMap hashmap)
    {
        c1.a(s, hashmap);
    }

    private void a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        s = jsonobject;
        if (jsonobject.has("status"))
        {
            break MISSING_BLOCK_LABEL_32;
        }
        jsonobject.put("status", -1);
        s = jsonobject;
_L1:
        if (f != null)
        {
            a a1 = f;
            JSONException jsonexception;
            if (s != null)
            {
                s = s.toString();
            } else
            {
                s = (new JSONObject()).toString();
            }
            a1.a(s);
        }
        return;
        s;
        s = new JSONObject();
        try
        {
            s.put("status", -1);
        }
        // Misplaced declaration of an exception variable
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
          goto _L1
    }

    private void a(String s, HashMap hashmap)
    {
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("syncConnect start Thread id = ").append(String.valueOf(Thread.currentThread().getId())).toString());
        }
        HttpClient httpclient = a();
        b(httpclient);
        if (a(httpclient))
        {
            a(httpclient, s, hashmap);
        } else
        {
            a(ErrorMessage.a("Current network is not available."));
        }
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("syncConnect end");
        }
    }

    private void a(HttpClient httpclient, String s, HashMap hashmap)
    {
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("httpPost start");
        }
        double d1;
        HttpPost httppost;
        if (com.baidu.lbsapi.auth.a.a)
        {
            d1 = System.currentTimeMillis();
        } else
        {
            d1 = 0.0D;
        }
        httppost = new HttpPost(s);
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("httpPost url:").append(s).toString());
        }
        if (hashmap == null)
        {
            a(ErrorMessage.a("Post paramters is null;"));
        } else
        {
            ArrayList arraylist = new ArrayList(hashmap.size());
            hashmap = hashmap.entrySet().iterator();
            do
            {
                if (!hashmap.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)hashmap.next();
                if (!((String)entry.getKey()).equals("url"))
                {
                    if (com.baidu.lbsapi.auth.a.a)
                    {
                        com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("").append((String)entry.getKey()).append(":").append((String)entry.getValue()).toString());
                    }
                    arraylist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue()));
                }
            } while (true);
            if (com.baidu.lbsapi.auth.a.a)
            {
                com.baidu.lbsapi.auth.a.a("httpPost add params end");
            }
            hashmap = httppost.getAllHeaders();
            int k = hashmap.length;
            for (int i = 0; i < k; i++)
            {
                Header header = hashmap[i];
                if (com.baidu.lbsapi.auth.a.a)
                {
                    com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("http header : ").append(header.getName()).append("=").append(header.getValue()).toString());
                }
            }

            int j;
            try
            {
                hashmap = new UrlEncodedFormEntity(arraylist, "utf-8");
            }
            // Misplaced declaration of an exception variable
            catch (HttpClient httpclient)
            {
                a(ErrorMessage.a((new StringBuilder()).append("Paramters encoding exception:").append(httpclient.getMessage()).toString()));
                return;
            }
            httppost.setEntity(hashmap);
            try
            {
                if (com.baidu.lbsapi.auth.a.a)
                {
                    com.baidu.lbsapi.auth.a.a("httpPost execute");
                }
                httpclient = httpclient.execute(httppost);
            }
            // Misplaced declaration of an exception variable
            catch (HttpClient httpclient)
            {
                a(ErrorMessage.a((new StringBuilder()).append("Connect timeout exception:").append(httpclient.getMessage()).toString()));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (HttpClient httpclient)
            {
                a(ErrorMessage.a((new StringBuilder()).append("Socket timeout exception:").append(httpclient.getMessage()).toString()));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (HttpClient httpclient)
            {
                a(ErrorMessage.a((new StringBuilder()).append("Exception:").append(httpclient.getMessage()).toString()));
                return;
            }
            if (com.baidu.lbsapi.auth.a.a)
            {
                com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("POST Thread duration:").append(((double)System.currentTimeMillis() - d1) / 1000D).append("[url:").append(s).append("]").toString());
            }
            if (httpclient != null && httpclient.getStatusLine() != null)
            {
                j = httpclient.getStatusLine().getStatusCode();
            } else
            {
                a(ErrorMessage.a("Error: http response can not get status code."));
                j = 0;
            }
            if (j != 200)
            {
                if (com.baidu.lbsapi.auth.a.a)
                {
                    com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("syncConnect 104").append(httpclient.getStatusLine().getReasonPhrase()).toString());
                }
                a(ErrorMessage.a((new StringBuilder()).append("Http code:").append(j).append(";").append(httpclient.getStatusLine().getReasonPhrase()).toString()));
                return;
            }
            try
            {
                c = EntityUtils.toString(httpclient.getEntity(), "utf-8");
            }
            // Misplaced declaration of an exception variable
            catch (HttpClient httpclient)
            {
                a(ErrorMessage.a((new StringBuilder()).append("Exception:").append(httpclient.getMessage()).toString()));
                return;
            }
            if (com.baidu.lbsapi.auth.a.a)
            {
                com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("syncConnect parse result = ").append(c).toString());
            }
            a(c);
            if (com.baidu.lbsapi.auth.a.a)
            {
                com.baidu.lbsapi.auth.a.a("httpPost end");
                return;
            }
        }
    }

    private boolean a(HttpClient httpclient)
    {
        Object obj;
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("checkNetwork 1 start");
        }
        obj = ((ConnectivityManager)b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (obj == null || !((NetworkInfo) (obj)).isAvailable())
        {
            return false;
        }
        obj = a(b);
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("checkNetwork = ").append(((String) (obj))).toString());
        }
        if (!((String) (obj)).equals("cmwap")) goto _L2; else goto _L1
_L1:
        obj = new HttpHost("10.0.0.172", 80, "http");
        httpclient.getParams().setParameter("http.route.default-proxy", obj);
_L4:
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("checkNetwork 4 end");
        }
        return true;
_L2:
        if (((String) (obj)).equals("ctwap"))
        {
            HttpHost httphost = new HttpHost("10.0.0.200", 80, "http");
            httpclient.getParams().setParameter("http.route.default-proxy", httphost);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static HashMap b(c c1)
    {
        return c1.e;
    }

    private void b(HttpClient httpclient)
    {
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("setTimeout start");
        }
        httpclient.getParams().setIntParameter("http.socket.timeout", 50000);
        httpclient.getParams().setIntParameter("http.connection.timeout", 50000);
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("setTimeout end");
        }
    }

    protected void a(HashMap hashmap, a a1)
    {
        e = a(hashmap);
        f = a1;
        d = (String)e.get("url");
        (new Thread(new d(this))).start();
    }
}
