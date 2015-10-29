// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.AllowAllHostnameVerifier;
import org.apache.http.conn.ssl.SSLSocketFactory;

// Referenced classes of package com.iwifi.sdk.tools:
//            TrustAllManager

public class TrustAllSSLSocketFactory extends SSLSocketFactory
{

    private javax.net.ssl.SSLSocketFactory factory;

    public TrustAllSSLSocketFactory()
        throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException
    {
        super(null);
        try
        {
            SSLContext sslcontext = SSLContext.getInstance("TLS");
            sslcontext.init(null, new TrustManager[] {
                new TrustAllManager()
            }, null);
            factory = sslcontext.getSocketFactory();
            setHostnameVerifier(new AllowAllHostnameVerifier());
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static SocketFactory getDefault()
        throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException
    {
        return new TrustAllSSLSocketFactory();
    }

    public Socket createSocket()
        throws IOException
    {
        return factory.createSocket();
    }

    public Socket createSocket(String s, int i)
        throws IOException
    {
        return factory.createSocket(s, i);
    }

    public Socket createSocket(String s, int i, InetAddress inetaddress, int j)
        throws IOException
    {
        return factory.createSocket(s, i, inetaddress, j);
    }

    public Socket createSocket(InetAddress inetaddress, int i)
        throws IOException
    {
        return factory.createSocket(inetaddress, i);
    }

    public Socket createSocket(InetAddress inetaddress, int i, InetAddress inetaddress1, int j)
        throws IOException
    {
        return factory.createSocket(inetaddress, i, inetaddress1, j);
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
        throws IOException
    {
        return factory.createSocket(socket, s, i, flag);
    }

    public String[] getDefaultCipherSuites()
    {
        return factory.getDefaultCipherSuites();
    }

    public String[] getSupportedCipherSuites()
    {
        return factory.getSupportedCipherSuites();
    }
}
