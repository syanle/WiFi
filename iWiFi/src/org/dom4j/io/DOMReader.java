// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DOMReader
{

    private DocumentFactory factory;
    private NamespaceStack namespaceStack;

    public DOMReader()
    {
        factory = DocumentFactory.getInstance();
        namespaceStack = new NamespaceStack(factory);
    }

    public DOMReader(DocumentFactory documentfactory)
    {
        factory = documentfactory;
        namespaceStack = new NamespaceStack(documentfactory);
    }

    private String getPrefix(String s)
    {
        int i = s.indexOf(':', 5);
        if (i != -1)
        {
            return s.substring(i + 1);
        } else
        {
            return "";
        }
    }

    protected void clearNamespaceStack()
    {
        namespaceStack.clear();
        if (!namespaceStack.contains(Namespace.XML_NAMESPACE))
        {
            namespaceStack.push(Namespace.XML_NAMESPACE);
        }
    }

    protected Document createDocument()
    {
        return getDocumentFactory().createDocument();
    }

    public DocumentFactory getDocumentFactory()
    {
        return factory;
    }

    protected Namespace getNamespace(String s, String s1)
    {
        return getDocumentFactory().createNamespace(s, s1);
    }

    public Document read(org.w3c.dom.Document document)
    {
        if (document instanceof Document)
        {
            return (Document)document;
        }
        Document document1 = createDocument();
        clearNamespaceStack();
        document = document.getChildNodes();
        int i = 0;
        for (int j = document.getLength(); i < j; i++)
        {
            readTree(document.item(i), document1);
        }

        return document1;
    }

    protected void readElement(Node node, Branch branch)
    {
        int l = namespaceStack.size();
        String s1 = node.getNamespaceURI();
        if (node.getPrefix() != null);
        NamedNodeMap namednodemap = node.getAttributes();
        String s = s1;
        if (namednodemap != null)
        {
            s = s1;
            if (s1 == null)
            {
                Node node2 = namednodemap.getNamedItem("xmlns");
                s = s1;
                if (node2 != null)
                {
                    s = node2.getNodeValue();
                }
            }
        }
        branch = branch.addElement(namespaceStack.getQName(s, node.getLocalName(), node.getNodeName()));
        if (namednodemap != null)
        {
            int i1 = namednodemap.getLength();
            ArrayList arraylist = new ArrayList(i1);
            int i = 0;
            while (i < i1) 
            {
                Object obj = namednodemap.item(i);
                String s2 = ((Node) (obj)).getNodeName();
                if (s2.startsWith("xmlns"))
                {
                    s2 = getPrefix(s2);
                    obj = ((Node) (obj)).getNodeValue();
                    branch.add(namespaceStack.addNamespace(s2, ((String) (obj))));
                } else
                {
                    arraylist.add(obj);
                }
                i++;
            }
            i1 = arraylist.size();
            for (int j = 0; j < i1; j++)
            {
                Node node1 = (Node)arraylist.get(j);
                branch.addAttribute(namespaceStack.getQName(node1.getNamespaceURI(), node1.getLocalName(), node1.getNodeName()), node1.getNodeValue());
            }

        }
        node = node.getChildNodes();
        int k = 0;
        for (int j1 = node.getLength(); k < j1; k++)
        {
            readTree(node.item(k), branch);
        }

        for (; namespaceStack.size() > l; namespaceStack.pop()) { }
    }

    protected void readTree(Node node, Branch branch)
    {
        Element element = null;
        Document document = null;
        if (branch instanceof Element)
        {
            element = (Element)branch;
        } else
        {
            document = (Document)branch;
        }
        switch (node.getNodeType())
        {
        case 2: // '\002'
        case 9: // '\t'
        default:
            System.out.println("WARNING: Unknown DOM node type: " + node.getNodeType());
            return;

        case 1: // '\001'
            readElement(node, branch);
            return;

        case 7: // '\007'
            if (branch instanceof Element)
            {
                ((Element)branch).addProcessingInstruction(node.getNodeName(), node.getNodeValue());
                return;
            } else
            {
                ((Document)branch).addProcessingInstruction(node.getNodeName(), node.getNodeValue());
                return;
            }

        case 8: // '\b'
            if (branch instanceof Element)
            {
                ((Element)branch).addComment(node.getNodeValue());
                return;
            } else
            {
                ((Document)branch).addComment(node.getNodeValue());
                return;
            }

        case 10: // '\n'
            node = (DocumentType)node;
            document.addDocType(node.getName(), node.getPublicId(), node.getSystemId());
            return;

        case 3: // '\003'
            element.addText(node.getNodeValue());
            return;

        case 4: // '\004'
            element.addCDATA(node.getNodeValue());
            return;

        case 5: // '\005'
            branch = node.getFirstChild();
            if (branch != null)
            {
                element.addEntity(node.getNodeName(), branch.getNodeValue());
                return;
            } else
            {
                element.addEntity(node.getNodeName(), "");
                return;
            }

        case 6: // '\006'
            element.addEntity(node.getNodeName(), node.getNodeValue());
            return;
        }
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        factory = documentfactory;
        namespaceStack.setDocumentFactory(factory);
    }
}
