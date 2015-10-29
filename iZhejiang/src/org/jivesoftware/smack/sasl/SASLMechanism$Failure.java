// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.sasl:
//            SASLMechanism

public static class condition extends Packet
{

    private final String condition;

    public String getCondition()
    {
        return condition;
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<failure xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
        if (condition != null && condition.trim().length() > 0)
        {
            stringbuilder.append("<").append(condition).append("/>");
        }
        stringbuilder.append("</failure>");
        return stringbuilder.toString();
    }

    public (String s)
    {
        condition = s;
    }
}
