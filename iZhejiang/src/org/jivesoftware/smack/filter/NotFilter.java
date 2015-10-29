// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class NotFilter
    implements PacketFilter
{

    private PacketFilter filter;

    public NotFilter(PacketFilter packetfilter)
    {
        if (packetfilter == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        } else
        {
            filter = packetfilter;
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        return !filter.accept(packet);
    }
}
