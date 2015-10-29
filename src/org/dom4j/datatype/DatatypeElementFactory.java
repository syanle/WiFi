// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.datatype:
//            DatatypeAttribute, DatatypeElement

public class DatatypeElementFactory extends DocumentFactory
{

    private Map attributeXSDatatypes;
    private Map childrenXSDatatypes;
    private QName elementQName;

    public DatatypeElementFactory(QName qname)
    {
        attributeXSDatatypes = new HashMap();
        childrenXSDatatypes = new HashMap();
        elementQName = qname;
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        XSDatatype xsdatatype = getAttributeXSDatatype(qname);
        if (xsdatatype == null)
        {
            return super.createAttribute(element, qname, s);
        } else
        {
            return new DatatypeAttribute(qname, xsdatatype, s);
        }
    }

    public Element createElement(QName qname)
    {
        Object obj = getChildElementXSDatatype(qname);
        if (obj != null)
        {
            return new DatatypeElement(qname, ((XSDatatype) (obj)));
        }
        obj = qname.getDocumentFactory();
        if (obj instanceof DatatypeElementFactory)
        {
            obj = ((DatatypeElementFactory)obj).getChildElementXSDatatype(qname);
            if (obj != null)
            {
                return new DatatypeElement(qname, ((XSDatatype) (obj)));
            }
        }
        return super.createElement(qname);
    }

    public XSDatatype getAttributeXSDatatype(QName qname)
    {
        return (XSDatatype)attributeXSDatatypes.get(qname);
    }

    public XSDatatype getChildElementXSDatatype(QName qname)
    {
        return (XSDatatype)childrenXSDatatypes.get(qname);
    }

    public QName getQName()
    {
        return elementQName;
    }

    public void setAttributeXSDatatype(QName qname, XSDatatype xsdatatype)
    {
        attributeXSDatatypes.put(qname, xsdatatype);
    }

    public void setChildElementXSDatatype(QName qname, XSDatatype xsdatatype)
    {
        childrenXSDatatypes.put(qname, xsdatatype);
    }
}
