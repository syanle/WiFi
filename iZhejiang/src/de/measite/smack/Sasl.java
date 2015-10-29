// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslException;
import org.apache.harmony.javax.security.sasl.SaslServer;

// Referenced classes of package de.measite.smack:
//            SaslClientFactory

public class Sasl
{

    private static final String CLIENTFACTORYSRV = "SaslClientFactory";
    public static final String MAX_BUFFER = "javax.security.sasl.maxbuffer";
    public static final String POLICY_FORWARD_SECRECY = "javax.security.sasl.policy.forward";
    public static final String POLICY_NOACTIVE = "javax.security.sasl.policy.noactive";
    public static final String POLICY_NOANONYMOUS = "javax.security.sasl.policy.noanonymous";
    public static final String POLICY_NODICTIONARY = "javax.security.sasl.policy.nodictionary";
    public static final String POLICY_NOPLAINTEXT = "javax.security.sasl.policy.noplaintext";
    public static final String POLICY_PASS_CREDENTIALS = "javax.security.sasl.policy.credentials";
    public static final String QOP = "javax.security.sasl.qop";
    public static final String RAW_SEND_SIZE = "javax.security.sasl.rawsendsize";
    public static final String REUSE = "javax.security.sasl.reuse";
    private static final String SERVERFACTORYSRV = "SaslServerFactory";
    public static final String SERVER_AUTH = "javax.security.sasl.server.authentication";
    public static final String STRENGTH = "javax.security.sasl.strength";

    public Sasl()
    {
    }

    public static SaslClient createSaslClient(String as[], String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        SaslClientFactory saslclientfactory;
        String as1[];
        boolean flag;
        int j;
        if (as == null)
        {
            throw new NullPointerException("auth.33");
        }
        saslclientfactory = (SaslClientFactory)getSaslClientFactories().nextElement();
        as1 = saslclientfactory.getMechanismNames(null);
        flag = false;
        j = 0;
        if (as1 == null) goto _L2; else goto _L1
_L1:
        int i;
        i = 0;
        flag = j;
_L5:
        if (i < as1.length) goto _L3; else goto _L2
_L2:
        if (flag)
        {
            return saslclientfactory.createSaslClient(as, s, s1, s2, map, callbackhandler);
        } else
        {
            return null;
        }
_L3:
        j = 0;
        do
        {
            if (j < as.length)
            {
label0:
                {
                    if (!as1[i].equals(as[j]))
                    {
                        break label0;
                    }
                    flag = true;
                }
            }
            i++;
            if (true)
            {
                continue;
            }
            j++;
        } while (true);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static SaslServer createSaslServer(String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        return org.apache.harmony.javax.security.sasl.Sasl.createSaslServer(s, s1, s2, map, callbackhandler);
    }

    public static Enumeration getSaslClientFactories()
    {
        Hashtable hashtable = new Hashtable();
        hashtable.put(new SaslClientFactory(), new Object());
        return hashtable.keys();
    }

    public static Enumeration getSaslServerFactories()
    {
        return org.apache.harmony.javax.security.sasl.Sasl.getSaslServerFactories();
    }
}
