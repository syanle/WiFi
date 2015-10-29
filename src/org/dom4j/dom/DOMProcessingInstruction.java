// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.util.Map;
import org.dom4j.Element;
import org.dom4j.tree.DefaultProcessingInstruction;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper

public class DOMProcessingInstruction extends DefaultProcessingInstruction
    implements ProcessingInstruction
{

    public DOMProcessingInstruction(String s, String s1)
    {
        super(s, s1);
    }

    public DOMProcessingInstruction(String s, Map map)
    {
        super(s, map);
    }

    public DOMProcessingInstruction(Element element, String s, String s1)
    {
        super(element, s, s1);
    }

    private void checkNewChildNode(Node node)
        throws DOMException
    {
        throw new DOMException((short)3, "PI nodes cannot have children");
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

    public String getData()
    {
        return getText();
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

    public void setData(String s)
        throws DOMException
    {
        if (isReadOnly())
        {
            throw new DOMException((short)7, "This ProcessingInstruction is read only");
        } else
        {
            setText(s);
            return;
        }
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
