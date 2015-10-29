// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.packet.Bind;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.Session;
import org.jivesoftware.smack.sasl.SASLAnonymous;
import org.jivesoftware.smack.sasl.SASLCramMD5Mechanism;
import org.jivesoftware.smack.sasl.SASLDigestMD5Mechanism;
import org.jivesoftware.smack.sasl.SASLExternalMechanism;
import org.jivesoftware.smack.sasl.SASLGSSAPIMechanism;
import org.jivesoftware.smack.sasl.SASLMechanism;
import org.jivesoftware.smack.sasl.SASLPlainMechanism;

// Referenced classes of package org.jivesoftware.smack:
//            UserAuthentication, XMPPException, Connection, SmackConfiguration, 
//            PacketCollector, NonSASLAuthentication

public class SASLAuthentication
    implements UserAuthentication
{

    private static Map implementedMechanisms = new HashMap();
    private static List mechanismsPreferences = new ArrayList();
    private Connection connection;
    private SASLMechanism currentMechanism;
    private String errorCondition;
    private boolean resourceBinded;
    private boolean saslFailed;
    private boolean saslNegotiated;
    private Collection serverMechanisms;
    private boolean sessionSupported;

    SASLAuthentication(Connection connection1)
    {
        serverMechanisms = new ArrayList();
        currentMechanism = null;
        connection = connection1;
        init();
    }

    private String bindResourceAndEstablishSession(String s)
        throws XMPPException
    {
        this;
        JVM INSTR monitorenter ;
        long l = System.currentTimeMillis() + 30000L;
_L1:
        if (!resourceBinded && System.currentTimeMillis() < l)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        this;
        JVM INSTR monitorexit ;
        if (!resourceBinded)
        {
            throw new XMPPException("Resource binding not offered by server");
        }
        break MISSING_BLOCK_LABEL_71;
        try
        {
            wait(Math.abs(System.currentTimeMillis() - l));
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
          goto _L1
        this;
        JVM INSTR monitorexit ;
        throw s;
        Bind bind = new Bind();
        bind.setResource(s);
        s = connection.createPacketCollector(new PacketIDFilter(bind.getPacketID()));
        connection.sendPacket(bind);
        bind = (Bind)s.nextResult(SmackConfiguration.getPacketReplyTimeout());
        s.cancel();
        if (bind == null)
        {
            throw new XMPPException("No response from the server.");
        }
        if (bind.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(bind.getError());
        }
        s = bind.getJid();
        if (sessionSupported)
        {
            Object obj = new Session();
            PacketCollector packetcollector = connection.createPacketCollector(new PacketIDFilter(((Session) (obj)).getPacketID()));
            connection.sendPacket(((Packet) (obj)));
            obj = (IQ)packetcollector.nextResult(SmackConfiguration.getPacketReplyTimeout());
            packetcollector.cancel();
            if (obj == null)
            {
                throw new XMPPException("No response from the server.");
            }
            if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
            {
                throw new XMPPException(((IQ) (obj)).getError());
            } else
            {
                return s;
            }
        } else
        {
            throw new XMPPException("Session establishment not offered by server");
        }
    }

    public static List getRegisterSASLMechanisms()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = mechanismsPreferences.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            String s = (String)iterator.next();
            arraylist.add((Class)implementedMechanisms.get(s));
        } while (true);
    }

    public static void registerSASLMechanism(String s, Class class1)
    {
        implementedMechanisms.put(s, class1);
    }

    public static void supportSASLMechanism(String s)
    {
        mechanismsPreferences.add(0, s);
    }

    public static void supportSASLMechanism(String s, int i)
    {
        mechanismsPreferences.add(i, s);
    }

    public static void unregisterSASLMechanism(String s)
    {
        implementedMechanisms.remove(s);
        mechanismsPreferences.remove(s);
    }

    public static void unsupportSASLMechanism(String s)
    {
        mechanismsPreferences.remove(s);
    }

    public String authenticate(String s, String s1, String s2)
        throws XMPPException
    {
        Object obj;
        Iterator iterator;
        obj = null;
        iterator = mechanismsPreferences.iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_311;
        }
        currentMechanism = (SASLMechanism)((Class)implementedMechanisms.get(obj)).getConstructor(new Class[] {
            org/jivesoftware/smack/SASLAuthentication
        }).newInstance(new Object[] {
            this
        });
        currentMechanism.authenticate(s, connection.getServiceName(), s1);
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (saslNegotiated)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        flag = saslFailed;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        try
        {
            wait(30000L);
        }
        catch (InterruptedException interruptedexception) { }
        this;
        JVM INSTR monitorexit ;
        if (!saslFailed)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        if (errorCondition != null)
        {
            throw new XMPPException((new StringBuilder("SASL authentication ")).append(((String) (obj))).append(" failed: ").append(errorCondition).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        String s3 = (String)iterator.next();
        if (!implementedMechanisms.containsKey(s3) || !serverMechanisms.contains(s3))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = s3;
        if (true) goto _L1; else goto _L3
_L3:
        if (true) goto _L5; else goto _L4
        obj;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        return (new NonSASLAuthentication(connection)).authenticate(s, s1, s2);
_L4:
        throw new XMPPException((new StringBuilder("SASL authentication failed using mechanism ")).append(((String) (obj))).toString());
        if (saslNegotiated)
        {
            return bindResourceAndEstablishSession(s2);
        }
        obj = (new NonSASLAuthentication(connection)).authenticate(s, s1, s2);
        return ((String) (obj));
        return (new NonSASLAuthentication(connection)).authenticate(s, s1, s2);
    }

    public String authenticate(String s, String s1, CallbackHandler callbackhandler)
        throws XMPPException
    {
        String s2;
        Iterator iterator;
        s2 = null;
        iterator = mechanismsPreferences.iterator();
_L9:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        currentMechanism = (SASLMechanism)((Class)implementedMechanisms.get(s2)).getConstructor(new Class[] {
            org/jivesoftware/smack/SASLAuthentication
        }).newInstance(new Object[] {
            this
        });
        currentMechanism.authenticate(s, connection.getHost(), callbackhandler);
        this;
        JVM INSTR monitorenter ;
        long l = System.currentTimeMillis();
_L10:
        if (!saslNegotiated && !saslFailed && System.currentTimeMillis() < l) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        if (!saslFailed) goto _L6; else goto _L5
_L5:
        if (errorCondition != null)
        {
            throw new XMPPException((new StringBuilder("SASL authentication ")).append(s2).append(" failed: ").append(errorCondition).toString());
        }
          goto _L7
_L2:
        String s3 = (String)iterator.next();
        if (!implementedMechanisms.containsKey(s3) || !serverMechanisms.contains(s3)) goto _L9; else goto _L8
_L8:
        s2 = s3;
          goto _L1
_L4:
        try
        {
            wait(Math.abs(System.currentTimeMillis() - l));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        finally { }
          goto _L10
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
_L12:
        throw new XMPPException("SASL authentication failed");
_L7:
        throw new XMPPException((new StringBuilder("SASL authentication failed using mechanism ")).append(s2).toString());
_L6:
        if (!saslNegotiated) goto _L12; else goto _L11
_L11:
        s = bindResourceAndEstablishSession(s1);
        return s;
        throw new XMPPException("SASL Authentication failed. No known authentication mechanisims.");
          goto _L1
    }

    public String authenticateAnonymously()
        throws XMPPException
    {
        currentMechanism = new SASLAnonymous(this);
        currentMechanism.authenticate(null, null, "");
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (saslNegotiated)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        flag = saslFailed;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        Exception exception;
        String s;
        try
        {
            wait(5000L);
        }
        catch (InterruptedException interruptedexception) { }
        this;
        JVM INSTR monitorexit ;
        try
        {
            if (!saslFailed)
            {
                break MISSING_BLOCK_LABEL_125;
            }
            if (errorCondition != null)
            {
                throw new XMPPException((new StringBuilder("SASL authentication failed: ")).append(errorCondition).toString());
            }
        }
        catch (IOException ioexception)
        {
            return (new NonSASLAuthentication(connection)).authenticateAnonymously();
        }
        break MISSING_BLOCK_LABEL_114;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        throw new XMPPException("SASL authentication failed");
        if (saslNegotiated)
        {
            return bindResourceAndEstablishSession(null);
        }
        s = (new NonSASLAuthentication(connection)).authenticateAnonymously();
        return s;
    }

    void authenticated()
    {
        this;
        JVM INSTR monitorenter ;
        saslNegotiated = true;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void authenticationFailed()
    {
        authenticationFailed(null);
    }

    void authenticationFailed(String s)
    {
        this;
        JVM INSTR monitorenter ;
        saslFailed = true;
        errorCondition = s;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
    }

    void bindingRequired()
    {
        this;
        JVM INSTR monitorenter ;
        resourceBinded = true;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void challengeReceived(String s)
        throws IOException
    {
        currentMechanism.challengeReceived(s);
    }

    public boolean hasAnonymousAuthentication()
    {
        return serverMechanisms.contains("ANONYMOUS");
    }

    public boolean hasNonAnonymousAuthentication()
    {
        return !serverMechanisms.isEmpty() && (serverMechanisms.size() != 1 || !hasAnonymousAuthentication());
    }

    protected void init()
    {
        saslNegotiated = false;
        saslFailed = false;
        resourceBinded = false;
        sessionSupported = false;
    }

    public boolean isAuthenticated()
    {
        return saslNegotiated;
    }

    public void send(Packet packet)
    {
        connection.sendPacket(packet);
    }

    void sessionsSupported()
    {
        sessionSupported = true;
    }

    void setAvailableSASLMethods(Collection collection)
    {
        serverMechanisms = collection;
    }

    static 
    {
        registerSASLMechanism("EXTERNAL", org/jivesoftware/smack/sasl/SASLExternalMechanism);
        registerSASLMechanism("GSSAPI", org/jivesoftware/smack/sasl/SASLGSSAPIMechanism);
        registerSASLMechanism("DIGEST-MD5", org/jivesoftware/smack/sasl/SASLDigestMD5Mechanism);
        registerSASLMechanism("CRAM-MD5", org/jivesoftware/smack/sasl/SASLCramMD5Mechanism);
        registerSASLMechanism("PLAIN", org/jivesoftware/smack/sasl/SASLPlainMechanism);
        registerSASLMechanism("ANONYMOUS", org/jivesoftware/smack/sasl/SASLAnonymous);
        supportSASLMechanism("DIGEST-MD5", 0);
        supportSASLMechanism("PLAIN", 1);
        supportSASLMechanism("ANONYMOUS", 2);
    }
}
