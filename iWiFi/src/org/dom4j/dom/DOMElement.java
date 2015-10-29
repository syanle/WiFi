// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.util.ArrayList;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package org.dom4j.dom:
//            DOMDocumentFactory, DOMNodeHelper, DOMAttribute, DOMAttributeNodeMap

public class DOMElement extends DefaultElement
    implements Element
{

    private static final DocumentFactory DOCUMENT_FACTORY = DOMDocumentFactory.getInstance();

    public DOMElement(String s)
    {
        super(s);
    }

    public DOMElement(String s, Namespace namespace)
    {
        super(s, namespace);
    }

    public DOMElement(QName qname)
    {
        super(qname);
    }

    public DOMElement(QName qname, int i)
    {
        super(qname, i);
    }

    private void checkNewChildNode(Node node)
        throws DOMException
    {
        short word0 = node.getNodeType();
        if (word0 != 1 && word0 != 3 && word0 != 8 && word0 != 7 && word0 != 4 && word0 != 5)
        {
            throw new DOMException((short)3, "Given node cannot be a child of element");
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

    protected Attribute attribute(String s, String s1)
    {
        List list = attributeList();
        int j = list.size();
        for (int i = 0; i < j; i++)
        {
            Attribute attribute1 = (Attribute)list.get(i);
            if (s1.equals(attribute1.getName()) && ((s == null || s.length() == 0) && (attribute1.getNamespaceURI() == null || attribute1.getNamespaceURI().length() == 0) || s != null && s.equals(attribute1.getNamespaceURI())))
            {
                return attribute1;
            }
        }

        return null;
    }

    protected Attribute attribute(Attr attr)
    {
        return attribute(DOCUMENT_FACTORY.createQName(attr.getLocalName(), attr.getPrefix(), attr.getNamespaceURI()));
    }

    public Node cloneNode(boolean flag)
    {
        return DOMNodeHelper.cloneNode(this, flag);
    }

    protected Attribute createAttribute(Attr attr)
    {
        Object obj = attr.getLocalName();
        if (obj != null)
        {
            String s = attr.getPrefix();
            String s1 = attr.getNamespaceURI();
            obj = getDocumentFactory().createQName(((String) (obj)), s, s1);
        } else
        {
            obj = attr.getName();
            obj = getDocumentFactory().createQName(((String) (obj)));
        }
        return new DOMAttribute(((QName) (obj)), attr.getValue());
    }

    public String getAttribute(String s)
    {
        s = attributeValue(s);
        if (s != null)
        {
            return s;
        } else
        {
            return "";
        }
    }

    public String getAttributeNS(String s, String s1)
    {
        s = attribute(s, s1);
        if (s != null)
        {
            s = s.getValue();
            if (s != null)
            {
                return s;
            }
        }
        return "";
    }

    public Attr getAttributeNode(String s)
    {
        return DOMNodeHelper.asDOMAttr(attribute(s));
    }

    public Attr getAttributeNodeNS(String s, String s1)
    {
        s = attribute(s, s1);
        if (s != null)
        {
            DOMNodeHelper.asDOMAttr(s);
        }
        return null;
    }

    public NamedNodeMap getAttributes()
    {
        return new DOMAttributeNodeMap(this);
    }

    public NodeList getChildNodes()
    {
        return DOMNodeHelper.createNodeList(content());
    }

    protected DocumentFactory getDocumentFactory()
    {
        DocumentFactory documentfactory = getQName().getDocumentFactory();
        if (documentfactory != null)
        {
            return documentfactory;
        } else
        {
            return DOCUMENT_FACTORY;
        }
    }

    public NodeList getElementsByTagName(String s)
    {
        ArrayList arraylist = new ArrayList();
        DOMNodeHelper.appendElementsByTagName(arraylist, this, s);
        return DOMNodeHelper.createNodeList(arraylist);
    }

    public NodeList getElementsByTagNameNS(String s, String s1)
    {
        ArrayList arraylist = new ArrayList();
        DOMNodeHelper.appendElementsByTagNameNS(arraylist, this, s, s1);
        return DOMNodeHelper.createNodeList(arraylist);
    }

    public Node getFirstChild()
    {
        return DOMNodeHelper.asDOMNode(node(0));
    }

    public Node getLastChild()
    {
        return DOMNodeHelper.asDOMNode(node(nodeCount() - 1));
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
        return null;
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
        return getQName().getNamespacePrefix();
    }

    public Node getPreviousSibling()
    {
        return DOMNodeHelper.getPreviousSibling(this);
    }

    protected QName getQName(String s, String s1)
    {
        int i = s1.indexOf(':');
        String s3 = "";
        String s2 = s1;
        if (i >= 0)
        {
            s3 = s1.substring(0, i);
            s2 = s1.substring(i + 1);
        }
        return getDocumentFactory().createQName(s2, s3, s);
    }

    public String getTagName()
    {
        return getName();
    }

    public boolean hasAttribute(String s)
    {
        return attribute(s) != null;
    }

    public boolean hasAttributeNS(String s, String s1)
    {
        return attribute(s, s1) != null;
    }

    public boolean hasAttributes()
    {
        return DOMNodeHelper.hasAttributes(this);
    }

    public boolean hasChildNodes()
    {
        return nodeCount() > 0;
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

    public void removeAttribute(String s)
        throws DOMException
    {
        s = attribute(s);
        if (s != null)
        {
            remove(s);
        }
    }

    public void removeAttributeNS(String s, String s1)
        throws DOMException
    {
        s = attribute(s, s1);
        if (s != null)
        {
            remove(s);
        }
    }

    public Attr removeAttributeNode(Attr attr)
        throws DOMException
    {
        attr = attribute(attr);
        if (attr != null)
        {
            attr.detach();
            return DOMNodeHelper.asDOMAttr(attr);
        } else
        {
            throw new DOMException((short)8, "No such attribute");
        }
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

    public void setAttribute(String s, String s1)
        throws DOMException
    {
        addAttribute(s, s1);
    }

    public void setAttributeNS(String s, String s1, String s2)
        throws DOMException
    {
        Attribute attribute1 = attribute(s, s1);
        if (attribute1 != null)
        {
            attribute1.setValue(s2);
            return;
        } else
        {
            addAttribute(getQName(s, s1), s2);
            return;
        }
    }

    public Attr setAttributeNode(Attr attr)
        throws DOMException
    {
        if (isReadOnly())
        {
            throw new DOMException((short)7, "No modification allowed");
        }
        Attribute attribute1 = attribute(attr);
        if (attribute1 != attr)
        {
            if (attr.getOwnerElement() != null)
            {
                throw new DOMException((short)10, "Attribute is already in use");
            }
            attr = createAttribute(attr);
            if (attribute1 != null)
            {
                attribute1.detach();
            }
            add(attr);
        }
        return DOMNodeHelper.asDOMAttr(attribute1);
    }

    public Attr setAttributeNodeNS(Attr attr)
        throws DOMException
    {
        Attribute attribute1 = attribute(attr.getNamespaceURI(), attr.getLocalName());
        if (attribute1 != null)
        {
            attribute1.setValue(attr.getValue());
            attr = attribute1;
        } else
        {
            attr = createAttribute(attr);
            add(attr);
        }
        return DOMNodeHelper.asDOMAttr(attr);
    }

    public void setNodeValue(String s)
        throws DOMException
    {
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
