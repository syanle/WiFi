// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import org.dom4j.Element;
import org.dom4j.tree.DefaultNamespace;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper

public class DOMNamespace extends DefaultNamespace
    implements Node
{

    public DOMNamespace(String s, String s1)
    {
        super(s, s1);
    }

    public DOMNamespace(Element element, String s, String s1)
    {
        super(element, s, s1);
    }

    public Node appendChild(Node node)
        throws DOMException
    {
        return DOMNodeHelper.appendChild(this, node);
    }

    public Node cloneNode(boolean flag)
    {
        return DOMNodeHelper.cloneNode(this, flag);
    }

    public NamedNodeMap getAttributes()
    {
        return DOMNodeHelper.getAttributes(this);
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
        return DOMNodeHelper.getLocalName(this);
    }

    public String getNamespaceURI()
    {
        return DOMNodeHelper.getNamespaceURI(this);
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

    public Node getParentNode()
    {
        return DOMNodeHelper.getParentNode(this);
    }

    public Node getPreviousSibling()
    {
        return DOMNodeHelper.getPreviousSibling(this);
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
