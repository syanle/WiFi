// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.Visitor;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

// Referenced classes of package org.dom4j.tree:
//            AbstractBranch

public abstract class AbstractDocument extends AbstractBranch
    implements Document
{

    protected String encoding;

    public AbstractDocument()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
        Object obj = getDocType();
        if (obj != null)
        {
            visitor.visit(((org.dom4j.DocumentType) (obj)));
        }
        obj = content();
        if (obj != null)
        {
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
            {
                Object obj1 = ((Iterator) (obj)).next();
                if (obj1 instanceof String)
                {
                    visitor.visit(getDocumentFactory().createText((String)obj1));
                } else
                {
                    ((Node)obj1).accept(visitor);
                }
            }

        }
    }

    public void add(Element element)
    {
        checkAddElementAllowed(element);
        super.add(element);
        rootElementAdded(element);
    }

    public Document addComment(String s)
    {
        add(getDocumentFactory().createComment(s));
        return this;
    }

    public Element addElement(String s)
    {
        s = getDocumentFactory().createElement(s);
        add(s);
        return s;
    }

    public Element addElement(String s, String s1)
    {
        s = getDocumentFactory().createElement(s, s1);
        add(s);
        return s;
    }

    public Element addElement(QName qname)
    {
        qname = getDocumentFactory().createElement(qname);
        add(qname);
        return qname;
    }

    public Document addProcessingInstruction(String s, String s1)
    {
        add(getDocumentFactory().createProcessingInstruction(s, s1));
        return this;
    }

    public Document addProcessingInstruction(String s, Map map)
    {
        add(getDocumentFactory().createProcessingInstruction(s, map));
        return this;
    }

    public String asXML()
    {
        Object obj1 = new OutputFormat();
        ((OutputFormat) (obj1)).setEncoding(encoding);
        Object obj;
        try
        {
            obj = new StringWriter();
            obj1 = new XMLWriter(((Writer) (obj)), ((OutputFormat) (obj1)));
            ((XMLWriter) (obj1)).write(this);
            ((XMLWriter) (obj1)).flush();
            obj = ((StringWriter) (obj)).toString();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("IOException while generating textual representation: " + ioexception.getMessage());
        }
        return ((String) (obj));
    }

    public Node asXPathResult(Element element)
    {
        return this;
    }

    protected void checkAddElementAllowed(Element element)
    {
        Element element1 = getRootElement();
        if (element1 != null)
        {
            throw new IllegalAddException(this, element, "Cannot add another element to this Document as it already has a root element of: " + element1.getQualifiedName());
        } else
        {
            return;
        }
    }

    protected void childAdded(Node node)
    {
        if (node != null)
        {
            node.setDocument(this);
        }
    }

    protected void childRemoved(Node node)
    {
        if (node != null)
        {
            node.setDocument(null);
        }
    }

    public Document getDocument()
    {
        return this;
    }

    public short getNodeType()
    {
        return 9;
    }

    public String getPath(Element element)
    {
        return "/";
    }

    public String getStringValue()
    {
        Element element = getRootElement();
        if (element != null)
        {
            return element.getStringValue();
        } else
        {
            return "";
        }
    }

    public String getUniquePath(Element element)
    {
        return "/";
    }

    public String getXMLEncoding()
    {
        return null;
    }

    public void normalize()
    {
        Element element = getRootElement();
        if (element != null)
        {
            element.normalize();
        }
    }

    public boolean remove(Element element)
    {
        boolean flag = super.remove(element);
        if (getRootElement() != null && flag)
        {
            setRootElement(null);
        }
        element.setDocument(null);
        return flag;
    }

    protected abstract void rootElementAdded(Element element);

    public void setRootElement(Element element)
    {
        clearContent();
        if (element != null)
        {
            super.add(element);
            rootElementAdded(element);
        }
    }

    public void setXMLEncoding(String s)
    {
        encoding = s;
    }

    public String toString()
    {
        return super.toString() + " [Document: name " + getName() + "]";
    }

    public void write(Writer writer)
        throws IOException
    {
        OutputFormat outputformat = new OutputFormat();
        outputformat.setEncoding(encoding);
        (new XMLWriter(writer, outputformat)).write(this);
    }
}
