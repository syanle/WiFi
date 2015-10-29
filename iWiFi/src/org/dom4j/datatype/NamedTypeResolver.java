// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.datatype:
//            DatatypeElementFactory

class NamedTypeResolver
{

    protected Map complexTypeMap;
    protected DocumentFactory documentFactory;
    protected Map elementFactoryMap;
    protected Map simpleTypeMap;
    protected Map typedElementMap;

    NamedTypeResolver(DocumentFactory documentfactory)
    {
        complexTypeMap = new HashMap();
        simpleTypeMap = new HashMap();
        typedElementMap = new HashMap();
        elementFactoryMap = new HashMap();
        documentFactory = documentfactory;
    }

    private QName getQName(String s)
    {
        return documentFactory.createQName(s);
    }

    private QName getQNameOfSchemaElement(Element element)
    {
        return getQName(element.attributeValue("name"));
    }

    void registerComplexType(QName qname, DocumentFactory documentfactory)
    {
        complexTypeMap.put(qname, documentfactory);
    }

    void registerSimpleType(QName qname, XSDatatype xsdatatype)
    {
        simpleTypeMap.put(qname, xsdatatype);
    }

    void registerTypedElement(Element element, QName qname, DocumentFactory documentfactory)
    {
        typedElementMap.put(element, qname);
        elementFactoryMap.put(element, documentfactory);
    }

    void resolveElementTypes()
    {
        Iterator iterator = typedElementMap.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (Element)iterator.next();
            QName qname = getQNameOfSchemaElement(((Element) (obj)));
            Object obj1 = (QName)typedElementMap.get(obj);
            if (complexTypeMap.containsKey(obj1))
            {
                qname.setDocumentFactory((DocumentFactory)complexTypeMap.get(obj1));
            } else
            if (simpleTypeMap.containsKey(obj1))
            {
                obj1 = (XSDatatype)simpleTypeMap.get(obj1);
                obj = (DocumentFactory)elementFactoryMap.get(obj);
                if (obj instanceof DatatypeElementFactory)
                {
                    ((DatatypeElementFactory)obj).setChildElementXSDatatype(qname, ((XSDatatype) (obj1)));
                }
            }
        } while (true);
    }

    void resolveNamedTypes()
    {
        resolveElementTypes();
    }
}
