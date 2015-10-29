// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import com.sun.msv.datatype.DatabindableDatatype;
import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;

public class DatatypeAttribute extends AbstractAttribute
    implements SerializationContext, ValidationContext
{

    private Object data;
    private XSDatatype datatype;
    private Element parent;
    private QName qname;
    private String text;

    public DatatypeAttribute(QName qname1, XSDatatype xsdatatype)
    {
        qname = qname1;
        datatype = xsdatatype;
    }

    public DatatypeAttribute(QName qname1, XSDatatype xsdatatype, String s)
    {
        qname = qname1;
        datatype = xsdatatype;
        text = s;
        data = convertToValue(s);
    }

    protected Object convertToValue(String s)
    {
        if (datatype instanceof DatabindableDatatype)
        {
            return datatype.createJavaObject(s, this);
        } else
        {
            return datatype.createValue(s, this);
        }
    }

    public String getBaseUri()
    {
        return null;
    }

    public Object getData()
    {
        return data;
    }

    public String getNamespacePrefix(String s)
    {
        Element element = getParent();
        if (element != null)
        {
            s = element.getNamespaceForURI(s);
            if (s != null)
            {
                return s.getPrefix();
            }
        }
        return null;
    }

    public Element getParent()
    {
        return parent;
    }

    public QName getQName()
    {
        return qname;
    }

    public String getValue()
    {
        return text;
    }

    public XSDatatype getXSDatatype()
    {
        return datatype;
    }

    public boolean isNotation(String s)
    {
        return false;
    }

    public boolean isReadOnly()
    {
        return false;
    }

    public boolean isUnparsedEntity(String s)
    {
        return true;
    }

    public String resolveNamespacePrefix(String s)
    {
        if (s.equals(getNamespacePrefix()))
        {
            return getNamespaceURI();
        }
        Element element = getParent();
        if (element != null)
        {
            s = element.getNamespaceForPrefix(s);
            if (s != null)
            {
                return s.getURI();
            }
        }
        return null;
    }

    public void setData(Object obj)
    {
        String s = datatype.convertToLexicalValue(obj, this);
        validate(s);
        text = s;
        data = obj;
    }

    public void setParent(Element element)
    {
        parent = element;
    }

    public void setValue(String s)
    {
        validate(s);
        text = s;
        data = convertToValue(s);
    }

    public boolean supportsParent()
    {
        return true;
    }

    public String toString()
    {
        return getClass().getName() + hashCode() + " [Attribute: name " + getQualifiedName() + " value \"" + getValue() + "\" data: " + getData() + "]";
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
