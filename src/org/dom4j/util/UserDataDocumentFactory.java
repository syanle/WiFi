// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.util:
//            UserDataAttribute, UserDataElement

public class UserDataDocumentFactory extends DocumentFactory
{

    protected static transient UserDataDocumentFactory singleton = new UserDataDocumentFactory();

    public UserDataDocumentFactory()
    {
    }

    public static DocumentFactory getInstance()
    {
        return singleton;
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        return new UserDataAttribute(qname, s);
    }

    public Element createElement(QName qname)
    {
        return new UserDataElement(qname);
    }

}
