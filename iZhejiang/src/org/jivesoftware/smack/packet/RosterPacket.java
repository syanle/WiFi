// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

public class RosterPacket extends IQ
{
    public static class Item
    {

        private final Set groupNames = new CopyOnWriteArraySet();
        private ItemStatus itemStatus;
        private ItemType itemType;
        private String name;
        private String user;

        public void addGroupName(String s)
        {
            groupNames.add(s);
        }

        public Set getGroupNames()
        {
            return Collections.unmodifiableSet(groupNames);
        }

        public ItemStatus getItemStatus()
        {
            return itemStatus;
        }

        public ItemType getItemType()
        {
            return itemType;
        }

        public String getName()
        {
            return name;
        }

        public String getUser()
        {
            return user;
        }

        public void removeGroupName(String s)
        {
            groupNames.remove(s);
        }

        public void setItemStatus(ItemStatus itemstatus)
        {
            itemStatus = itemstatus;
        }

        public void setItemType(ItemType itemtype)
        {
            itemType = itemtype;
        }

        public void setName(String s)
        {
            name = s;
        }

        public String toXML()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("<item jid=\"").append(user).append("\"");
            if (name != null)
            {
                stringbuilder.append(" name=\"").append(StringUtils.escapeForXML(name)).append("\"");
            }
            if (itemType != null)
            {
                stringbuilder.append(" subscription=\"").append(itemType).append("\"");
            }
            if (itemStatus != null)
            {
                stringbuilder.append(" ask=\"").append(itemStatus).append("\"");
            }
            stringbuilder.append(">");
            Iterator iterator = groupNames.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append("</item>");
                    return stringbuilder.toString();
                }
                String s = (String)iterator.next();
                stringbuilder.append("<group>").append(StringUtils.escapeForXML(s)).append("</group>");
            } while (true);
        }

        public Item(String s, String s1)
        {
            user = s.toLowerCase();
            name = s1;
            itemType = null;
            itemStatus = null;
        }
    }

    public static class ItemStatus
    {

        public static final ItemStatus SUBSCRIPTION_PENDING = new ItemStatus("subscribe");
        public static final ItemStatus UNSUBSCRIPTION_PENDING = new ItemStatus("unsubscribe");
        private String value;

        public static ItemStatus fromString(String s)
        {
            if (s != null)
            {
                s = s.toLowerCase();
                if ("unsubscribe".equals(s))
                {
                    return UNSUBSCRIPTION_PENDING;
                }
                if ("subscribe".equals(s))
                {
                    return SUBSCRIPTION_PENDING;
                }
            }
            return null;
        }

        public String toString()
        {
            return value;
        }


        private ItemStatus(String s)
        {
            value = s;
        }
    }

    public static final class ItemType extends Enum
    {

        private static final ItemType ENUM$VALUES[];
        public static final ItemType both;
        public static final ItemType from;
        public static final ItemType none;
        public static final ItemType remove;
        public static final ItemType to;

        public static ItemType valueOf(String s)
        {
            return (ItemType)Enum.valueOf(org/jivesoftware/smack/packet/RosterPacket$ItemType, s);
        }

        public static ItemType[] values()
        {
            ItemType aitemtype[] = ENUM$VALUES;
            int i = aitemtype.length;
            ItemType aitemtype1[] = new ItemType[i];
            System.arraycopy(aitemtype, 0, aitemtype1, 0, i);
            return aitemtype1;
        }

        static 
        {
            none = new ItemType("none", 0);
            to = new ItemType("to", 1);
            from = new ItemType("from", 2);
            both = new ItemType("both", 3);
            remove = new ItemType("remove", 4);
            ENUM$VALUES = (new ItemType[] {
                none, to, from, both, remove
            });
        }

        private ItemType(String s, int i)
        {
            super(s, i);
        }
    }


    private final List rosterItems = new ArrayList();
    private String version;

    public RosterPacket()
    {
    }

    public void addRosterItem(Item item)
    {
        synchronized (rosterItems)
        {
            rosterItems.add(item);
        }
        return;
        item;
        list;
        JVM INSTR monitorexit ;
        throw item;
    }

    public String getChildElementXML()
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        stringbuilder.append("<query xmlns=\"jabber:iq:roster\" ");
        if (version != null)
        {
            stringbuilder.append((new StringBuilder(" ver=\"")).append(version).append("\" ").toString());
        }
        stringbuilder.append(">");
        List list = rosterItems;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = rosterItems.iterator();
_L1:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_98;
        }
        stringbuilder.append("</query>");
        return stringbuilder.toString();
        stringbuilder.append(((Item)iterator.next()).toXML());
          goto _L1
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getRosterItemCount()
    {
        int i;
        synchronized (rosterItems)
        {
            i = rosterItems.size();
        }
        return i;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Collection getRosterItems()
    {
        List list1;
        synchronized (rosterItems)
        {
            list1 = Collections.unmodifiableList(new ArrayList(rosterItems));
        }
        return list1;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String s)
    {
        version = s;
    }
}
