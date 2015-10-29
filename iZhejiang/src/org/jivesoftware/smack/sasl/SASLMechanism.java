// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import de.measite.smack.Sasl;
import java.io.IOException;
import java.util.HashMap;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.harmony.javax.security.sasl.RealmCallback;
import org.apache.harmony.javax.security.sasl.RealmChoiceCallback;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslException;
import org.jivesoftware.smack.SASLAuthentication;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.util.Base64;

public abstract class SASLMechanism
    implements CallbackHandler
{
    public class AuthMechanism extends Packet
    {

        private final String authenticationText;
        private final String name;
        final SASLMechanism this$0;

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<auth mechanism=\"").append(name);
            stringbuilder.append("\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
            if (authenticationText != null && authenticationText.trim().length() > 0)
            {
                stringbuilder.append(authenticationText);
            }
            stringbuilder.append("</auth>");
            return stringbuilder.toString();
        }

        public AuthMechanism(String s, String s1)
        {
            this$0 = SASLMechanism.this;
            super();
            if (s == null)
            {
                throw new NullPointerException("SASL mechanism name shouldn't be null.");
            } else
            {
                name = s;
                authenticationText = s1;
                return;
            }
        }
    }

    public static class Challenge extends Packet
    {

        private final String data;

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<challenge xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
            if (data != null && data.trim().length() > 0)
            {
                stringbuilder.append(data);
            }
            stringbuilder.append("</challenge>");
            return stringbuilder.toString();
        }

        public Challenge(String s)
        {
            data = s;
        }
    }

    public static class Failure extends Packet
    {

        private final String condition;

        public String getCondition()
        {
            return condition;
        }

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<failure xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
            if (condition != null && condition.trim().length() > 0)
            {
                stringbuilder.append("<").append(condition).append("/>");
            }
            stringbuilder.append("</failure>");
            return stringbuilder.toString();
        }

        public Failure(String s)
        {
            condition = s;
        }
    }

    public class Response extends Packet
    {

        private final String authenticationText;
        final SASLMechanism this$0;

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
            if (authenticationText != null)
            {
                stringbuilder.append(authenticationText);
            } else
            {
                stringbuilder.append("=");
            }
            stringbuilder.append("</response>");
            return stringbuilder.toString();
        }

        public Response()
        {
            this$0 = SASLMechanism.this;
            super();
            authenticationText = null;
        }

        public Response(String s)
        {
            this$0 = SASLMechanism.this;
            super();
            if (s == null || s.trim().length() == 0)
            {
                authenticationText = null;
                return;
            } else
            {
                authenticationText = s;
                return;
            }
        }
    }

    public static class Success extends Packet
    {

        private final String data;

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<success xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
            if (data != null && data.trim().length() > 0)
            {
                stringbuilder.append(data);
            }
            stringbuilder.append("</success>");
            return stringbuilder.toString();
        }

        public Success(String s)
        {
            data = s;
        }
    }


    protected String authenticationId;
    protected String hostname;
    protected String password;
    private SASLAuthentication saslAuthentication;
    protected SaslClient sc;

    public SASLMechanism(SASLAuthentication saslauthentication)
    {
        saslAuthentication = saslauthentication;
    }

    protected void authenticate()
        throws IOException, XMPPException
    {
        String s = null;
        try
        {
            if (sc.hasInitialResponse())
            {
                s = Base64.encodeBytes(sc.evaluateChallenge(new byte[0]), 8);
            }
        }
        catch (SaslException saslexception)
        {
            throw new XMPPException("SASL authentication failed", saslexception);
        }
        getSASLAuthentication().send(new AuthMechanism(getName(), s));
    }

    public void authenticate(String s, String s1, String s2)
        throws IOException, XMPPException
    {
        authenticationId = s;
        password = s2;
        hostname = s1;
        s2 = getName();
        HashMap hashmap = new HashMap();
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
        sc = Sasl.createSaslClient(new String[] {
            s2
        }, s, "xmpp", s1, hashmap, callbackhandler);
        authenticate();
    }

    public void challengeReceived(String s)
        throws IOException
    {
        if (s != null)
        {
            s = sc.evaluateChallenge(Base64.decode(s));
        } else
        {
            s = sc.evaluateChallenge(new byte[0]);
        }
        if (s == null)
        {
            s = new Response();
        } else
        {
            s = new Response(Base64.encodeBytes(s, 8));
        }
        getSASLAuthentication().send(s);
    }

    protected abstract String getName();

    protected SASLAuthentication getSASLAuthentication()
    {
        return saslAuthentication;
    }

    public void handle(Callback acallback[])
        throws IOException, UnsupportedCallbackException
    {
        int i = 0;
_L2:
        if (i >= acallback.length)
        {
            return;
        }
        if (!(acallback[i] instanceof NameCallback))
        {
            break; /* Loop/switch isn't completed */
        }
        ((NameCallback)acallback[i]).setName(authenticationId);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (acallback[i] instanceof PasswordCallback)
        {
            ((PasswordCallback)acallback[i]).setPassword(password.toCharArray());
        } else
        {
            if (!(acallback[i] instanceof RealmCallback))
            {
                continue; /* Loop/switch isn't completed */
            }
            ((RealmCallback)acallback[i]).setText(hostname);
        }
          goto _L3
        continue; /* Loop/switch isn't completed */
        if (acallback[i] instanceof RealmChoiceCallback) goto _L3; else goto _L4
_L4:
        throw new UnsupportedCallbackException(acallback[i]);
        if (true) goto _L2; else goto _L5
_L5:
    }
}
