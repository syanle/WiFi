// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import org.dom4j.Element;
import org.dom4j.tree.DefaultComment;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper

public class DOMComment extends DefaultComment
    implements Comment
{

    public DOMComment(String s)
    {
        super(s);
    }

    public DOMComment(Element element, String s)
    {
        super(element, s);
    }

    private void checkNewChildNode(Node node)
        throws DOMException
    {
        throw new DOMException((short)3, "Comment nodes cannot have children");
    }

    public Node appendChild(Node node)
        throws DOMException
    {
        checkNewChildNode(node);
        return DOMNodeHelper.appendChild(this, node);
    }

    public void appendData(String s)
        throws DOMException
    {
        DOMNodeHelper.appendData(this, s);
    }

    public Node cloneNode(boolean flag)
    {
        return DOMNodeHelper.cloneNode(this, flag);
    }

    public void deleteData(int i, int j)
        throws DOMException
    {
        DOMNodeHelper.deleteData(this, i, j);
    }

    public NamedNodeMap getAttributes()
    {
        return null;
    }

    public NodeList getChildNodes()
    {
        return DOMNodeHelper.getChildNodes(this);
    }

    public String getData()
        throws DOMException
    {
        return DOMNodeHelper.getData(this);
    }

    public Node getFirstChild()
    {
        return DOMNodeHelper.getFirstChild(this);
    }

    public Node getLastChild()
    {
        return DOMNodeHelper.getLastChild(this);
    }

    public int getLength()
    {
        return DOMNodeHelper.getLength(this);
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
        return "#comment";
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

    public String getPrefix()
    {
        return DOMNodeHelper.getPrefix(this);
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
        checkNewChildNode(node);
        return DOMNodeHelper.insertBefore(this, node, node1);
    }

    public void insertData(int i, String s)
        throws DOMException
    {
        DOMNodeHelper.insertData(this, i, s);
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

    public void replaceData(int i, int j, String s)
        throws DOMException
    {
        DOMNodeHelper.replaceData(this, i, j, s);
    }

    public void setData(String s)
        throws DOMException
    {
        DOMNodeHelper.setData(this, s);
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

    public String substringData(int i, int j)
        throws DOMException
    {
        return DOMNodeHelper.substringData(this, i, j);
    }

    public boolean supports(String s, String s1)
    {
        return DOMNodeHelper.supports(this, s, s1);
    }
}
