// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import org.apache.harmony.javax.security.auth.AuthPermission;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            AppConfigurationEntry

public abstract class Configuration
{

    private static final AuthPermission GET_LOGIN_CONFIGURATION = new AuthPermission("getLoginConfiguration");
    private static final String LOGIN_CONFIGURATION_PROVIDER = "login.configuration.provider";
    private static final AuthPermission SET_LOGIN_CONFIGURATION = new AuthPermission("setLoginConfiguration");
    private static Configuration configuration;

    protected Configuration()
    {
    }

    static Configuration getAccessibleConfiguration()
    {
        Object obj;
        obj = configuration;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        org/apache/harmony/javax/security/auth/login/Configuration;
        JVM INSTR monitorenter ;
        if (configuration == null)
        {
            configuration = getDefaultProvider();
        }
        obj = configuration;
        org/apache/harmony/javax/security/auth/login/Configuration;
        JVM INSTR monitorexit ;
        return ((Configuration) (obj));
        obj;
        org/apache/harmony/javax/security/auth/login/Configuration;
        JVM INSTR monitorexit ;
        throw obj;
        return ((Configuration) (obj));
    }

    public static Configuration getConfiguration()
    {
        SecurityManager securitymanager = System.getSecurityManager();
        if (securitymanager != null)
        {
            securitymanager.checkPermission(GET_LOGIN_CONFIGURATION);
        }
        return getAccessibleConfiguration();
    }

    private static final Configuration getDefaultProvider()
    {
        return new Configuration() {

            public AppConfigurationEntry[] getAppConfigurationEntry(String s)
            {
                return new AppConfigurationEntry[0];
            }

            public void refresh()
            {
            }

        };
    }

    public static void setConfiguration(Configuration configuration1)
    {
        SecurityManager securitymanager = System.getSecurityManager();
        if (securitymanager != null)
        {
            securitymanager.checkPermission(SET_LOGIN_CONFIGURATION);
        }
        configuration = configuration1;
    }

    public abstract AppConfigurationEntry[] getAppConfigurationEntry(String s);

    public abstract void refresh();

}
