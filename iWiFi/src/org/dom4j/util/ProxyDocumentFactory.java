// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.NodeFilter;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.XPath;
import org.dom4j.rule.Pattern;
import org.jaxen.VariableContext;

public abstract class ProxyDocumentFactory
{

    private DocumentFactory proxy;

    public ProxyDocumentFactory()
    {
        proxy = DocumentFactory.getInstance();
    }

    public ProxyDocumentFactory(DocumentFactory documentfactory)
    {
        proxy = documentfactory;
    }

    public Attribute createAttribute(Element element, String s, String s1)
    {
        return proxy.createAttribute(element, s, s1);
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        return proxy.createAttribute(element, qname, s);
    }

    public CDATA createCDATA(String s)
    {
        return proxy.createCDATA(s);
    }

    public Comment createComment(String s)
    {
        return proxy.createComment(s);
    }

    public DocumentType createDocType(String s, String s1, String s2)
    {
        return proxy.createDocType(s, s1, s2);
    }

    public Document createDocument()
    {
        return proxy.createDocument();
    }

    public Document createDocument(Element element)
    {
        return proxy.createDocument(element);
    }

    public Element createElement(String s)
    {
        return proxy.createElement(s);
    }

    public Element createElement(QName qname)
    {
        return proxy.createElement(qname);
    }

    public Entity createEntity(String s, String s1)
    {
        return proxy.createEntity(s, s1);
    }

    public Namespace createNamespace(String s, String s1)
    {
        return proxy.createNamespace(s, s1);
    }

    public Pattern createPattern(String s)
    {
        return proxy.createPattern(s);
    }

    public ProcessingInstruction createProcessingInstruction(String s, String s1)
    {
        return proxy.createProcessingInstruction(s, s1);
    }

    public ProcessingInstruction createProcessingInstruction(String s, Map map)
    {
        return proxy.createProcessingInstruction(s, map);
    }

    public QName createQName(String s)
    {
        return proxy.createQName(s);
    }

    public QName createQName(String s, String s1)
    {
        return proxy.createQName(s, s1);
    }

    public QName createQName(String s, String s1, String s2)
    {
        return proxy.createQName(s, s1, s2);
    }

    public QName createQName(String s, Namespace namespace)
    {
        return proxy.createQName(s, namespace);
    }

    public Text createText(String s)
    {
        return proxy.createText(s);
    }

    public XPath createXPath(String s)
    {
        return proxy.createXPath(s);
    }

    public XPath createXPath(String s, VariableContext variablecontext)
    {
        return proxy.createXPath(s, variablecontext);
    }

    public NodeFilter createXPathFilter(String s)
    {
        return proxy.createXPathFilter(s);
    }

    public NodeFilter createXPathFilter(String s, VariableContext variablecontext)
    {
        return proxy.createXPathFilter(s, variablecontext);
    }

    protected DocumentFactory getProxy()
    {
        return proxy;
    }

    protected void setProxy(DocumentFactory documentfactory)
    {
        DocumentFactory documentfactory1 = documentfactory;
        if (documentfactory == null)
        {
            documentfactory1 = DocumentFactory.getInstance();
        }
        proxy = documentfactory1;
    }
}
