// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;

import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;

// Referenced classes of package org.apache.harmony.javax.security.sasl:
//            SaslException, SaslClient

public interface SaslClientFactory
{

    public abstract SaslClient createSaslClient(String as[], String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException;

    public abstract String[] getMechanismNames(Map map);
}
