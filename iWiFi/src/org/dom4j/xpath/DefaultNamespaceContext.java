// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.xpath;

import java.io.Serializable;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.jaxen.NamespaceContext;

public class DefaultNamespaceContext
    implements NamespaceContext, Serializable
{

    private final Element element;

    public DefaultNamespaceContext(Element element1)
    {
        element = element1;
    }

    public static DefaultNamespaceContext create(Object obj)
    {
        Element element1 = null;
        if (obj instanceof Element)
        {
            element1 = (Element)obj;
        } else
        if (obj instanceof Document)
        {
            element1 = ((Document)obj).getRootElement();
        } else
        if (obj instanceof Node)
        {
            element1 = ((Node)obj).getParent();
        }
        if (element1 != null)
        {
            return new DefaultNamespaceContext(element1);
        } else
        {
            return null;
        }
    }

    public String translateNamespacePrefixToUri(String s)
    {
        if (s != null && s.length() > 0)
        {
            s = element.getNamespaceForPrefix(s);
            if (s != null)
            {
                return s.getURI();
            }
        }
        return null;
    }
}
