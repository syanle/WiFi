// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class FromContainsFilter
    implements PacketFilter
{

    private String from;

    public FromContainsFilter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        } else
        {
            from = s.toLowerCase();
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        while (packet.getFrom() == null || packet.getFrom().toLowerCase().indexOf(from) == -1) 
        {
            return false;
        }
        return true;
    }
}
