// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.sasl:
//            SASLMechanism

public static class data extends Packet
{

    private final String data;

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<challenge xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
        if (data != null && data.trim().length() > 0)
        {
            stringbuilder.append(data);
        }
        stringbuilder.append("</challenge>");
        return stringbuilder.toString();
    }

    public _cls9(String s)
    {
        data = s;
    }
}
