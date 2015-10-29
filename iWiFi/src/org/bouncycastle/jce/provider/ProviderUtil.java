// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Permission;
import org.bouncycastle.jce.ProviderConfigurationPermission;
import org.bouncycastle.jce.provider.asymmetric.ec.EC5Util;
import org.bouncycastle.jce.spec.ECParameterSpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            BouncyCastleProvider

public class ProviderUtil
{

    private static Permission BC_EC_LOCAL_PERMISSION;
    private static Permission BC_EC_PERMISSION;
    private static final long MAX_MEMORY = Runtime.getRuntime().maxMemory();
    private static volatile ECParameterSpec ecImplicitCaParams;
    private static ThreadLocal threadSpec = new ThreadLocal();

    public ProviderUtil()
    {
    }

    public static ECParameterSpec getEcImplicitlyCa()
    {
        ECParameterSpec ecparameterspec = (ECParameterSpec)threadSpec.get();
        if (ecparameterspec != null)
        {
            return ecparameterspec;
        } else
        {
            return ecImplicitCaParams;
        }
    }

    static int getReadLimit(InputStream inputstream)
        throws IOException
    {
        if (inputstream instanceof ByteArrayInputStream)
        {
            return inputstream.available();
        }
        if (MAX_MEMORY > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)MAX_MEMORY;
        }
    }

    static void setParameter(String s, Object obj)
    {
        SecurityManager securitymanager = System.getSecurityManager();
        if (!s.equals("threadLocalEcImplicitlyCa")) goto _L2; else goto _L1
_L1:
        if (securitymanager != null)
        {
            securitymanager.checkPermission(BC_EC_LOCAL_PERMISSION);
        }
        if ((obj instanceof ECParameterSpec) || obj == null)
        {
            s = (ECParameterSpec)obj;
        } else
        {
            s = EC5Util.convertSpec((java.security.spec.ECParameterSpec)obj, false);
        }
        if (s != null) goto _L4; else goto _L3
_L3:
        threadSpec.remove();
_L6:
        return;
_L4:
        threadSpec.set(s);
        return;
_L2:
        if (s.equals("ecImplicitlyCa"))
        {
            if (securitymanager != null)
            {
                securitymanager.checkPermission(BC_EC_PERMISSION);
            }
            if ((obj instanceof ECParameterSpec) || obj == null)
            {
                ecImplicitCaParams = (ECParameterSpec)obj;
                return;
            } else
            {
                ecImplicitCaParams = EC5Util.convertSpec((java.security.spec.ECParameterSpec)obj, false);
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    static 
    {
        BC_EC_LOCAL_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "threadLocalEcImplicitlyCa");
        BC_EC_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "ecImplicitlyCa");
    }
}
