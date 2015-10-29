// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import com.novell.sasl.client.DigestMD5SaslClient;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslException;
import org.apache.qpid.management.common.sasl.PlainSaslClient;

public class SaslClientFactory
    implements org.apache.harmony.javax.security.sasl.SaslClientFactory
{

    public SaslClientFactory()
    {
    }

    public SaslClient createSaslClient(String as[], String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        int j = as.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return null;
            }
            String s3 = as[i];
            if ("PLAIN".equals(s3))
            {
                return new PlainSaslClient(s, callbackhandler);
            }
            if ("DIGEST-MD5".equals(s3))
            {
                return DigestMD5SaslClient.getClient(s, s1, s2, map, callbackhandler);
            }
            i++;
        } while (true);
    }

    public String[] getMechanismNames(Map map)
    {
        return (new String[] {
            "PLAIN", "DIGEST-MD5"
        });
    }
}
