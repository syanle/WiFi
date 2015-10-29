// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class MessageTypeFilter
    implements PacketFilter
{

    private final org.jivesoftware.smack.packet.Message.Type type;

    public MessageTypeFilter(org.jivesoftware.smack.packet.Message.Type type1)
    {
        type = type1;
    }

    public boolean accept(Packet packet)
    {
        if (!(packet instanceof Message))
        {
            return false;
        } else
        {
            return ((Message)packet).getType().equals(type);
        }
    }
}
