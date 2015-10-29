// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslClientFactory;
import org.apache.harmony.javax.security.sasl.SaslException;

// Referenced classes of package org.apache.qpid.management.common.sasl:
//            PlainSaslClient

public class ClientSaslFactory
    implements SaslClientFactory
{

    public ClientSaslFactory()
    {
    }

    public SaslClient createSaslClient(String as[], String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return null;
            }
            if (as[i].equals("PLAIN"))
            {
                return new PlainSaslClient(s, callbackhandler);
            }
            i++;
        } while (true);
    }

    public String[] getMechanismNames(Map map)
    {
        return (new String[] {
            "PLAIN"
        });
    }
}
