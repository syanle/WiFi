// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.filter;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.filter:
//            PacketFilter

public class PacketExtensionFilter
    implements PacketFilter
{

    private String elementName;
    private String namespace;

    public PacketExtensionFilter(String s)
    {
        this(null, s);
    }

    public PacketExtensionFilter(String s, String s1)
    {
        elementName = s;
        namespace = s1;
    }

    public boolean accept(Packet packet)
    {
        return packet.getExtension(elementName, namespace) != null;
    }
}
