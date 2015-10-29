// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

public class Bind extends IQ
{

    private String jid;
    private String resource;

    public Bind()
    {
        resource = null;
        jid = null;
        setType(IQ.Type.SET);
    }

    public String getChildElementXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind\">");
        if (resource != null)
        {
            stringbuilder.append("<resource>").append(resource).append("</resource>");
        }
        if (jid != null)
        {
            stringbuilder.append("<jid>").append(jid).append("</jid>");
        }
        stringbuilder.append("</bind>");
        return stringbuilder.toString();
    }

    public String getJid()
    {
        return jid;
    }

    public String getResource()
    {
        return resource;
    }

    public void setJid(String s)
    {
        jid = s;
    }

    public void setResource(String s)
    {
        resource = s;
    }
}
