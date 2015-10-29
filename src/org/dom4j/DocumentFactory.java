// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.dom4j.rule.Pattern;
import org.dom4j.tree.AbstractDocument;
import org.dom4j.tree.DefaultAttribute;
import org.dom4j.tree.DefaultCDATA;
import org.dom4j.tree.DefaultComment;
import org.dom4j.tree.DefaultDocument;
import org.dom4j.tree.DefaultDocumentType;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.DefaultEntity;
import org.dom4j.tree.DefaultProcessingInstruction;
import org.dom4j.tree.DefaultText;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SimpleSingleton;
import org.dom4j.util.SingletonStrategy;
import org.dom4j.xpath.DefaultXPath;
import org.dom4j.xpath.XPathPattern;
import org.jaxen.VariableContext;

// Referenced classes of package org.dom4j:
//            Document, Namespace, InvalidXPathException, XPath, 
//            Element, Attribute, QName, CDATA, 
//            Comment, DocumentType, Entity, ProcessingInstruction, 
//            Text, NodeFilter

public class DocumentFactory
    implements Serializable
{

    static Class class$org$dom4j$DocumentFactory;
    private static SingletonStrategy singleton = null;
    protected transient QNameCache cache;
    private Map xpathNamespaceURIs;

    public DocumentFactory()
    {
        init();
    }

    static Class _mthclass$(String s)
    {
        try
        {
            s = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new NoClassDefFoundError(s.getMessage());
        }
        return s;
    }

    protected static DocumentFactory createSingleton(String s)
    {
        try
        {
            Class class1;
            if (class$org$dom4j$DocumentFactory == null)
            {
                class1 = _mthclass$("org.dom4j.DocumentFactory");
                class$org$dom4j$DocumentFactory = class1;
            } else
            {
                class1 = class$org$dom4j$DocumentFactory;
            }
            return (DocumentFactory)Class.forName(s, true, class1.getClassLoader()).newInstance();
        }
        catch (Throwable throwable)
        {
            System.out.println("WARNING: Cannot load DocumentFactory: " + s);
        }
        return new DocumentFactory();
    }

    private static SingletonStrategy createSingleton()
    {
        String s;
        Object obj;
        try
        {
            s = System.getProperty("org.dom4j.factory", "org.dom4j.DocumentFactory");
        }
        catch (Exception exception)
        {
            exception = "org.dom4j.DocumentFactory";
        }
        try
        {
            obj = (SingletonStrategy)Class.forName(System.getProperty("org.dom4j.DocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton")).newInstance();
        }
        catch (Exception exception1)
        {
            exception1 = new SimpleSingleton();
        }
        ((SingletonStrategy) (obj)).setSingletonClassName(s);
        return ((SingletonStrategy) (obj));
    }

    public static DocumentFactory getInstance()
    {
        org/dom4j/DocumentFactory;
        JVM INSTR monitorenter ;
        DocumentFactory documentfactory;
        if (singleton == null)
        {
            singleton = createSingleton();
        }
        documentfactory = (DocumentFactory)singleton.instance();
        org/dom4j/DocumentFactory;
        JVM INSTR monitorexit ;
        return documentfactory;
        Exception exception;
        exception;
        throw exception;
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        init();
    }

    public Attribute createAttribute(Element element, String s, String s1)
    {
        return createAttribute(element, createQName(s), s1);
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        return new DefaultAttribute(qname, s);
    }

    public CDATA createCDATA(String s)
    {
        return new DefaultCDATA(s);
    }

    public Comment createComment(String s)
    {
        return new DefaultComment(s);
    }

    public DocumentType createDocType(String s, String s1, String s2)
    {
        return new DefaultDocumentType(s, s1, s2);
    }

    public Document createDocument()
    {
        DefaultDocument defaultdocument = new DefaultDocument();
        defaultdocument.setDocumentFactory(this);
        return defaultdocument;
    }

    public Document createDocument(String s)
    {
        Document document = createDocument();
        if (document instanceof AbstractDocument)
        {
            ((AbstractDocument)document).setXMLEncoding(s);
        }
        return document;
    }

    public Document createDocument(Element element)
    {
        Document document = createDocument();
        document.setRootElement(element);
        return document;
    }

    public Element createElement(String s)
    {
        return createElement(createQName(s));
    }

    public Element createElement(String s, String s1)
    {
        return createElement(createQName(s, s1));
    }

    public Element createElement(QName qname)
    {
        return new DefaultElement(qname);
    }

    public Entity createEntity(String s, String s1)
    {
        return new DefaultEntity(s, s1);
    }

    public Namespace createNamespace(String s, String s1)
    {
        return Namespace.get(s, s1);
    }

    public Pattern createPattern(String s)
    {
        return new XPathPattern(s);
    }

    public ProcessingInstruction createProcessingInstruction(String s, String s1)
    {
        return new DefaultProcessingInstruction(s, s1);
    }

    public ProcessingInstruction createProcessingInstruction(String s, Map map)
    {
        return new DefaultProcessingInstruction(s, map);
    }

    public QName createQName(String s)
    {
        return cache.get(s);
    }

    public QName createQName(String s, String s1)
    {
        return cache.get(s, s1);
    }

    public QName createQName(String s, String s1, String s2)
    {
        return cache.get(s, Namespace.get(s1, s2));
    }

    public QName createQName(String s, Namespace namespace)
    {
        return cache.get(s, namespace);
    }

    protected QNameCache createQNameCache()
    {
        return new QNameCache(this);
    }

    public Text createText(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Adding text to an XML document must not be null");
        } else
        {
            return new DefaultText(s);
        }
    }

    public XPath createXPath(String s)
        throws InvalidXPathException
    {
        s = new DefaultXPath(s);
        if (xpathNamespaceURIs != null)
        {
            s.setNamespaceURIs(xpathNamespaceURIs);
        }
        return s;
    }

    public XPath createXPath(String s, VariableContext variablecontext)
    {
        s = createXPath(s);
        s.setVariableContext(variablecontext);
        return s;
    }

    public NodeFilter createXPathFilter(String s)
    {
        return createXPath(s);
    }

    public NodeFilter createXPathFilter(String s, VariableContext variablecontext)
    {
        s = createXPath(s);
        s.setVariableContext(variablecontext);
        return s;
    }

    public List getQNames()
    {
        return cache.getQNames();
    }

    public Map getXPathNamespaceURIs()
    {
        return xpathNamespaceURIs;
    }

    protected void init()
    {
        cache = createQNameCache();
    }

    protected QName intern(QName qname)
    {
        return cache.intern(qname);
    }

    public void setXPathNamespaceURIs(Map map)
    {
        xpathNamespaceURIs = map;
    }

}
