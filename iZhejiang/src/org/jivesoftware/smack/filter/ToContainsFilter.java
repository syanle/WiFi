// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class ToContainsFilter
    implements PacketFilter
{

    private String to;

    public ToContainsFilter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter cannot be null.");
        } else
        {
            to = s.toLowerCase();
            return;
        }
    }

    public boolean accept(Packet packet)
    {
        while (packet.getTo() == null || packet.getTo().toLowerCase().indexOf(to) == -1) 
        {
            return false;
        }
        return true;
    }
}
