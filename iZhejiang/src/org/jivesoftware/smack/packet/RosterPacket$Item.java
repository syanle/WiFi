// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.packet:
//            RosterPacket

public static class itemStatus
{

    private final Set groupNames = new CopyOnWriteArraySet();
    private tatus itemStatus;
    private ype itemType;
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

    public tatus getItemStatus()
    {
        return itemStatus;
    }

    public ype getItemType()
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

    public void setItemStatus(tatus tatus)
    {
        itemStatus = tatus;
    }

    public void setItemType(ype ype)
    {
        itemType = ype;
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

    public ype(String s, String s1)
    {
        user = s.toLowerCase();
        name = s1;
        itemType = null;
        itemStatus = null;
    }
}
