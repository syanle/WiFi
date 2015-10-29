// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.upload;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package com.qihoo.linker.logcollector.upload:
//            HttpParameters

public class HttpManager
{
    private static class MySSLSocketFactory extends SSLSocketFactory
    {

        SSLContext sslContext;

        public Socket createSocket()
            throws IOException
        {
            return sslContext.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String s, int i, boolean flag)
            throws IOException, UnknownHostException
        {
            return sslContext.getSocketFactory().createSocket(socket, s, i, flag);
        }

        public MySSLSocketFactory(KeyStore keystore)
            throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
        {
            super(keystore);
            sslContext = SSLContext.getInstance("TLS");
            keystore = new _cls1();
            sslContext.init(null, new TrustManager[] {
                keystore
            }, null);
        }
    }


    private static final String BOUNDARY = getBoundry();
    private static final String CHARSET = "UTF-8";
    private static final String END_MP_BOUNDARY = (new StringBuilder("--")).append(BOUNDARY).append("--").toString();
    private static final String LINEND = "\r\n";
    private static final String MP_BOUNDARY = (new StringBuilder("--")).append(BOUNDARY).toString();
    private static final int SET_CONNECTION_TIMEOUT = 5000;
    private static final int SET_SOCKET_TIMEOUT = 20000;

    public HttpManager()
    {
    }

    private static String getBoundry()
    {
        StringBuffer stringbuffer;
        int i;
        stringbuffer = new StringBuffer();
        i = 1;
_L2:
        long l;
        if (i >= 12)
        {
            return stringbuffer.toString();
        }
        l = System.currentTimeMillis() + (long)i;
        if (l % 3L != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append((char)(int)l % 9);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (l % 3L == 1L)
        {
            stringbuffer.append((char)(int)(65L + l % 26L));
        } else
        {
            stringbuffer.append((char)(int)(97L + l % 26L));
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private static HttpClient getHttpClient()
    {
        Object obj;
        try
        {
            obj = KeyStore.getInstance(KeyStore.getDefaultType());
            ((KeyStore) (obj)).load(null, null);
            Object obj1 = new MySSLSocketFactory(((KeyStore) (obj)));
            ((SSLSocketFactory) (obj1)).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            obj = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj)), 10000);
            HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj)), 10000);
            HttpProtocolParams.setVersion(((org.apache.http.params.HttpParams) (obj)), HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(((org.apache.http.params.HttpParams) (obj)), "UTF-8");
            SchemeRegistry schemeregistry = new SchemeRegistry();
            schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeregistry.register(new Scheme("https", ((org.apache.http.conn.scheme.SocketFactory) (obj1)), 443));
            obj1 = new ThreadSafeClientConnManager(((org.apache.http.params.HttpParams) (obj)), schemeregistry);
            HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj)), 5000);
            HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj)), 20000);
            obj = new DefaultHttpClient(((org.apache.http.conn.ClientConnectionManager) (obj1)), ((org.apache.http.params.HttpParams) (obj)));
        }
        catch (Exception exception)
        {
            return new DefaultHttpClient();
        }
        return ((HttpClient) (obj));
    }

    private static String readHttpResponse(HttpResponse httpresponse)
    {
        httpresponse = httpresponse.getEntity();
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        httpresponse = httpresponse.getContent();
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[512];
_L1:
        int i = httpresponse.read(abyte0);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        return new String(bytearrayoutputstream.toByteArray(), "UTF-8");
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L1
        httpresponse;
        httpresponse.printStackTrace();
_L3:
        return null;
        httpresponse;
        httpresponse.printStackTrace();
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static String uploadFile(String s, HttpParameters httpparameters, File file)
        throws IOException
    {
        Object obj1;
        Object obj2;
        HttpClient httpclient = getHttpClient();
        HttpPost httppost = new HttpPost(s);
        Object obj = null;
        Object obj5 = null;
        obj1 = null;
        Object obj3 = null;
        obj2 = null;
        Object obj4 = null;
        int i;
        try
        {
            s = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (HttpParameters httpparameters)
        {
            s = obj5;
            obj1 = obj2;
            continue; /* Loop/switch isn't completed */
        }
        finally { }
        if (httpparameters == null) goto _L2; else goto _L1
_L1:
        i = 0;
_L12:
        if (i < httpparameters.size()) goto _L3; else goto _L2
_L2:
        httpparameters = new StringBuilder();
        httpparameters.append(MP_BOUNDARY).append("\r\n");
        httpparameters.append("content-disposition: form-data; name=\"logfile\"; filename=\"").append(file.getName()).append("\"").append("\r\n");
        httpparameters.append("Content-Type: application/octet-stream; charset=utf-8").append("\r\n\r\n");
        s.write(httpparameters.toString().getBytes());
        httpparameters = new FileInputStream(file);
        file = new byte[8192];
_L6:
        i = httpparameters.read(file);
        if (i != -1) goto _L5; else goto _L4
_L4:
        s.write("\r\n\r\n".getBytes());
        s.write((new StringBuilder(String.valueOf(END_MP_BOUNDARY))).append("\r\n").toString().getBytes());
        httppost.setEntity(new ByteArrayEntity(s.toByteArray()));
        obj = httpclient.execute(httppost);
        file = obj4;
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() == 200)
        {
            file = readHttpResponse(((HttpResponse) (obj)));
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw s;
            }
        }
        if (httpparameters != null)
        {
            try
            {
                httpparameters.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw s;
            }
        }
        return file;
_L3:
        obj = httpparameters.getKey(i);
        obj1 = new StringBuilder(10);
        ((StringBuilder) (obj1)).setLength(0);
        ((StringBuilder) (obj1)).append(MP_BOUNDARY).append("\r\n");
        ((StringBuilder) (obj1)).append("content-disposition: form-data; name=\"").append(((String) (obj))).append("\"").append("\r\n\r\n");
        ((StringBuilder) (obj1)).append(httpparameters.getValue(((String) (obj)))).append("\r\n");
        s.write(((StringBuilder) (obj1)).toString().getBytes());
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        s.write(file, 0, i);
          goto _L6
        file;
        obj1 = httpparameters;
        httpparameters = file;
_L10:
        obj = s;
        throw httpparameters;
_L8:
        if (obj != null)
        {
            try
            {
                ((ByteArrayOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw s;
            }
        }
        if (obj1 != null)
        {
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw s;
            }
        }
        throw s;
        httpparameters;
        obj = s;
        obj1 = obj3;
        s = httpparameters;
        continue; /* Loop/switch isn't completed */
        file;
        obj = s;
        obj1 = httpparameters;
        s = file;
        if (true) goto _L8; else goto _L7
_L7:
        break MISSING_BLOCK_LABEL_40;
        httpparameters;
        obj1 = obj2;
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
    }


    // Unreferenced inner class com/qihoo/linker/logcollector/upload/HttpManager$MySSLSocketFactory$1

/* anonymous class */
    class MySSLSocketFactory._cls1
        implements X509TrustManager
    {

        final MySSLSocketFactory this$1;

        public void checkClientTrusted(X509Certificate ax509certificate[], String s)
            throws CertificateException
        {
        }

        public void checkServerTrusted(X509Certificate ax509certificate[], String s)
            throws CertificateException
        {
        }

        public X509Certificate[] getAcceptedIssuers()
        {
            return null;
        }

            
            {
                this$1 = MySSLSocketFactory.this;
                super();
            }
    }

}
