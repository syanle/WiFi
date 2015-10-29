// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack.sasl:
//            SASLMechanism

public class authenticationText extends Packet
{

    private final String authenticationText;
    private final String name;
    final SASLMechanism this$0;

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<auth mechanism=\"").append(name);
        stringbuilder.append("\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
        if (authenticationText != null && authenticationText.trim().length() > 0)
        {
            stringbuilder.append(authenticationText);
        }
        stringbuilder.append("</auth>");
        return stringbuilder.toString();
    }

    public (String s, String s1)
    {
        this$0 = SASLMechanism.this;
        super();
        if (s == null)
        {
            throw new NullPointerException("SASL mechanism name shouldn't be null.");
        } else
        {
            name = s;
            authenticationText = s1;
            return;
        }
    }
}
