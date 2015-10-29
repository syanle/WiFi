// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;

// Referenced classes of package org.bouncycastle.crypto.tls:
//            TlsClientContext, SecurityParameters

class TlsClientContextImpl
    implements TlsClientContext
{

    private SecureRandom secureRandom;
    private SecurityParameters securityParameters;
    private Object userObject;

    TlsClientContextImpl(SecureRandom securerandom, SecurityParameters securityparameters)
    {
        userObject = null;
        secureRandom = securerandom;
        securityParameters = securityparameters;
    }

    public SecureRandom getSecureRandom()
    {
        return secureRandom;
    }

    public SecurityParameters getSecurityParameters()
    {
        return securityParameters;
    }

    public Object getUserObject()
    {
        return userObject;
    }

    public void setUserObject(Object obj)
    {
        userObject = obj;
    }
}
