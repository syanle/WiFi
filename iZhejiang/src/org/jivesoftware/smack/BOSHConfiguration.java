// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.net.URI;
import java.net.URISyntaxException;
import org.jivesoftware.smack.proxy.ProxyInfo;

// Referenced classes of package org.jivesoftware.smack:
//            ConnectionConfiguration

public class BOSHConfiguration extends ConnectionConfiguration
{

    private String file;
    private boolean ssl;

    public BOSHConfiguration(String s)
    {
        super(s, 7070);
        setSASLAuthenticationEnabled(true);
        ssl = false;
        file = "/http-bind/";
    }

    public BOSHConfiguration(String s, int i)
    {
        super(s, i);
        setSASLAuthenticationEnabled(true);
        ssl = false;
        file = "/http-bind/";
    }

    public BOSHConfiguration(boolean flag, String s, int i, String s1, String s2)
    {
        super(s, i, s2);
        setSASLAuthenticationEnabled(true);
        ssl = flag;
        if (s1 == null)
        {
            s1 = "/";
        }
        file = s1;
    }

    public BOSHConfiguration(boolean flag, String s, int i, String s1, ProxyInfo proxyinfo, String s2)
    {
        super(s, i, s2, proxyinfo);
        setSASLAuthenticationEnabled(true);
        ssl = flag;
        if (s1 == null)
        {
            s1 = "/";
        }
        file = s1;
    }

    public String getProxyAddress()
    {
        if (proxy != null)
        {
            return proxy.getProxyAddress();
        } else
        {
            return null;
        }
    }

    public ProxyInfo getProxyInfo()
    {
        return proxy;
    }

    public int getProxyPort()
    {
        if (proxy != null)
        {
            return proxy.getProxyPort();
        } else
        {
            return 8080;
        }
    }

    public URI getURI()
        throws URISyntaxException
    {
        if (file.charAt(0) != '/')
        {
            file = (new StringBuilder(String.valueOf('/'))).append(file).toString();
        }
        String s;
        if (ssl)
        {
            s = "https://";
        } else
        {
            s = "http://";
        }
        return new URI((new StringBuilder(String.valueOf(s))).append(getHost()).append(":").append(getPort()).append(file).toString());
    }

    public boolean isProxyEnabled()
    {
        return proxy != null && proxy.getProxyType() != org.jivesoftware.smack.proxy.ProxyInfo.ProxyType.NONE;
    }

    public boolean isUsingSSL()
    {
        return ssl;
    }
}
