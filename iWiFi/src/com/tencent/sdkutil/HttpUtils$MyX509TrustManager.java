// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class sunJSSEX509TrustManager
    implements X509TrustManager
{

    X509TrustManager sunJSSEX509TrustManager;

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
    {
        try
        {
            sunJSSEX509TrustManager.checkClientTrusted(ax509certificate, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (X509Certificate ax509certificate[])
        {
            return;
        }
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
    {
        try
        {
            sunJSSEX509TrustManager.checkServerTrusted(ax509certificate, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (X509Certificate ax509certificate[])
        {
            return;
        }
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return sunJSSEX509TrustManager.getAcceptedIssuers();
    }

    ()
    {
        Object obj;
        int i;
        try
        {
            obj = KeyStore.getInstance("JKS");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        if (obj != null)
        {
            ((KeyStore) (obj)).load(new FileInputStream("trustedCerts"), "passphrase".toCharArray());
            TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance("SunX509", "SunJSSE");
            trustmanagerfactory.init(((KeyStore) (obj)));
            obj = trustmanagerfactory.getTrustManagers();
        } else
        {
            obj = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            ((TrustManagerFactory) (obj)).init((KeyStore)null);
            obj = ((TrustManagerFactory) (obj)).getTrustManagers();
        }
        for (i = 0; i < obj.length; i++)
        {
            if (obj[i] instanceof X509TrustManager)
            {
                sunJSSEX509TrustManager = (X509TrustManager)obj[i];
                return;
            }
        }

        throw new Exception("Couldn't initialize");
    }
}
