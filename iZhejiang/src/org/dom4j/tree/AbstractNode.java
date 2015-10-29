// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.XPath;
import org.dom4j.rule.Pattern;

public abstract class AbstractNode
    implements Node, Cloneable, Serializable
{

    private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
    protected static final String NODE_TYPE_NAMES[] = {
        "Node", "Element", "Attribute", "Text", "CDATA", "Entity", "Entity", "ProcessingInstruction", "Comment", "Document", 
        "DocumentType", "DocumentFragment", "Notation", "Namespace", "Unknown"
    };

    public AbstractNode()
    {
    }

    public Node asXPathResult(Element element)
    {
        if (supportsParent())
        {
            return this;
        } else
        {
            return createXPathResult(element);
        }
    }

    public Object clone()
    {
        if (isReadOnly())
        {
            return this;
        }
        Node node;
        try
        {
            node = (Node)super.clone();
            node.setParent(null);
            node.setDocument(null);
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new RuntimeException("This should never happen. Caught: " + clonenotsupportedexception);
        }
        return node;
    }

    public Pattern createPattern(String s)
    {
        return getDocumentFactory().createPattern(s);
    }

    public XPath createXPath(String s)
    {
        return getDocumentFactory().createXPath(s);
    }

    public NodeFilter createXPathFilter(String s)
    {
        return getDocumentFactory().createXPathFilter(s);
    }

    protected Node createXPathResult(Element element)
    {
        throw new RuntimeException("asXPathResult() not yet implemented fully for: " + this);
    }

    public Node detach()
    {
        Element element = getParent();
        if (element == null) goto _L2; else goto _L1
_L1:
        element.remove(this);
_L4:
        setParent(null);
        setDocument(null);
        return this;
_L2:
        Document document = getDocument();
        if (document != null)
        {
            document.remove(this);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Document getDocument()
    {
        Element element = getParent();
        if (element != null)
        {
            return element.getDocument();
        } else
        {
            return null;
        }
    }

    protected DocumentFactory getDocumentFactory()
    {
        return DOCUMENT_FACTORY;
    }

    public String getName()
    {
        return null;
    }

    public short getNodeType()
    {
        return 14;
    }

    public String getNodeTypeName()
    {
        short word0 = getNodeType();
        if (word0 < 0 || word0 >= NODE_TYPE_NAMES.length)
        {
            return "Unknown";
        } else
        {
            return NODE_TYPE_NAMES[word0];
        }
    }

    public Element getParent()
    {
        return null;
    }

    public String getPath()
    {
        return getPath(null);
    }

    public String getStringValue()
    {
        return getText();
    }

    public String getText()
    {
        return null;
    }

    public String getUniquePath()
    {
        return getUniquePath(null);
    }

    public boolean hasContent()
    {
        return false;
    }

    public boolean isReadOnly()
    {
        return true;
    }

    public boolean matches(String s)
    {
        return createXPathFilter(s).matches(this);
    }

    public Number numberValueOf(String s)
    {
        return createXPath(s).numberValueOf(this);
    }

    public List selectNodes(String s)
    {
        return createXPath(s).selectNodes(this);
    }

    public List selectNodes(String s, String s1)
    {
        return selectNodes(s, s1, false);
    }

    public List selectNodes(String s, String s1, boolean flag)
    {
        return createXPath(s).selectNodes(this, createXPath(s1), flag);
    }

    public Object selectObject(String s)
    {
        return createXPath(s).evaluate(this);
    }

    public Node selectSingleNode(String s)
    {
        return createXPath(s).selectSingleNode(this);
    }

    public void setDocument(Document document)
    {
    }

    public void setName(String s)
    {
        throw new UnsupportedOperationException("This node cannot be modified");
    }

    public void setParent(Element element)
    {
    }

    public void setText(String s)
    {
        throw new UnsupportedOperationException("This node cannot be modified");
    }

    public boolean supportsParent()
    {
        return false;
    }

    public String valueOf(String s)
    {
        return createXPath(s).valueOf(this);
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write(asXML());
    }

}
