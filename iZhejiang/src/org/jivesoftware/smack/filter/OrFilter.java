// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class OrFilter
    implements PacketFilter
{

    private PacketFilter filters[];
    private int size;

    public OrFilter()
    {
        size = 0;
        filters = new PacketFilter[3];
    }

    public OrFilter(PacketFilter packetfilter, PacketFilter packetfilter1)
    {
        if (packetfilter == null || packetfilter1 == null)
        {
            throw new IllegalArgumentException("Parameters cannot be null.");
        } else
        {
            size = 2;
            filters = new PacketFilter[2];
            filters[0] = packetfilter;
            filters[1] = packetfilter1;
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        int i = 0;
        do
        {
            if (i >= size)
            {
                return false;
            }
            if (filters[i].accept(packet))
            {
                return true;
            }
            i++;
        } while (true);
    }

    public void addFilter(PacketFilter packetfilter)
    {
        if (packetfilter == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        }
        if (size != filters.length) goto _L2; else goto _L1
_L1:
        PacketFilter apacketfilter[];
        int i;
        apacketfilter = new PacketFilter[filters.length + 2];
        i = 0;
_L6:
        if (i < filters.length) goto _L4; else goto _L3
_L3:
        filters = apacketfilter;
_L2:
        filters[size] = packetfilter;
        size = size + 1;
        return;
_L4:
        apacketfilter[i] = filters[i];
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String toString()
    {
        return filters.toString();
    }
}
