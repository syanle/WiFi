// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.util.ArrayList;
import org.dom4j.DocumentFactory;
import org.dom4j.tree.DefaultDocument;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

// Referenced classes of package org.dom4j.dom:
//            DOMDocumentFactory, DOMNodeHelper, DOMElement, DOMDocumentType

public class DOMDocument extends DefaultDocument
    implements Document
{

    private static final DOMDocumentFactory DOCUMENT_FACTORY = (DOMDocumentFactory)DOMDocumentFactory.getInstance();

    public DOMDocument()
    {
        init();
    }

    public DOMDocument(String s)
    {
        super(s);
        init();
    }

    public DOMDocument(String s, DOMElement domelement, DOMDocumentType domdocumenttype)
    {
        super(s, domelement, domdocumenttype);
        init();
    }

    public DOMDocument(DOMDocumentType domdocumenttype)
    {
        super(domdocumenttype);
        init();
    }

    public DOMDocument(DOMElement domelement)
    {
        super(domelement);
        init();
    }

    public DOMDocument(DOMElement domelement, DOMDocumentType domdocumenttype)
    {
        super(domelement, domdocumenttype);
        init();
    }

    private void checkNewChildNode(Node node)
        throws DOMException
    {
        short word0 = node.getNodeType();
        if (word0 != 1 && word0 != 8 && word0 != 7 && word0 != 10)
        {
            throw new DOMException((short)3, "Given node cannot be a child of document");
        } else
        {
            return;
        }
    }

    private void init()
    {
        setDocumentFactory(DOCUMENT_FACTORY);
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

    public Attr createAttribute(String s)
        throws DOMException
    {
        s = getDocumentFactory().createQName(s);
        return (Attr)getDocumentFactory().createAttribute(null, s, "");
    }

    public Attr createAttributeNS(String s, String s1)
        throws DOMException
    {
        s = getDocumentFactory().createQName(s1, s);
        return (Attr)getDocumentFactory().createAttribute(null, s, null);
    }

    public CDATASection createCDATASection(String s)
        throws DOMException
    {
        return (CDATASection)getDocumentFactory().createCDATA(s);
    }

    public Comment createComment(String s)
    {
        return (Comment)getDocumentFactory().createComment(s);
    }

    public DocumentFragment createDocumentFragment()
    {
        DOMNodeHelper.notSupported();
        return null;
    }

    public Element createElement(String s)
        throws DOMException
    {
        return (Element)getDocumentFactory().createElement(s);
    }

    public Element createElementNS(String s, String s1)
        throws DOMException
    {
        s = getDocumentFactory().createQName(s1, s);
        return (Element)getDocumentFactory().createElement(s);
    }

    public EntityReference createEntityReference(String s)
        throws DOMException
    {
        return (EntityReference)getDocumentFactory().createEntity(s, null);
    }

    public ProcessingInstruction createProcessingInstruction(String s, String s1)
        throws DOMException
    {
        return (ProcessingInstruction)getDocumentFactory().createProcessingInstruction(s, s1);
    }

    public Text createTextNode(String s)
    {
        return (Text)getDocumentFactory().createText(s);
    }

    public NamedNodeMap getAttributes()
    {
        return null;
    }

    public NodeList getChildNodes()
    {
        return DOMNodeHelper.createNodeList(content());
    }

    public DocumentType getDoctype()
    {
        return DOMNodeHelper.asDOMDocumentType(getDocType());
    }

    public Element getDocumentElement()
    {
        return DOMNodeHelper.asDOMElement(getRootElement());
    }

    protected DocumentFactory getDocumentFactory()
    {
        if (super.getDocumentFactory() == null)
        {
            return DOCUMENT_FACTORY;
        } else
        {
            return super.getDocumentFactory();
        }
    }

    public Element getElementById(String s)
    {
        return DOMNodeHelper.asDOMElement(elementByID(s));
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

    public DOMImplementation getImplementation()
    {
        if (getDocumentFactory() instanceof DOMImplementation)
        {
            return (DOMImplementation)getDocumentFactory();
        } else
        {
            return DOCUMENT_FACTORY;
        }
    }

    public Node getLastChild()
    {
        return DOMNodeHelper.asDOMNode(node(nodeCount() - 1));
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
        return "#document";
    }

    public String getNodeValue()
        throws DOMException
    {
        return null;
    }

    public Document getOwnerDocument()
    {
        return null;
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
        return nodeCount() > 0;
    }

    public Node importNode(Node node, boolean flag)
        throws DOMException
    {
        DOMNodeHelper.notSupported();
        return null;
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
