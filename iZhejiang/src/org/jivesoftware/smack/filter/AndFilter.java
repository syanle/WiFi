// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class AndFilter
    implements PacketFilter
{

    private List filters;

    public AndFilter()
    {
        filters = new ArrayList();
    }

    public transient AndFilter(PacketFilter apacketfilter[])
    {
        filters = new ArrayList();
        if (apacketfilter == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        }
        int j = apacketfilter.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            PacketFilter packetfilter = apacketfilter[i];
            if (packetfilter == null)
            {
                throw new IllegalArgumentException("Parameter cannot be null.");
            }
            filters.add(packetfilter);
            i++;
        } while (true);
    }

    public boolean accept(Packet packet)
    {
        Iterator iterator = filters.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return true;
            }
        } while (((PacketFilter)iterator.next()).accept(packet));
        return false;
    }

    public void addFilter(PacketFilter packetfilter)
    {
        if (packetfilter == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        } else
        {
            filters.add(packetfilter);
            return;
        }
    }

    public String toString()
    {
        return filters.toString();
    }
}
