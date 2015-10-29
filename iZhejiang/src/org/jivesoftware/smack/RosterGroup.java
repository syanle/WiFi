// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.RosterPacket;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack:
//            XMPPException, RosterEntry, Connection, SmackConfiguration, 
//            PacketCollector

public class RosterGroup
{

    private Connection connection;
    private final List entries = new ArrayList();
    private String name;

    RosterGroup(String s, Connection connection1)
    {
        name = s;
        connection = connection1;
    }

    public void addEntry(RosterEntry rosterentry)
        throws XMPPException
    {
        PacketCollector packetcollector = null;
        synchronized (entries)
        {
            if (!entries.contains(rosterentry))
            {
                RosterPacket rosterpacket = new RosterPacket();
                rosterpacket.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
                rosterentry = RosterEntry.toRosterItem(rosterentry);
                rosterentry.addGroupName(getName());
                rosterpacket.addRosterItem(rosterentry);
                packetcollector = connection.createPacketCollector(new PacketIDFilter(rosterpacket.getPacketID()));
                connection.sendPacket(rosterpacket);
            }
        }
        if (packetcollector == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        rosterentry = (IQ)packetcollector.nextResult(SmackConfiguration.getPacketReplyTimeout());
        packetcollector.cancel();
        if (rosterentry == null)
        {
            throw new XMPPException("No response from the server.");
        }
        break MISSING_BLOCK_LABEL_128;
        rosterentry;
        list;
        JVM INSTR monitorexit ;
        throw rosterentry;
        if (rosterentry.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(rosterentry.getError());
        }
    }

    public void addEntryLocal(RosterEntry rosterentry)
    {
        synchronized (entries)
        {
            entries.remove(rosterentry);
            entries.add(rosterentry);
        }
        return;
        rosterentry;
        list;
        JVM INSTR monitorexit ;
        throw rosterentry;
    }

    public boolean contains(String s)
    {
        return getEntry(s) != null;
    }

    public boolean contains(RosterEntry rosterentry)
    {
        boolean flag;
        synchronized (entries)
        {
            flag = entries.contains(rosterentry);
        }
        return flag;
        rosterentry;
        list;
        JVM INSTR monitorexit ;
        throw rosterentry;
    }

    public Collection getEntries()
    {
        List list1;
        synchronized (entries)
        {
            list1 = Collections.unmodifiableList(new ArrayList(entries));
        }
        return list1;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public RosterEntry getEntry(String s)
    {
        String s1;
        if (s == null)
        {
            return null;
        }
        s1 = StringUtils.parseBareAddress(s).toLowerCase();
        s = entries;
        s;
        JVM INSTR monitorenter ;
        Iterator iterator = entries.iterator();
_L2:
        if (!iterator.hasNext())
        {
            return null;
        }
        RosterEntry rosterentry = (RosterEntry)iterator.next();
        if (!rosterentry.getUser().equals(s1)) goto _L2; else goto _L1
_L1:
        s;
        JVM INSTR monitorexit ;
        return rosterentry;
        Exception exception;
        exception;
        s;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getEntryCount()
    {
        int i;
        synchronized (entries)
        {
            i = entries.size();
        }
        return i;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String getName()
    {
        return name;
    }

    public void removeEntry(RosterEntry rosterentry)
        throws XMPPException
    {
        PacketCollector packetcollector = null;
        synchronized (entries)
        {
            if (entries.contains(rosterentry))
            {
                RosterPacket rosterpacket = new RosterPacket();
                rosterpacket.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
                rosterentry = RosterEntry.toRosterItem(rosterentry);
                rosterentry.removeGroupName(getName());
                rosterpacket.addRosterItem(rosterentry);
                packetcollector = connection.createPacketCollector(new PacketIDFilter(rosterpacket.getPacketID()));
                connection.sendPacket(rosterpacket);
            }
        }
        if (packetcollector == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        rosterentry = (IQ)packetcollector.nextResult(SmackConfiguration.getPacketReplyTimeout());
        packetcollector.cancel();
        if (rosterentry == null)
        {
            throw new XMPPException("No response from the server.");
        }
        break MISSING_BLOCK_LABEL_128;
        rosterentry;
        list;
        JVM INSTR monitorexit ;
        throw rosterentry;
        if (rosterentry.getType() == org.jivesoftware.smack.packet.IQ.Type.ERROR)
        {
            throw new XMPPException(rosterentry.getError());
        }
    }

    void removeEntryLocal(RosterEntry rosterentry)
    {
        synchronized (entries)
        {
            if (entries.contains(rosterentry))
            {
                entries.remove(rosterentry);
            }
        }
        return;
        rosterentry;
        list;
        JVM INSTR monitorexit ;
        throw rosterentry;
    }

    public void setName(String s)
    {
        List list = entries;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = entries.iterator();
_L2:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_29;
        }
        return;
        Object obj = (RosterEntry)iterator.next();
        RosterPacket rosterpacket = new RosterPacket();
        rosterpacket.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
        obj = RosterEntry.toRosterItem(((RosterEntry) (obj)));
        ((org.jivesoftware.smack.packet.RosterPacket.Item) (obj)).removeGroupName(name);
        ((org.jivesoftware.smack.packet.RosterPacket.Item) (obj)).addGroupName(s);
        rosterpacket.addRosterItem(((org.jivesoftware.smack.packet.RosterPacket.Item) (obj)));
        connection.sendPacket(rosterpacket);
        if (true) goto _L2; else goto _L1
_L1:
        s;
        list;
        JVM INSTR monitorexit ;
        throw s;
    }
}
