// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper, DOMElement

public class DOMAttributeNodeMap
    implements NamedNodeMap
{

    private DOMElement element;

    public DOMAttributeNodeMap(DOMElement domelement)
    {
        element = domelement;
    }

    public void foo()
        throws DOMException
    {
        DOMNodeHelper.notSupported();
    }

    public int getLength()
    {
        return element.attributeCount();
    }

    public Node getNamedItem(String s)
    {
        return element.getAttributeNode(s);
    }

    public Node getNamedItemNS(String s, String s1)
    {
        return element.getAttributeNodeNS(s, s1);
    }

    public Node item(int i)
    {
        return DOMNodeHelper.asDOMAttr(element.attribute(i));
    }

    public Node removeNamedItem(String s)
        throws DOMException
    {
        Attr attr = element.getAttributeNode(s);
        if (attr == null)
        {
            throw new DOMException((short)8, "No attribute named " + s);
        } else
        {
            return element.removeAttributeNode(attr);
        }
    }

    public Node removeNamedItemNS(String s, String s1)
        throws DOMException
    {
        s1 = element.getAttributeNodeNS(s, s1);
        s = s1;
        if (s1 != null)
        {
            s = element.removeAttributeNode(s1);
        }
        return s;
    }

    public Node setNamedItem(Node node)
        throws DOMException
    {
        if (node instanceof Attr)
        {
            return element.setAttributeNode((Attr)node);
        } else
        {
            throw new DOMException((short)9, "Node is not an Attr: " + node);
        }
    }

    public Node setNamedItemNS(Node node)
        throws DOMException
    {
        if (node instanceof Attr)
        {
            return element.setAttributeNodeNS((Attr)node);
        } else
        {
            throw new DOMException((short)9, "Node is not an Attr: " + node);
        }
    }
}
