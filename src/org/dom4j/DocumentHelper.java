// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.io.StringReader;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.io.SAXReader;
import org.dom4j.rule.Pattern;
import org.jaxen.VariableContext;
import org.xml.sax.InputSource;

// Referenced classes of package org.dom4j:
//            DocumentFactory, InvalidXPathException, Document, Element, 
//            DocumentException, XPath, Attribute, QName, 
//            CDATA, Comment, Entity, Namespace, 
//            ProcessingInstruction, Text, NodeFilter, Branch, 
//            Node

public final class DocumentHelper
{

    private DocumentHelper()
    {
    }

    public static Attribute createAttribute(Element element, String s, String s1)
    {
        return getDocumentFactory().createAttribute(element, s, s1);
    }

    public static Attribute createAttribute(Element element, QName qname, String s)
    {
        return getDocumentFactory().createAttribute(element, qname, s);
    }

    public static CDATA createCDATA(String s)
    {
        return DocumentFactory.getInstance().createCDATA(s);
    }

    public static Comment createComment(String s)
    {
        return DocumentFactory.getInstance().createComment(s);
    }

    public static Document createDocument()
    {
        return getDocumentFactory().createDocument();
    }

    public static Document createDocument(Element element)
    {
        return getDocumentFactory().createDocument(element);
    }

    public static Element createElement(String s)
    {
        return getDocumentFactory().createElement(s);
    }

    public static Element createElement(QName qname)
    {
        return getDocumentFactory().createElement(qname);
    }

    public static Entity createEntity(String s, String s1)
    {
        return DocumentFactory.getInstance().createEntity(s, s1);
    }

    public static Namespace createNamespace(String s, String s1)
    {
        return DocumentFactory.getInstance().createNamespace(s, s1);
    }

    public static Pattern createPattern(String s)
    {
        return getDocumentFactory().createPattern(s);
    }

    public static ProcessingInstruction createProcessingInstruction(String s, String s1)
    {
        return getDocumentFactory().createProcessingInstruction(s, s1);
    }

    public static ProcessingInstruction createProcessingInstruction(String s, Map map)
    {
        return getDocumentFactory().createProcessingInstruction(s, map);
    }

    public static QName createQName(String s)
    {
        return getDocumentFactory().createQName(s);
    }

    public static QName createQName(String s, Namespace namespace)
    {
        return getDocumentFactory().createQName(s, namespace);
    }

    public static Text createText(String s)
    {
        return DocumentFactory.getInstance().createText(s);
    }

    public static XPath createXPath(String s)
        throws InvalidXPathException
    {
        return getDocumentFactory().createXPath(s);
    }

    public static XPath createXPath(String s, VariableContext variablecontext)
        throws InvalidXPathException
    {
        return getDocumentFactory().createXPath(s, variablecontext);
    }

    public static NodeFilter createXPathFilter(String s)
    {
        return getDocumentFactory().createXPathFilter(s);
    }

    private static DocumentFactory getDocumentFactory()
    {
        return DocumentFactory.getInstance();
    }

    private static String getEncoding(String s)
    {
label0:
        {
            Object obj = null;
            Object obj1 = s.trim();
            s = obj;
            if (!((String) (obj1)).startsWith("<?xml"))
            {
                break label0;
            }
            obj1 = new StringTokenizer(((String) (obj1)).substring(0, ((String) (obj1)).indexOf("?>")), " =\"'");
            do
            {
                s = obj;
                if (!((StringTokenizer) (obj1)).hasMoreTokens())
                {
                    break label0;
                }
            } while (!"encoding".equals(((StringTokenizer) (obj1)).nextToken()));
            s = obj;
            if (((StringTokenizer) (obj1)).hasMoreTokens())
            {
                s = ((StringTokenizer) (obj1)).nextToken();
            }
        }
        return s;
    }

    public static Element makeElement(Branch branch, String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, "/");
        Branch branch1;
        if (branch instanceof Document)
        {
            Document document = (Document)branch;
            s = document.getRootElement();
            String s1 = stringtokenizer.nextToken();
            branch = s;
            if (s == null)
            {
                branch = document.addElement(s1);
            }
        } else
        {
            branch = (Element)branch;
        }
        s = null;
        branch1 = branch;
        branch = s;
        while (stringtokenizer.hasMoreTokens()) 
        {
            String s2 = stringtokenizer.nextToken();
            if (s2.indexOf(':') > 0)
            {
                s = branch1.element(branch1.getQName(s2));
            } else
            {
                s = branch1.element(s2);
            }
            branch = s;
            if (s == null)
            {
                branch = branch1.addElement(s2);
            }
            branch1 = branch;
        }
        return branch;
    }

    public static Document parseText(String s)
        throws DocumentException
    {
        SAXReader saxreader = new SAXReader();
        String s1 = getEncoding(s);
        s = new InputSource(new StringReader(s));
        s.setEncoding(s1);
        s = saxreader.read(s);
        if (s.getXMLEncoding() == null)
        {
            s.setXMLEncoding(s1);
        }
        return s;
    }

    public static List selectNodes(String s, List list)
    {
        return createXPath(s).selectNodes(list);
    }

    public static List selectNodes(String s, Node node)
    {
        return createXPath(s).selectNodes(node);
    }

    public static void sort(List list, String s)
    {
        createXPath(s).sort(list);
    }

    public static void sort(List list, String s, boolean flag)
    {
        createXPath(s).sort(list, flag);
    }
}
