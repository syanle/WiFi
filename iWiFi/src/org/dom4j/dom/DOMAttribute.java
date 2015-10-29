// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper

public class DOMAttribute extends DefaultAttribute
    implements Attr
{

    public DOMAttribute(Element element, QName qname, String s)
    {
        super(element, qname, s);
    }

    public DOMAttribute(QName qname)
    {
        super(qname);
    }

    public DOMAttribute(QName qname, String s)
    {
        super(qname, s);
    }

    private void checkNewChildNode(Node node)
        throws DOMException
    {
        short word0 = node.getNodeType();
        if (word0 != 3 && word0 != 5)
        {
            throw new DOMException((short)3, "The node cannot be a child of attribute");
        } else
        {
            return;
        }
    }

    public Node appendChild(Node node)
        throws DOMException
    {
        checkNewChildNode(node);
        return DOMNodeHelper.appendChild(this, node);
    }

    public Node cloneNode(boolean flag)
    {
        return DOMNodeHelper.cloneNode(this, flag);
    }

    public NamedNodeMap getAttributes()
    {
        return null;
    }

    public NodeList getChildNodes()
    {
        return DOMNodeHelper.getChildNodes(this);
    }

    public Node getFirstChild()
    {
        return DOMNodeHelper.getFirstChild(this);
    }

    public Node getLastChild()
    {
        return DOMNodeHelper.getLastChild(this);
    }

    public String getLocalName()
    {
        return getQName().getName();
    }

    public String getNamespaceURI()
    {
        return getQName().getNamespaceURI();
    }

    public Node getNextSibling()
    {
        return DOMNodeHelper.getNextSibling(this);
    }

    public String getNodeName()
    {
        return getName();
    }

    public String getNodeValue()
        throws DOMException
    {
        return DOMNodeHelper.getNodeValue(this);
    }

    public Document getOwnerDocument()
    {
        return DOMNodeHelper.getOwnerDocument(this);
    }

    public org.w3c.dom.Element getOwnerElement()
    {
        return DOMNodeHelper.asDOMElement(getParent());
    }

    public Node getParentNode()
    {
        return null;
    }

    public String getPrefix()
    {
        return getQName().getNamespacePrefix();
    }

    public Node getPreviousSibling()
    {
        return DOMNodeHelper.getPreviousSibling(this);
    }

    public boolean getSpecified()
    {
        return true;
    }

    public boolean hasAttributes()
    {
        return DOMNodeHelper.hasAttributes(this);
    }

    public boolean hasChildNodes()
    {
        return DOMNodeHelper.hasChildNodes(this);
    }

    public Node insertBefore(Node node, Node node1)
        throws DOMException
    {
        checkNewChildNode(node);
        return DOMNodeHelper.insertBefore(this, node, node1);
    }

    public boolean isSupported(String s, String s1)
    {
        return DOMNodeHelper.isSupported(this, s, s1);
    }

    public void normalize()
    {
        DOMNodeHelper.normalize(this);
    }

    public Node removeChild(Node node)
        throws DOMException
    {
        return DOMNodeHelper.removeChild(this, node);
    }

    public Node replaceChild(Node node, Node node1)
        throws DOMException
    {
        checkNewChildNode(node);
        return DOMNodeHelper.replaceChild(this, node, node1);
    }

    public void setNodeValue(String s)
        throws DOMException
    {
        DOMNodeHelper.setNodeValue(this, s);
    }

    public void setPrefix(String s)
        throws DOMException
    {
        DOMNodeHelper.setPrefix(this, s);
    }

    public boolean supports(String s, String s1)
    {
        return DOMNodeHelper.supports(this, s, s1);
    }
}
