// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class FromMatchesFilter
    implements PacketFilter
{

    private String address;
    private boolean matchBareJID;

    public FromMatchesFilter(String s)
    {
        matchBareJID = false;
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        } else
        {
            address = s.toLowerCase();
            matchBareJID = "".equals(StringUtils.parseResource(s));
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        if (packet.getFrom() == null)
        {
            return false;
        }
        if (matchBareJID)
        {
            return packet.getFrom().toLowerCase().startsWith(address);
        } else
        {
            return address.equals(packet.getFrom().toLowerCase());
        }
    }

    public String toString()
    {
        return (new StringBuilder("FromMatchesFilter: ")).append(address).toString();
    }
}
