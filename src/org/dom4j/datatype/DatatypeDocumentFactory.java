// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.datatype;

import java.io.PrintStream;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.io.SAXReader;
import org.xml.sax.EntityResolver;

// Referenced classes of package org.dom4j.datatype:
//            SchemaParser, DatatypeElementFactory, InvalidSchemaException

public class DatatypeDocumentFactory extends DocumentFactory
{

    private static final boolean DO_INTERN_QNAME = false;
    private static final Namespace XSI_NAMESPACE;
    private static final QName XSI_NO_SCHEMA_LOCATION;
    private static final QName XSI_SCHEMA_LOCATION;
    protected static transient DatatypeDocumentFactory singleton = new DatatypeDocumentFactory();
    private boolean autoLoadSchema;
    private SchemaParser schemaBuilder;
    private SAXReader xmlSchemaReader;

    public DatatypeDocumentFactory()
    {
        xmlSchemaReader = new SAXReader();
        autoLoadSchema = true;
        schemaBuilder = new SchemaParser(this);
    }

    public static DocumentFactory getInstance()
    {
        return singleton;
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        Document document;
        Namespace namespace;
        namespace = null;
        document = null;
        if (!autoLoadSchema || !qname.equals(XSI_NO_SCHEMA_LOCATION)) goto _L2; else goto _L1
_L1:
        if (element != null)
        {
            document = element.getDocument();
        }
        loadSchema(document, s);
_L4:
        return super.createAttribute(element, qname, s);
_L2:
        if (autoLoadSchema && qname.equals(XSI_SCHEMA_LOCATION))
        {
            Document document1 = namespace;
            if (element != null)
            {
                document1 = element.getDocument();
            }
            namespace = element.getNamespaceForURI(s.substring(0, s.indexOf(' ')));
            loadSchema(document1, s.substring(s.indexOf(' ') + 1), namespace);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public DatatypeElementFactory getElementFactory(QName qname)
    {
        Object obj = null;
        DocumentFactory documentfactory = qname.getDocumentFactory();
        qname = obj;
        if (documentfactory instanceof DatatypeElementFactory)
        {
            qname = (DatatypeElementFactory)documentfactory;
        }
        return qname;
    }

    public void loadSchema(Document document)
    {
        schemaBuilder.build(document);
    }

    protected void loadSchema(Document document, String s)
    {
        document = document.getEntityResolver();
        if (document == null)
        {
            try
            {
                throw new InvalidSchemaException("No EntityResolver available for resolving URI: " + s);
            }
            // Misplaced declaration of an exception variable
            catch (Document document)
            {
                System.out.println("Failed to load schema: " + s);
            }
            System.out.println("Caught: " + document);
            document.printStackTrace();
            throw new InvalidSchemaException("Failed to load schema: " + s);
        }
        org.xml.sax.InputSource inputsource = document.resolveEntity(null, s);
        if (document != null)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        throw new InvalidSchemaException("Could not resolve the URI: " + s);
        loadSchema(xmlSchemaReader.read(inputsource));
        return;
    }

    protected void loadSchema(Document document, String s, Namespace namespace)
    {
        document = document.getEntityResolver();
        if (document == null)
        {
            try
            {
                throw new InvalidSchemaException("No EntityResolver available for resolving URI: " + s);
            }
            // Misplaced declaration of an exception variable
            catch (Document document)
            {
                System.out.println("Failed to load schema: " + s);
            }
            System.out.println("Caught: " + document);
            document.printStackTrace();
            throw new InvalidSchemaException("Failed to load schema: " + s);
        }
        org.xml.sax.InputSource inputsource = document.resolveEntity(null, s);
        if (document != null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        throw new InvalidSchemaException("Could not resolve the URI: " + s);
        loadSchema(xmlSchemaReader.read(inputsource), namespace);
        return;
    }

    public void loadSchema(Document document, Namespace namespace)
    {
        schemaBuilder.build(document, namespace);
    }

    static 
    {
        XSI_NAMESPACE = Namespace.get("xsi", "http://www.w3.org/2001/XMLSchema-instance");
        XSI_SCHEMA_LOCATION = QName.get("schemaLocation", XSI_NAMESPACE);
        XSI_NO_SCHEMA_LOCATION = QName.get("noNamespaceSchemaLocation", XSI_NAMESPACE);
    }
}
