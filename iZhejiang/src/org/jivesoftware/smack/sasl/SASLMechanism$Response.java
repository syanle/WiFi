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
    final SASLMechanism this$0;

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">");
        if (authenticationText != null)
        {
            stringbuilder.append(authenticationText);
        } else
        {
            stringbuilder.append("=");
        }
        stringbuilder.append("</response>");
        return stringbuilder.toString();
    }

    public ()
    {
        this$0 = SASLMechanism.this;
        super();
        authenticationText = null;
    }

    public authenticationText(String s)
    {
        this$0 = SASLMechanism.this;
        super();
        if (s == null || s.trim().length() == 0)
        {
            authenticationText = null;
            return;
        } else
        {
            authenticationText = s;
            return;
        }
    }
}
