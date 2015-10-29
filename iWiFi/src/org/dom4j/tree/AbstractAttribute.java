// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode, DefaultAttribute

public abstract class AbstractAttribute extends AbstractNode
    implements Attribute
{

    public AbstractAttribute()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        return getQualifiedName() + "=\"" + getValue() + "\"";
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultAttribute(element, getQName(), getValue());
    }

    public Object getData()
    {
        return getValue();
    }

    public String getName()
    {
        return getQName().getName();
    }

    public Namespace getNamespace()
    {
        return getQName().getNamespace();
    }

    public String getNamespacePrefix()
    {
        return getQName().getNamespacePrefix();
    }

    public String getNamespaceURI()
    {
        return getQName().getNamespaceURI();
    }

    public short getNodeType()
    {
        return 2;
    }

    public String getPath(Element element)
    {
        StringBuffer stringbuffer = new StringBuffer();
        Object obj = getParent();
        if (obj != null && obj != element)
        {
            stringbuffer.append(((Element) (obj)).getPath(element));
            stringbuffer.append("/");
        }
        stringbuffer.append("@");
        element = getNamespaceURI();
        obj = getNamespacePrefix();
        if (element == null || element.length() == 0 || obj == null || ((String) (obj)).length() == 0)
        {
            stringbuffer.append(getName());
        } else
        {
            stringbuffer.append(getQualifiedName());
        }
        return stringbuffer.toString();
    }

    public String getQualifiedName()
    {
        return getQName().getQualifiedName();
    }

    public String getText()
    {
        return getValue();
    }

    public String getUniquePath(Element element)
    {
        StringBuffer stringbuffer = new StringBuffer();
        Object obj = getParent();
        if (obj != null && obj != element)
        {
            stringbuffer.append(((Element) (obj)).getUniquePath(element));
            stringbuffer.append("/");
        }
        stringbuffer.append("@");
        element = getNamespaceURI();
        obj = getNamespacePrefix();
        if (element == null || element.length() == 0 || obj == null || ((String) (obj)).length() == 0)
        {
            stringbuffer.append(getName());
        } else
        {
            stringbuffer.append(getQualifiedName());
        }
        return stringbuffer.toString();
    }

    public void setData(Object obj)
    {
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = obj.toString();
        }
        setValue(((String) (obj)));
    }

    public void setNamespace(Namespace namespace)
    {
        throw new UnsupportedOperationException("This Attribute is read only and cannot be changed");
    }

    public void setText(String s)
    {
        setValue(s);
    }

    public void setValue(String s)
    {
        throw new UnsupportedOperationException("This Attribute is read only and cannot be changed");
    }

    public String toString()
    {
        return super.toString() + " [Attribute: name " + getQualifiedName() + " value \"" + getValue() + "\"]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write(getQualifiedName());
        writer.write("=\"");
        writer.write(getValue());
        writer.write("\"");
    }
}
