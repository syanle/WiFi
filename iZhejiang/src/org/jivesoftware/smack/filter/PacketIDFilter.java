// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class PacketIDFilter
    implements PacketFilter
{

    private String packetID;

    public PacketIDFilter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Packet ID cannot be null.");
        } else
        {
            packetID = s;
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        return packetID.equals(packet.getPacketID());
    }

    public String toString()
    {
        return (new StringBuilder("PacketIDFilter by id: ")).append(packetID).toString();
    }
}
