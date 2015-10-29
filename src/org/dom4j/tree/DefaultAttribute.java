// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            FlyweightAttribute

public class DefaultAttribute extends FlyweightAttribute
{

    private Element parent;

    public DefaultAttribute(String s, String s1)
    {
        super(s, s1);
    }

    public DefaultAttribute(String s, String s1, Namespace namespace)
    {
        super(s, s1, namespace);
    }

    public DefaultAttribute(Element element, String s, String s1, Namespace namespace)
    {
        super(s, s1, namespace);
        parent = element;
    }

    public DefaultAttribute(Element element, QName qname, String s)
    {
        super(qname, s);
        parent = element;
    }

    public DefaultAttribute(QName qname)
    {
        super(qname);
    }

    public DefaultAttribute(QName qname, String s)
    {
        super(qname, s);
    }

    public Element getParent()
    {
        return parent;
    }

    public boolean isReadOnly()
    {
        return false;
    }

    public void setParent(Element element)
    {
        parent = element;
    }

    public void setValue(String s)
    {
        value = s;
    }

    public boolean supportsParent()
    {
        return true;
    }
}
