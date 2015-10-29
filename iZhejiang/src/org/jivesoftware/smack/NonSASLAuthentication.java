// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.packet.Authentication;
import org.jivesoftware.smack.packet.IQ;

// Referenced classes of package org.jivesoftware.smack:
//            UserAuthentication, XMPPException, Connection, SmackConfiguration, 
//            PacketCollector

class NonSASLAuthentication
    implements UserAuthentication
{

    private Connection connection;

    public NonSASLAuthentication(Connection connection1)
    {
        connection = connection1;
    }

    public String authenticate(String s, String s1, String s2)
        throws XMPPException
    {
        Object obj1 = new Authentication();
        ((Authentication) (obj1)).setType(org.jivesoftware.smack.packet.IQ.Type.GET);
        ((Authentication) (obj1)).setUsername(s);
        Object obj = connection.createPacketCollector(new PacketIDFilter(((Authentication) (obj1)).getPacketID()));
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj1)));
        obj1 = (IQ)((PacketCollector) (obj)).nextResult(SmackConfiguration.getPacketReplyTimeout());
        if (obj1 == null)
        {
            throw new XMPPException("No response from the server.");
        }
        if (((IQ) (obj1)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(((IQ) (obj1)).getError());
        }
        obj1 = (Authentication)obj1;
        ((PacketCollector) (obj)).cancel();
        obj = new Authentication();
        ((Authentication) (obj)).setUsername(s);
        if (((Authentication) (obj1)).getDigest() != null)
        {
            ((Authentication) (obj)).setDigest(connection.getConnectionID(), s1);
        } else
        if (((Authentication) (obj1)).getPassword() != null)
        {
            ((Authentication) (obj)).setPassword(s1);
        } else
        {
            throw new XMPPException("Server does not support compatible authentication mechanism.");
        }
        ((Authentication) (obj)).setResource(s2);
        s = connection.createPacketCollector(new PacketIDFilter(((Authentication) (obj)).getPacketID()));
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj)));
        s1 = (IQ)s.nextResult(SmackConfiguration.getPacketReplyTimeout());
        if (s1 == null)
        {
            throw new XMPPException("Authentication failed.");
        }
        if (s1.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(s1.getError());
        } else
        {
            s.cancel();
            return s1.getTo();
        }
    }

    public String authenticate(String s, String s1, CallbackHandler callbackhandler)
        throws XMPPException
    {
        PasswordCallback passwordcallback = new PasswordCallback("Password: ", false);
        try
        {
            callbackhandler.handle(new Callback[] {
                passwordcallback
            });
            s = authenticate(s, String.valueOf(passwordcallback.getPassword()), s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new XMPPException("Unable to determine password.", s);
        }
        return s;
    }

    public String authenticateAnonymously()
        throws XMPPException
    {
        Object obj = new Authentication();
        PacketCollector packetcollector = connection.createPacketCollector(new PacketIDFilter(((Authentication) (obj)).getPacketID()));
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj)));
        obj = (IQ)packetcollector.nextResult(SmackConfiguration.getPacketReplyTimeout());
        if (obj == null)
        {
            throw new XMPPException("Anonymous login failed.");
        }
        if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(((IQ) (obj)).getError());
        }
        packetcollector.cancel();
        if (((IQ) (obj)).getTo() != null)
        {
            return ((IQ) (obj)).getTo();
        } else
        {
            return (new StringBuilder(String.valueOf(connection.getServiceName()))).append("/").append(((Authentication)obj).getResource()).toString();
        }
    }
}
