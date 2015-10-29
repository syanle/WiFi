// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class sslContext extends SSLSocketFactory
{

    private SSLContext sslContext;

    public Socket createSocket()
    {
        return sslContext.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return sslContext.getSocketFactory().createSocket(socket, s, i, flag);
    }

    public (KeyStore keystore)
    {
        super(keystore);
        sslContext = SSLContext.getInstance("TLS");
        try
        {
            keystore = new t>();
        }
        // Misplaced declaration of an exception variable
        catch (KeyStore keystore)
        {
            keystore = null;
        }
        sslContext.init(null, new TrustManager[] {
            keystore
        }, null);
    }
}
