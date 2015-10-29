// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import de.measite.smack.Sasl;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslClientFactory;
import org.apache.harmony.javax.security.sasl.SaslException;

public class CRAMMD5HashedSaslClientFactory
    implements SaslClientFactory
{

    public static final String MECHANISM = "CRAM-MD5-HASHED";

    public CRAMMD5HashedSaslClientFactory()
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
            if (as[i].equals("CRAM-MD5-HASHED"))
            {
                if (callbackhandler == null)
                {
                    throw new SaslException("CallbackHandler must not be null");
                } else
                {
                    return Sasl.createSaslClient(new String[] {
                        "CRAM-MD5"
                    }, s, s1, s2, map, callbackhandler);
                }
            }
            i++;
        } while (true);
    }

    public String[] getMechanismNames(Map map)
    {
        return (new String[] {
            "CRAM-MD5-HASHED"
        });
    }
}
