// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

public class Session extends IQ
{

    public Session()
    {
        setType(IQ.Type.SET);
    }

    public String getChildElementXML()
    {
        return "<session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"/>";
    }
}
