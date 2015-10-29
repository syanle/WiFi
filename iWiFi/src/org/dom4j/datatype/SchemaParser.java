// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.DatatypeFactory;
import com.sun.msv.datatype.xsd.TypeIncubator;
import com.sun.msv.datatype.xsd.XSDatatype;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.io.SAXReader;
import org.dom4j.util.AttributeHelper;
import org.relaxng.datatype.DatatypeException;
import org.xml.sax.EntityResolver;

// Referenced classes of package org.dom4j.datatype:
//            DatatypeDocumentFactory, NamedTypeResolver, InvalidSchemaException, DatatypeElementFactory

public class SchemaParser
{

    private static final QName XSD_ALL;
    private static final QName XSD_ATTRIBUTE;
    private static final QName XSD_CHOICE;
    private static final QName XSD_COMPLEXTYPE;
    private static final QName XSD_ELEMENT;
    private static final QName XSD_INCLUDE;
    private static final Namespace XSD_NAMESPACE;
    private static final QName XSD_RESTRICTION;
    private static final QName XSD_SEQUENCE;
    private static final QName XSD_SIMPLETYPE;
    private Map dataTypeCache;
    private DatatypeDocumentFactory documentFactory;
    private NamedTypeResolver namedTypeResolver;
    private Namespace targetNamespace;

    public SchemaParser()
    {
        this(DatatypeDocumentFactory.singleton);
    }

    public SchemaParser(DatatypeDocumentFactory datatypedocumentfactory)
    {
        dataTypeCache = new HashMap();
        documentFactory = datatypedocumentfactory;
        namedTypeResolver = new NamedTypeResolver(datatypedocumentfactory);
    }

    private XSDatatype dataTypeForXsdAttribute(Element element)
    {
        Object obj = element.attributeValue("type");
        if (obj != null)
        {
            return getTypeByName(((String) (obj)));
        }
        obj = element.element(XSD_SIMPLETYPE);
        if (obj == null)
        {
            element = element.attributeValue("name");
            throw new InvalidSchemaException("The attribute: " + element + " has no type attribute and does not contain a " + "<simpleType/> element");
        } else
        {
            return loadXSDatatypeFromSimpleType(((Element) (obj)));
        }
    }

    private XSDatatype deriveSimpleType(XSDatatype xsdatatype, Element element)
    {
        xsdatatype = new TypeIncubator(xsdatatype);
        try
        {
            Element element1;
            for (Iterator iterator = element.elementIterator(); iterator.hasNext(); xsdatatype.addFacet(element1.getName(), element1.attributeValue("value"), AttributeHelper.booleanValue(element1, "fixed"), null))
            {
                element1 = (Element)iterator.next();
            }

        }
        // Misplaced declaration of an exception variable
        catch (XSDatatype xsdatatype)
        {
            onSchemaError("Invalid restriction: " + xsdatatype.getMessage() + " when trying to build restriction: " + element);
            return null;
        }
        xsdatatype = xsdatatype.derive("", null);
        return xsdatatype;
    }

    private DatatypeElementFactory getDatatypeElementFactory(QName qname)
    {
        DatatypeElementFactory datatypeelementfactory1 = documentFactory.getElementFactory(qname);
        DatatypeElementFactory datatypeelementfactory = datatypeelementfactory1;
        if (datatypeelementfactory1 == null)
        {
            datatypeelementfactory = new DatatypeElementFactory(qname);
            qname.setDocumentFactory(datatypeelementfactory);
        }
        return datatypeelementfactory;
    }

    private QName getQName(String s)
    {
        if (targetNamespace == null)
        {
            return documentFactory.createQName(s);
        } else
        {
            return documentFactory.createQName(s, targetNamespace);
        }
    }

    private XSDatatype getTypeByName(String s)
    {
        Object obj1 = (XSDatatype)dataTypeCache.get(s);
        Object obj2 = obj1;
        if (obj1 == null)
        {
            int i = s.indexOf(':');
            Object obj = obj1;
            if (i >= 0)
            {
                obj = s.substring(i + 1);
                try
                {
                    obj = DatatypeFactory.getTypeByName(((String) (obj)));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    obj = obj1;
                }
            }
            obj1 = obj;
            if (obj == null)
            {
                try
                {
                    obj1 = DatatypeFactory.getTypeByName(s);
                }
                catch (DatatypeException datatypeexception)
                {
                    datatypeexception = ((DatatypeException) (obj));
                }
            }
            obj = obj1;
            if (obj1 == null)
            {
                obj = getQName(s);
                obj = (XSDatatype)namedTypeResolver.simpleTypeMap.get(obj);
            }
            obj2 = obj;
            if (obj != null)
            {
                dataTypeCache.put(s, obj);
                obj2 = obj;
            }
        }
        return ((XSDatatype) (obj2));
    }

    private void internalBuild(Document document)
    {
        this;
        JVM INSTR monitorenter ;
        Element element = document.getRootElement();
        if (element == null)
        {
            break MISSING_BLOCK_LABEL_346;
        }
        Iterator iterator = element.elementIterator(XSD_INCLUDE);
_L1:
        String s;
        Object obj;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_230;
        }
        s = ((Element)iterator.next()).attributeValue("schemaLocation");
        obj = document.getEntityResolver();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        try
        {
            throw new InvalidSchemaException("No EntityResolver available");
        }
        // Misplaced declaration of an exception variable
        catch (Document document) { }
        finally
        {
            this;
        }
        System.out.println("Failed to load schema: " + s);
        System.out.println("Caught: " + document);
        document.printStackTrace();
        throw new InvalidSchemaException("Failed to load schema: " + s);
        throw document;
        obj = ((EntityResolver) (obj)).resolveEntity(null, s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        throw new InvalidSchemaException("Could not resolve the schema URI: " + s);
        build((new SAXReader()).read(((org.xml.sax.InputSource) (obj))));
          goto _L1
        for (document = element.elementIterator(XSD_ELEMENT); document.hasNext(); onDatatypeElement((Element)document.next(), documentFactory)) { }
        for (document = element.elementIterator(XSD_SIMPLETYPE); document.hasNext(); onNamedSchemaSimpleType((Element)document.next())) { }
        for (document = element.elementIterator(XSD_COMPLEXTYPE); document.hasNext(); onNamedSchemaComplexType((Element)document.next())) { }
        namedTypeResolver.resolveNamedTypes();
        this;
        JVM INSTR monitorexit ;
    }

    private XSDatatype loadXSDatatypeFromSimpleType(Element element)
    {
        Element element1 = element.element(XSD_RESTRICTION);
        if (element1 == null) goto _L2; else goto _L1
_L1:
        String s = element1.attributeValue("base");
        if (s == null) goto _L4; else goto _L3
_L3:
        element = getTypeByName(s);
        if (element != null) goto _L6; else goto _L5
_L5:
        onSchemaError("Invalid base type: " + s + " when trying to build restriction: " + element1);
_L8:
        return null;
_L6:
        return deriveSimpleType(element, element1);
_L4:
        Element element2 = element.element(XSD_SIMPLETYPE);
        if (element2 == null)
        {
            onSchemaError("The simpleType element: " + element + " must contain a base attribute or simpleType" + " element");
        } else
        {
            return loadXSDatatypeFromSimpleType(element2);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        onSchemaError("No <restriction>. Could not create XSDatatype for simpleType: " + element);
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void onChildElements(Element element, DatatypeElementFactory datatypeelementfactory)
    {
        for (element = element.elementIterator(XSD_ELEMENT); element.hasNext(); onDatatypeElement((Element)element.next(), datatypeelementfactory)) { }
    }

    private void onDatatypeAttribute(Element element, DatatypeElementFactory datatypeelementfactory, Element element1)
    {
        element = element1.attributeValue("name");
        QName qname = getQName(element);
        XSDatatype xsdatatype = dataTypeForXsdAttribute(element1);
        if (xsdatatype != null)
        {
            datatypeelementfactory.setAttributeXSDatatype(qname, xsdatatype);
            return;
        } else
        {
            datatypeelementfactory = element1.attributeValue("type");
            System.out.println("Warning: Couldn't find XSDatatype for type: " + datatypeelementfactory + " attribute: " + element);
            return;
        }
    }

    private void onDatatypeElement(Element element, DocumentFactory documentfactory)
    {
        Object obj;
        QName qname;
        String s;
        obj = element.attributeValue("name");
        s = element.attributeValue("type");
        qname = getQName(((String) (obj)));
        obj = getDatatypeElementFactory(qname);
        if (s == null) goto _L2; else goto _L1
_L1:
        XSDatatype xsdatatype = getTypeByName(s);
        if (xsdatatype == null) goto _L4; else goto _L3
_L3:
        ((DatatypeElementFactory) (obj)).setChildElementXSDatatype(qname, xsdatatype);
_L6:
        return;
_L4:
        obj = getQName(s);
        namedTypeResolver.registerTypedElement(element, ((QName) (obj)), documentfactory);
        return;
_L2:
        documentfactory = element.element(XSD_SIMPLETYPE);
        if (documentfactory != null)
        {
            documentfactory = loadXSDatatypeFromSimpleType(documentfactory);
            if (documentfactory != null)
            {
                ((DatatypeElementFactory) (obj)).setChildElementXSDatatype(qname, documentfactory);
            }
        }
        documentfactory = element.element(XSD_COMPLEXTYPE);
        if (documentfactory != null)
        {
            onSchemaComplexType(documentfactory, ((DatatypeElementFactory) (obj)));
        }
        documentfactory = element.elementIterator(XSD_ATTRIBUTE);
        if (documentfactory.hasNext())
        {
            do
            {
                onDatatypeAttribute(element, ((DatatypeElementFactory) (obj)), (Element)documentfactory.next());
            } while (documentfactory.hasNext());
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void onNamedSchemaComplexType(Element element)
    {
        Object obj = element.attribute("name");
        if (obj == null)
        {
            return;
        } else
        {
            obj = getQName(((Attribute) (obj)).getText());
            DatatypeElementFactory datatypeelementfactory = getDatatypeElementFactory(((QName) (obj)));
            onSchemaComplexType(element, datatypeelementfactory);
            namedTypeResolver.registerComplexType(((QName) (obj)), datatypeelementfactory);
            return;
        }
    }

    private void onNamedSchemaSimpleType(Element element)
    {
        Object obj = element.attribute("name");
        if (obj == null)
        {
            return;
        } else
        {
            obj = getQName(((Attribute) (obj)).getText());
            element = loadXSDatatypeFromSimpleType(element);
            namedTypeResolver.registerSimpleType(((QName) (obj)), element);
            return;
        }
    }

    private void onSchemaComplexType(Element element, DatatypeElementFactory datatypeelementfactory)
    {
        Object obj = element.elementIterator(XSD_ATTRIBUTE);
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            Object obj1 = (Element)((Iterator) (obj)).next();
            QName qname = getQName(((Element) (obj1)).attributeValue("name"));
            obj1 = dataTypeForXsdAttribute(((Element) (obj1)));
            if (obj1 != null)
            {
                datatypeelementfactory.setAttributeXSDatatype(qname, ((XSDatatype) (obj1)));
            }
        } while (true);
        obj = element.element(XSD_SEQUENCE);
        if (obj != null)
        {
            onChildElements(((Element) (obj)), datatypeelementfactory);
        }
        obj = element.element(XSD_CHOICE);
        if (obj != null)
        {
            onChildElements(((Element) (obj)), datatypeelementfactory);
        }
        element = element.element(XSD_ALL);
        if (element != null)
        {
            onChildElements(element, datatypeelementfactory);
        }
    }

    private void onSchemaError(String s)
    {
        throw new InvalidSchemaException(s);
    }

    public void build(Document document)
    {
        targetNamespace = null;
        internalBuild(document);
    }

    public void build(Document document, Namespace namespace)
    {
        targetNamespace = namespace;
        internalBuild(document);
    }

    static 
    {
        XSD_NAMESPACE = Namespace.get("xsd", "http://www.w3.org/2001/XMLSchema");
        XSD_ELEMENT = QName.get("element", XSD_NAMESPACE);
        XSD_ATTRIBUTE = QName.get("attribute", XSD_NAMESPACE);
        XSD_SIMPLETYPE = QName.get("simpleType", XSD_NAMESPACE);
        XSD_COMPLEXTYPE = QName.get("complexType", XSD_NAMESPACE);
        XSD_RESTRICTION = QName.get("restriction", XSD_NAMESPACE);
        XSD_SEQUENCE = QName.get("sequence", XSD_NAMESPACE);
        XSD_CHOICE = QName.get("choice", XSD_NAMESPACE);
        XSD_ALL = QName.get("all", XSD_NAMESPACE);
        XSD_INCLUDE = QName.get("include", XSD_NAMESPACE);
    }
}
