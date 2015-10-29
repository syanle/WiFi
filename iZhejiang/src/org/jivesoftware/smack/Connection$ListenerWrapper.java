// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            Connection, PacketListener

protected static class packetFilter
{

    private PacketFilter packetFilter;
    private PacketListener packetListener;

    public void notifyListener(Packet packet)
    {
        if (packetFilter == null || packetFilter.accept(packet))
        {
            packetListener.processPacket(packet);
        }
    }

    public (PacketListener packetlistener, PacketFilter packetfilter)
    {
        packetListener = packetlistener;
        packetFilter = packetfilter;
    }
}
