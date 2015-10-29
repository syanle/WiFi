// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jivesoftware.smack.packet.RosterPacket;

// Referenced classes of package org.jivesoftware.smack:
//            RosterGroup, Roster, Connection

public class RosterEntry
{

    private final Connection connection;
    private String name;
    private final Roster roster;
    private org.jivesoftware.smack.packet.RosterPacket.ItemStatus status;
    private org.jivesoftware.smack.packet.RosterPacket.ItemType type;
    private String user;

    RosterEntry(String s, String s1, org.jivesoftware.smack.packet.RosterPacket.ItemType itemtype, org.jivesoftware.smack.packet.RosterPacket.ItemStatus itemstatus, Roster roster1, Connection connection1)
    {
        user = s;
        name = s1;
        type = itemtype;
        status = itemstatus;
        roster = roster1;
        connection = connection1;
    }

    static org.jivesoftware.smack.packet.RosterPacket.Item toRosterItem(RosterEntry rosterentry)
    {
        org.jivesoftware.smack.packet.RosterPacket.Item item = new org.jivesoftware.smack.packet.RosterPacket.Item(rosterentry.getUser(), rosterentry.getName());
        item.setItemType(rosterentry.getType());
        item.setItemStatus(rosterentry.getStatus());
        rosterentry = rosterentry.getGroups().iterator();
        do
        {
            if (!rosterentry.hasNext())
            {
                return item;
            }
            item.addGroupName(((RosterGroup)rosterentry.next()).getName());
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj != null && (obj instanceof RosterEntry))
        {
            return user.equals(((RosterEntry)obj).getUser());
        } else
        {
            return false;
        }
    }

    public Collection getGroups()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = roster.getGroups().iterator();
        do
        {
            RosterGroup rostergroup;
            do
            {
                if (!iterator.hasNext())
                {
                    return Collections.unmodifiableCollection(arraylist);
                }
                rostergroup = (RosterGroup)iterator.next();
            } while (!rostergroup.contains(this));
            arraylist.add(rostergroup);
        } while (true);
    }

    public String getName()
    {
        return name;
    }

    public org.jivesoftware.smack.packet.RosterPacket.ItemStatus getStatus()
    {
        return status;
    }

    public org.jivesoftware.smack.packet.RosterPacket.ItemType getType()
    {
        return type;
    }

    public String getUser()
    {
        return user;
    }

    public void setName(String s)
    {
        if (s != null && s.equals(name))
        {
            return;
        } else
        {
            name = s;
            s = new RosterPacket();
            s.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
            s.addRosterItem(toRosterItem(this));
            connection.sendPacket(s);
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        Object obj;
        stringbuilder = new StringBuilder();
        if (name != null)
        {
            stringbuilder.append(name).append(": ");
        }
        stringbuilder.append(user);
        obj = getGroups();
        if (((Collection) (obj)).isEmpty()) goto _L2; else goto _L1
_L1:
        stringbuilder.append(" [");
        obj = ((Collection) (obj)).iterator();
        stringbuilder.append(((RosterGroup)((Iterator) (obj)).next()).getName());
_L6:
        if (((Iterator) (obj)).hasNext()) goto _L4; else goto _L3
_L3:
        stringbuilder.append("]");
_L2:
        return stringbuilder.toString();
_L4:
        stringbuilder.append(", ");
        stringbuilder.append(((RosterGroup)((Iterator) (obj)).next()).getName());
        if (true) goto _L6; else goto _L5
_L5:
    }

    void updateState(String s, org.jivesoftware.smack.packet.RosterPacket.ItemType itemtype, org.jivesoftware.smack.packet.RosterPacket.ItemStatus itemstatus)
    {
        name = s;
        type = itemtype;
        status = itemstatus;
    }
}
