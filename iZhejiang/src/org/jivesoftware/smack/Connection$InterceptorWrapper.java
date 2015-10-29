// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            Connection, PacketInterceptor

protected static class packetFilter
{

    private PacketFilter packetFilter;
    private PacketInterceptor packetInterceptor;

    public boolean equals(Object obj)
    {
        if (obj != null)
        {
            if (obj instanceof packetFilter)
            {
                return ((packetFilter)obj).packetInterceptor.equals(packetInterceptor);
            }
            if (obj instanceof PacketInterceptor)
            {
                return obj.equals(packetInterceptor);
            }
        }
        return false;
    }

    public void notifyListener(Packet packet)
    {
        if (packetFilter == null || packetFilter.accept(packet))
        {
            packetInterceptor.interceptPacket(packet);
        }
    }

    public (PacketInterceptor packetinterceptor, PacketFilter packetfilter)
    {
        packetInterceptor = packetinterceptor;
        packetFilter = packetfilter;
    }
}
