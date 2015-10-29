// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.List;

// Referenced classes of package org.dom4j.tree:
//            AbstractDocumentType

public class DefaultDocumentType extends AbstractDocumentType
{

    protected String elementName;
    private List externalDeclarations;
    private List internalDeclarations;
    private String publicID;
    private String systemID;

    public DefaultDocumentType()
    {
    }

    public DefaultDocumentType(String s, String s1)
    {
        elementName = s;
        systemID = s1;
    }

    public DefaultDocumentType(String s, String s1, String s2)
    {
        elementName = s;
        publicID = s1;
        systemID = s2;
    }

    public String getElementName()
    {
        return elementName;
    }

    public List getExternalDeclarations()
    {
        return externalDeclarations;
    }

    public List getInternalDeclarations()
    {
        return internalDeclarations;
    }

    public String getPublicID()
    {
        return publicID;
    }

    public String getSystemID()
    {
        return systemID;
    }

    public void setElementName(String s)
    {
        elementName = s;
    }

    public void setExternalDeclarations(List list)
    {
        externalDeclarations = list;
    }

    public void setInternalDeclarations(List list)
    {
        internalDeclarations = list;
    }

    public void setPublicID(String s)
    {
        publicID = s;
    }

    public void setSystemID(String s)
    {
        systemID = s;
    }
}
