// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import de.measite.smack.Sasl;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.jivesoftware.smack.SASLAuthentication;
import org.jivesoftware.smack.XMPPException;

// Referenced classes of package org.jivesoftware.smack.sasl:
//            SASLMechanism

public class SASLGSSAPIMechanism extends SASLMechanism
{

    public SASLGSSAPIMechanism(SASLAuthentication saslauthentication)
    {
        super(saslauthentication);
        System.setProperty("javax.security.auth.useSubjectCredsOnly", "false");
        System.setProperty("java.security.auth.login.config", "gss.conf");
    }

    public void authenticate(String s, String s1, String s2)
        throws IOException, XMPPException
    {
        s2 = getName();
        HashMap hashmap = new HashMap();
        hashmap.put("javax.security.sasl.server.authentication", "TRUE");
        sc = Sasl.createSaslClient(new String[] {
            s2
        }, s, "xmpp", s1, hashmap, this);
        authenticate();
    }

    public void authenticate(String s, String s1, CallbackHandler callbackhandler)
        throws IOException, XMPPException
    {
        String s2 = getName();
        HashMap hashmap = new HashMap();
        hashmap.put("javax.security.sasl.server.authentication", "TRUE");
        sc = Sasl.createSaslClient(new String[] {
            s2
        }, s, "xmpp", s1, hashmap, callbackhandler);
        authenticate();
    }

    protected String getName()
    {
        return "GSSAPI";
    }
}
