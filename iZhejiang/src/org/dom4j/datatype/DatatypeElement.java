// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import com.sun.msv.datatype.DatabindableDatatype;
import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;

public class DatatypeElement extends DefaultElement
    implements SerializationContext, ValidationContext
{

    private Object data;
    private XSDatatype datatype;

    public DatatypeElement(QName qname, int i, XSDatatype xsdatatype)
    {
        super(qname, i);
        datatype = xsdatatype;
    }

    public DatatypeElement(QName qname, XSDatatype xsdatatype)
    {
        super(qname);
        datatype = xsdatatype;
    }

    public Element addText(String s)
    {
        validate(s);
        return super.addText(s);
    }

    protected void childAdded(Node node)
    {
        data = null;
        super.childAdded(node);
    }

    protected void childRemoved(Node node)
    {
        data = null;
        super.childRemoved(node);
    }

    public String getBaseUri()
    {
        return null;
    }

    public Object getData()
    {
        if (data == null)
        {
            String s = getTextTrim();
            if (s != null && s.length() > 0)
            {
                if (datatype instanceof DatabindableDatatype)
                {
                    data = datatype.createJavaObject(s, this);
                } else
                {
                    data = datatype.createValue(s, this);
                }
            }
        }
        return data;
    }

    public String getNamespacePrefix(String s)
    {
        s = getNamespaceForURI(s);
        if (s != null)
        {
            return s.getPrefix();
        } else
        {
            return null;
        }
    }

    public XSDatatype getXSDatatype()
    {
        return datatype;
    }

    public boolean isNotation(String s)
    {
        return false;
    }

    public boolean isUnparsedEntity(String s)
    {
        return true;
    }

    public String resolveNamespacePrefix(String s)
    {
        s = getNamespaceForPrefix(s);
        if (s != null)
        {
            return s.getURI();
        } else
        {
            return null;
        }
    }

    public void setData(Object obj)
    {
        String s = datatype.convertToLexicalValue(obj, this);
        validate(s);
        data = obj;
        setText(s);
    }

    public void setText(String s)
    {
        validate(s);
        super.setText(s);
    }

    public String toString()
    {
        return getClass().getName() + hashCode() + " [Element: <" + getQualifiedName() + " attributes: " + attributeList() + " data: " + getData() + " />]";
    }

    protected void validate(String s)
        throws IllegalArgumentException
    {
        try
        {
            datatype.checkValid(s, this);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s.getMessage());
        }
    }
}
