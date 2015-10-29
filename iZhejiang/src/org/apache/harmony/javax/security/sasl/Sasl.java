// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;

import java.security.Provider;
import java.security.Security;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;

// Referenced classes of package org.apache.harmony.javax.security.sasl:
//            SaslException, SaslClientFactory, SaslServerFactory, SaslClient, 
//            SaslServer

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

    private Sasl()
    {
    }

    public static SaslClient createSaslClient(String as[], String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        Object obj;
        if (as == null)
        {
            throw new NullPointerException("auth.33");
        }
        obj = findFactories("SaslClientFactory");
        if (((Collection) (obj)).isEmpty())
        {
            return null;
        }
        obj = ((Collection) (obj)).iterator();
_L2:
        Object obj1;
        String as1[];
        boolean flag;
        int i;
        if (!((Iterator) (obj)).hasNext())
        {
            return null;
        }
        obj1 = (SaslClientFactory)((Iterator) (obj)).next();
        as1 = ((SaslClientFactory) (obj1)).getMechanismNames(null);
        flag = false;
        boolean flag1 = false;
        if (as1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
        flag = flag1;
_L3:
        if (i < as1.length)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        obj1 = ((SaslClientFactory) (obj1)).createSaslClient(as, s, s1, s2, map, callbackhandler);
        if (obj1 != null)
        {
            return ((SaslClient) (obj1));
        }
          goto _L2
        int j = 0;
_L4:
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
          goto _L3
        j++;
          goto _L4
    }

    public static SaslServer createSaslServer(String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
        throws SaslException
    {
        Object obj;
        if (s == null)
        {
            throw new NullPointerException("auth.32");
        }
        obj = findFactories("SaslServerFactory");
        if (((Collection) (obj)).isEmpty())
        {
            return null;
        }
        obj = ((Collection) (obj)).iterator();
_L3:
        Object obj1;
        String as[];
        int i;
        boolean flag;
        if (!((Iterator) (obj)).hasNext())
        {
            return null;
        }
        obj1 = (SaslServerFactory)((Iterator) (obj)).next();
        as = ((SaslServerFactory) (obj1)).getMechanismNames(null);
        flag = false;
        i = ((flag) ? 1 : 0);
        if (as == null) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= as.length)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
label0:
            {
                if (!as[i].equals(s))
                {
                    break label0;
                }
                i = 1;
            }
        }
_L2:
        if (i != 0)
        {
            obj1 = ((SaslServerFactory) (obj1)).createSaslServer(s, s1, s2, map, callbackhandler);
            if (obj1 != null)
            {
                return ((SaslServer) (obj1));
            }
        }
          goto _L3
        i++;
          goto _L4
    }

    private static Collection findFactories(String s)
    {
        HashSet hashset;
        Provider aprovider[];
        hashset = new HashSet();
        aprovider = Security.getProviders();
        if (aprovider != null && aprovider.length != 0) goto _L2; else goto _L1
_L1:
        return hashset;
_L2:
        HashSet hashset1;
        int i;
        hashset1 = new HashSet();
        i = 0;
_L4:
        if (i >= aprovider.length) goto _L1; else goto _L3
_L3:
        String s1;
        Enumeration enumeration;
        s1 = aprovider[i].getName();
        enumeration = aprovider[i].keys();
_L6:
label0:
        {
            if (enumeration.hasMoreElements())
            {
                break label0;
            }
            i++;
        }
          goto _L4
          goto _L1
        String s2 = (String)enumeration.nextElement();
        if (!s2.startsWith(s)) goto _L6; else goto _L5
_L5:
        s2 = aprovider[i].getProperty(s2);
        if (!hashset1.add(s1.concat(s2))) goto _L6; else goto _L7
_L7:
        hashset.add(newInstance(s2, aprovider[i]));
          goto _L6
        SaslException saslexception;
        saslexception;
        saslexception.printStackTrace();
          goto _L6
    }

    public static Enumeration getSaslClientFactories()
    {
        return Collections.enumeration(findFactories("SaslClientFactory"));
    }

    public static Enumeration getSaslServerFactories()
    {
        return Collections.enumeration(findFactories("SaslServerFactory"));
    }

    private static Object newInstance(String s, Provider provider)
        throws SaslException
    {
        ClassLoader classloader = provider.getClass().getClassLoader();
        provider = classloader;
        if (classloader == null)
        {
            provider = ClassLoader.getSystemClassLoader();
        }
        try
        {
            provider = ((Provider) (Class.forName(s, true, provider).newInstance()));
        }
        // Misplaced declaration of an exception variable
        catch (Provider provider)
        {
            throw new SaslException((new StringBuilder(String.valueOf("auth.31"))).append(s).toString(), provider);
        }
        // Misplaced declaration of an exception variable
        catch (Provider provider)
        {
            throw new SaslException((new StringBuilder(String.valueOf("auth.31"))).append(s).toString(), provider);
        }
        // Misplaced declaration of an exception variable
        catch (Provider provider)
        {
            throw new SaslException((new StringBuilder(String.valueOf("auth.31"))).append(s).toString(), provider);
        }
        return provider;
    }
}
