// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dtd;


public class ExternalEntityDecl
{

    private String name;
    private String publicID;
    private String systemID;

    public ExternalEntityDecl()
    {
    }

    public ExternalEntityDecl(String s, String s1, String s2)
    {
        name = s;
        publicID = s1;
        systemID = s2;
    }

    public String getName()
    {
        return name;
    }

    public String getPublicID()
    {
        return publicID;
    }

    public String getSystemID()
    {
        return systemID;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPublicID(String s)
    {
        publicID = s;
    }

    public void setSystemID(String s)
    {
        systemID = s;
    }

    public String toString()
    {
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer("<!ENTITY ");
        if (name.startsWith("%"))
        {
            stringbuffer.append("% ");
            stringbuffer.append(name.substring(1));
        } else
        {
            stringbuffer.append(name);
        }
        if (publicID == null) goto _L2; else goto _L1
_L1:
        stringbuffer.append(" PUBLIC \"");
        stringbuffer.append(publicID);
        stringbuffer.append("\" ");
        if (systemID != null)
        {
            stringbuffer.append("\"");
            stringbuffer.append(systemID);
            stringbuffer.append("\" ");
        }
_L4:
        stringbuffer.append(">");
        return stringbuffer.toString();
_L2:
        if (systemID != null)
        {
            stringbuffer.append(" SYSTEM \"");
            stringbuffer.append(systemID);
            stringbuffer.append("\" ");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
