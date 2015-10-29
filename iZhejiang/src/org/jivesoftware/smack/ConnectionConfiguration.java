// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import android.util.Log;
import java.io.File;
import java.net.InetAddress;
import java.net.UnknownHostException;
import javax.net.SocketFactory;
import org.androidpn.client.LogUtil;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.http.conn.util.InetAddressUtils;
import org.jivesoftware.smack.proxy.ProxyInfo;
import org.jivesoftware.smack.util.DNSUtil;

// Referenced classes of package org.jivesoftware.smack:
//            Connection

public class ConnectionConfiguration
    implements Cloneable
{
    public static final class SecurityMode extends Enum
    {

        private static final SecurityMode ENUM$VALUES[];
        public static final SecurityMode disabled;
        public static final SecurityMode enabled;
        public static final SecurityMode required;

        public static SecurityMode valueOf(String s)
        {
            return (SecurityMode)Enum.valueOf(org/jivesoftware/smack/ConnectionConfiguration$SecurityMode, s);
        }

        public static SecurityMode[] values()
        {
            SecurityMode asecuritymode[] = ENUM$VALUES;
            int i = asecuritymode.length;
            SecurityMode asecuritymode1[] = new SecurityMode[i];
            System.arraycopy(asecuritymode, 0, asecuritymode1, 0, i);
            return asecuritymode1;
        }

        static 
        {
            required = new SecurityMode("required", 0);
            enabled = new SecurityMode("enabled", 1);
            disabled = new SecurityMode("disabled", 2);
            ENUM$VALUES = (new SecurityMode[] {
                required, enabled, disabled
            });
        }

        private SecurityMode(String s, int i)
        {
            super(s, i);
        }
    }


    private String LOG_TAG;
    private CallbackHandler callbackHandler;
    private String capsNode;
    private boolean compressionEnabled;
    private boolean debuggerEnabled;
    private boolean expiredCertificatesCheckEnabled;
    private String host;
    private boolean isRosterVersioningAvailable;
    private String keystorePath;
    private String keystoreType;
    private boolean notMatchingDomainCheckEnabled;
    private String password;
    private String pkcs11Library;
    private int port;
    protected ProxyInfo proxy;
    private boolean reconnectionAllowed;
    private String resource;
    private boolean rosterLoadedAtLogin;
    private boolean saslAuthenticationEnabled;
    private SecurityMode securityMode;
    private boolean selfSignedCertificateEnabled;
    private boolean sendPresence;
    private String serviceName;
    private SocketFactory socketFactory;
    private String truststorePassword;
    private String truststorePath;
    private String truststoreType;
    private String username;
    private boolean verifyChainEnabled;
    private boolean verifyRootCAEnabled;

    public ConnectionConfiguration(String s)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        org.jivesoftware.smack.util.DNSUtil.HostAddress hostaddress = DNSUtil.resolveXMPPDomain(s);
        init(hostaddress.getHost(), hostaddress.getPort(), s, ProxyInfo.forDefaultProxy());
    }

    public ConnectionConfiguration(String s, int i)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        init(s, i, s, ProxyInfo.forDefaultProxy());
    }

    public ConnectionConfiguration(String s, int i, String s1)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        init(s, i, s1, ProxyInfo.forDefaultProxy());
    }

    public ConnectionConfiguration(String s, int i, String s1, ProxyInfo proxyinfo)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        init(s, i, s1, proxyinfo);
    }

    public ConnectionConfiguration(String s, int i, ProxyInfo proxyinfo)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        init(s, i, s, proxyinfo);
    }

    public ConnectionConfiguration(String s, ProxyInfo proxyinfo)
    {
        LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/ConnectionConfiguration);
        verifyChainEnabled = false;
        verifyRootCAEnabled = false;
        selfSignedCertificateEnabled = false;
        expiredCertificatesCheckEnabled = false;
        notMatchingDomainCheckEnabled = false;
        isRosterVersioningAvailable = false;
        capsNode = null;
        compressionEnabled = false;
        saslAuthenticationEnabled = true;
        debuggerEnabled = Connection.DEBUG_ENABLED;
        reconnectionAllowed = true;
        sendPresence = true;
        rosterLoadedAtLogin = true;
        securityMode = SecurityMode.enabled;
        org.jivesoftware.smack.util.DNSUtil.HostAddress hostaddress = DNSUtil.resolveXMPPDomain(s);
        init(hostaddress.getHost(), hostaddress.getPort(), s, proxyinfo);
    }

    private void init(String s, int i, String s1, ProxyInfo proxyinfo)
    {
        host = s;
        port = i;
        serviceName = s1;
        proxy = proxyinfo;
        s = System.getProperty("java.home");
        s1 = new StringBuilder();
        s1.append(s).append(File.separator).append("lib");
        s1.append(File.separator).append("security");
        s1.append(File.separator).append("cacerts");
        truststorePath = s1.toString();
        truststoreType = "jks";
        truststorePassword = "changeit";
        keystorePath = System.getProperty("javax.net.ssl.keyStore");
        keystoreType = "jks";
        pkcs11Library = "pkcs11.config";
        socketFactory = proxyinfo.getSocketFactory();
    }

    public CallbackHandler getCallbackHandler()
    {
        return callbackHandler;
    }

    String getCapsNode()
    {
        return capsNode;
    }

    public String getHost()
    {
        if (!InetAddressUtils.isIPv4Address(host) && !InetAddressUtils.isIPv6Address(host))
        {
            try
            {
                host = InetAddress.getByName(host).getHostAddress();
                Log.d(LOG_TAG, (new StringBuilder("transform host name to host address:")).append(host).toString());
            }
            catch (UnknownHostException unknownhostexception)
            {
                Log.e(LOG_TAG, unknownhostexception.getMessage(), unknownhostexception);
            }
        }
        return host;
    }

    public String getKeystorePath()
    {
        return keystorePath;
    }

    public String getKeystoreType()
    {
        return keystoreType;
    }

    public String getPKCS11Library()
    {
        return pkcs11Library;
    }

    String getPassword()
    {
        return password;
    }

    public int getPort()
    {
        return port;
    }

    String getResource()
    {
        return resource;
    }

    public SecurityMode getSecurityMode()
    {
        return securityMode;
    }

    public String getServiceName()
    {
        return serviceName;
    }

    public SocketFactory getSocketFactory()
    {
        return socketFactory;
    }

    public String getTruststorePassword()
    {
        return truststorePassword;
    }

    public String getTruststorePath()
    {
        return truststorePath;
    }

    public String getTruststoreType()
    {
        return truststoreType;
    }

    String getUsername()
    {
        return username;
    }

    public boolean isCompressionEnabled()
    {
        return compressionEnabled;
    }

    public boolean isDebuggerEnabled()
    {
        return debuggerEnabled;
    }

    public boolean isExpiredCertificatesCheckEnabled()
    {
        return expiredCertificatesCheckEnabled;
    }

    public boolean isNotMatchingDomainCheckEnabled()
    {
        return notMatchingDomainCheckEnabled;
    }

    public boolean isReconnectionAllowed()
    {
        return reconnectionAllowed;
    }

    public boolean isRosterLoadedAtLogin()
    {
        return rosterLoadedAtLogin;
    }

    boolean isRosterVersioningAvailable()
    {
        return isRosterVersioningAvailable;
    }

    public boolean isSASLAuthenticationEnabled()
    {
        return saslAuthenticationEnabled;
    }

    public boolean isSelfSignedCertificateEnabled()
    {
        return selfSignedCertificateEnabled;
    }

    boolean isSendPresence()
    {
        return sendPresence;
    }

    public boolean isVerifyChainEnabled()
    {
        return verifyChainEnabled;
    }

    public boolean isVerifyRootCAEnabled()
    {
        return verifyRootCAEnabled;
    }

    public void setCallbackHandler(CallbackHandler callbackhandler)
    {
        callbackHandler = callbackhandler;
    }

    void setCapsNode(String s)
    {
        capsNode = s;
    }

    public void setCompressionEnabled(boolean flag)
    {
        compressionEnabled = flag;
    }

    public void setDebuggerEnabled(boolean flag)
    {
        debuggerEnabled = flag;
    }

    public void setExpiredCertificatesCheckEnabled(boolean flag)
    {
        expiredCertificatesCheckEnabled = flag;
    }

    public void setKeystorePath(String s)
    {
        keystorePath = s;
    }

    public void setKeystoreType(String s)
    {
        keystoreType = s;
    }

    void setLoginInfo(String s, String s1, String s2)
    {
        username = s;
        password = s1;
        resource = s2;
    }

    public void setNotMatchingDomainCheckEnabled(boolean flag)
    {
        notMatchingDomainCheckEnabled = flag;
    }

    public void setPKCS11Library(String s)
    {
        pkcs11Library = s;
    }

    public void setReconnectionAllowed(boolean flag)
    {
        reconnectionAllowed = flag;
    }

    public void setRosterLoadedAtLogin(boolean flag)
    {
        rosterLoadedAtLogin = flag;
    }

    void setRosterVersioningAvailable(boolean flag)
    {
        isRosterVersioningAvailable = flag;
    }

    public void setSASLAuthenticationEnabled(boolean flag)
    {
        saslAuthenticationEnabled = flag;
    }

    public void setSecurityMode(SecurityMode securitymode)
    {
        securityMode = securitymode;
    }

    public void setSelfSignedCertificateEnabled(boolean flag)
    {
        selfSignedCertificateEnabled = flag;
    }

    public void setSendPresence(boolean flag)
    {
        sendPresence = flag;
    }

    public void setServiceName(String s)
    {
        serviceName = s;
    }

    public void setSocketFactory(SocketFactory socketfactory)
    {
        socketFactory = socketfactory;
    }

    public void setTruststorePassword(String s)
    {
        truststorePassword = s;
    }

    public void setTruststorePath(String s)
    {
        truststorePath = s;
    }

    public void setTruststoreType(String s)
    {
        truststoreType = s;
    }

    public void setVerifyChainEnabled(boolean flag)
    {
        verifyChainEnabled = flag;
    }

    public void setVerifyRootCAEnabled(boolean flag)
    {
        verifyRootCAEnabled = flag;
    }
}
