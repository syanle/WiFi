// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Registration;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack:
//            XMPPException, Connection, SmackConfiguration, PacketCollector

public class AccountManager
{

    private boolean accountCreationSupported;
    private Connection connection;
    private Registration info;

    public AccountManager(Connection connection1)
    {
        info = null;
        accountCreationSupported = false;
        connection = connection1;
    }

    private void getRegistrationInfo()
        throws XMPPException
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = new Registration();
        ((Registration) (obj)).setTo(connection.getServiceName());
        Object obj1 = new AndFilter(new PacketFilter[] {
            new PacketIDFilter(((Registration) (obj)).getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
        });
        obj1 = connection.createPacketCollector(((PacketFilter) (obj1)));
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj)));
        obj = (IQ)((PacketCollector) (obj1)).nextResult(SmackConfiguration.getPacketReplyTimeout());
        ((PacketCollector) (obj1)).cancel();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        throw new XMPPException("No response from server.");
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(((IQ) (obj)).getError());
        }
        info = (Registration)obj;
        this;
        JVM INSTR monitorexit ;
    }

    public void changePassword(String s)
        throws XMPPException
    {
        Object obj = new Registration();
        ((Registration) (obj)).setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        ((Registration) (obj)).setTo(connection.getServiceName());
        ((Registration) (obj)).setUsername(StringUtils.parseName(connection.getUser()));
        ((Registration) (obj)).setPassword(s);
        s = new AndFilter(new PacketFilter[] {
            new PacketIDFilter(((Registration) (obj)).getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
        });
        s = connection.createPacketCollector(s);
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj)));
        obj = (IQ)s.nextResult(SmackConfiguration.getPacketReplyTimeout());
        s.cancel();
        if (obj == null)
        {
            throw new XMPPException("No response from server.");
        }
        if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(((IQ) (obj)).getError());
        } else
        {
            return;
        }
    }

    public void createAccount(String s, String s1)
        throws XMPPException
    {
        if (!supportsAccountCreation())
        {
            throw new XMPPException("Server does not support account creation.");
        }
        HashMap hashmap = new HashMap();
        Iterator iterator = getAccountAttributes().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                createAccount(s, s1, ((Map) (hashmap)));
                return;
            }
            hashmap.put((String)iterator.next(), "");
        } while (true);
    }

    public void createAccount(String s, String s1, Map map)
        throws XMPPException
    {
        if (!supportsAccountCreation())
        {
            throw new XMPPException("Server does not support account creation.");
        }
        Registration registration = new Registration();
        registration.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        registration.setTo(connection.getServiceName());
        registration.setUsername(s);
        registration.setPassword(s1);
        s = map.keySet().iterator();
        do
        {
            if (!s.hasNext())
            {
                s = new AndFilter(new PacketFilter[] {
                    new PacketIDFilter(registration.getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
                });
                s = connection.createPacketCollector(s);
                connection.sendPacket(registration);
                s1 = (IQ)s.nextResult(SmackConfiguration.getPacketReplyTimeout());
                s.cancel();
                if (s1 == null)
                {
                    throw new XMPPException("No response from server.");
                }
                break;
            }
            s1 = (String)s.next();
            registration.addAttribute(s1, (String)map.get(s1));
        } while (true);
        if (s1.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(s1.getError());
        } else
        {
            return;
        }
    }

    public void deleteAccount()
        throws XMPPException
    {
        if (!connection.isAuthenticated())
        {
            throw new IllegalStateException("Must be logged in to delete a account.");
        }
        Object obj = new Registration();
        ((Registration) (obj)).setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        ((Registration) (obj)).setTo(connection.getServiceName());
        ((Registration) (obj)).setRemove(true);
        Object obj1 = new AndFilter(new PacketFilter[] {
            new PacketIDFilter(((Registration) (obj)).getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
        });
        obj1 = connection.createPacketCollector(((PacketFilter) (obj1)));
        connection.sendPacket(((org.jivesoftware.smack.packet.Packet) (obj)));
        obj = (IQ)((PacketCollector) (obj1)).nextResult(SmackConfiguration.getPacketReplyTimeout());
        ((PacketCollector) (obj1)).cancel();
        if (obj == null)
        {
            throw new XMPPException("No response from server.");
        }
        if (((IQ) (obj)).getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(((IQ) (obj)).getError());
        } else
        {
            return;
        }
    }

    public String getAccountAttribute(String s)
    {
        try
        {
            if (info == null)
            {
                getRegistrationInfo();
            }
            s = (String)info.getAttributes().get(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public Collection getAccountAttributes()
    {
        Object obj;
        if (info == null)
        {
            getRegistrationInfo();
        }
        obj = info.getRequiredFields();
        if (((List) (obj)).size() <= 0)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        obj = Collections.unmodifiableSet(new HashSet(((Collection) (obj))));
        return ((Collection) (obj));
        XMPPException xmppexception;
        xmppexception;
        xmppexception.printStackTrace();
        return Collections.emptySet();
    }

    public String getAccountInstructions()
    {
        String s;
        try
        {
            if (info == null)
            {
                getRegistrationInfo();
            }
            s = info.getInstructions();
        }
        catch (XMPPException xmppexception)
        {
            return null;
        }
        return s;
    }

    void setSupportsAccountCreation(boolean flag)
    {
        accountCreationSupported = flag;
    }

    public boolean supportsAccountCreation()
    {
        boolean flag;
        flag = true;
        if (accountCreationSupported)
        {
            return true;
        }
        if (info != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        getRegistrationInfo();
        if (info.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            flag = false;
        }
        accountCreationSupported = flag;
        flag = accountCreationSupported;
        return flag;
        XMPPException xmppexception;
        xmppexception;
        return false;
    }
}
