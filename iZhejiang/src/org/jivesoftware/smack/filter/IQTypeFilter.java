// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class IQTypeFilter
    implements PacketFilter
{

    private org.jivesoftware.smack.packet.IQ.Type type;

    public IQTypeFilter(org.jivesoftware.smack.packet.IQ.Type type1)
    {
        type = type1;
    }

    public boolean accept(Packet packet)
    {
        return (packet instanceof IQ) && ((IQ)packet).getType().equals(type);
    }
}
