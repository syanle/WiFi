// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.PrintStream;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

// Referenced classes of package org.dom4j.io:
//            JAXPHelper, SAXHelper

public class DOMWriter
{

    private static final String DEFAULT_DOM_DOCUMENT_CLASSES[] = {
        "org.apache.xerces.dom.DocumentImpl", "gnu.xml.dom.DomDocument", "org.apache.crimson.tree.XmlDocument", "com.sun.xml.tree.XmlDocument", "oracle.xml.parser.v2.XMLDocument", "oracle.xml.parser.XMLDocument", "org.dom4j.dom.DOMDocument"
    };
    static Class class$org$dom4j$io$DOMWriter;
    private static boolean loggedWarning = false;
    private Class domDocumentClass;
    private NamespaceStack namespaceStack;

    public DOMWriter()
    {
        namespaceStack = new NamespaceStack();
    }

    public DOMWriter(Class class1)
    {
        namespaceStack = new NamespaceStack();
        domDocumentClass = class1;
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

    protected void appendDOMTree(Document document, Node node, String s)
    {
        node.appendChild(document.createTextNode(s));
    }

    protected void appendDOMTree(Document document, Node node, List list)
    {
        int j = list.size();
        int i = 0;
        while (i < j) 
        {
            Object obj = list.get(i);
            if (obj instanceof Element)
            {
                appendDOMTree(document, node, (Element)obj);
            } else
            if (obj instanceof String)
            {
                appendDOMTree(document, node, (String)obj);
            } else
            if (obj instanceof Text)
            {
                appendDOMTree(document, node, ((Text)obj).getText());
            } else
            if (obj instanceof CDATA)
            {
                appendDOMTree(document, node, (CDATA)obj);
            } else
            if (obj instanceof Comment)
            {
                appendDOMTree(document, node, (Comment)obj);
            } else
            if (obj instanceof Entity)
            {
                appendDOMTree(document, node, (Entity)obj);
            } else
            if (obj instanceof ProcessingInstruction)
            {
                appendDOMTree(document, node, (ProcessingInstruction)obj);
            }
            i++;
        }
    }

    protected void appendDOMTree(Document document, Node node, CDATA cdata)
    {
        node.appendChild(document.createCDATASection(cdata.getText()));
    }

    protected void appendDOMTree(Document document, Node node, Comment comment)
    {
        node.appendChild(document.createComment(comment.getText()));
    }

    protected void appendDOMTree(Document document, Node node, Element element)
    {
        org.w3c.dom.Element element1 = document.createElementNS(element.getNamespaceURI(), element.getQualifiedName());
        int j = namespaceStack.size();
        Object obj = element.getNamespace();
        if (isNamespaceDeclaration(((Namespace) (obj))))
        {
            namespaceStack.push(((Namespace) (obj)));
            writeNamespace(element1, ((Namespace) (obj)));
        }
        obj = element.declaredNamespaces();
        int i = 0;
        for (int k = ((List) (obj)).size(); i < k; i++)
        {
            Namespace namespace = (Namespace)((List) (obj)).get(i);
            if (isNamespaceDeclaration(namespace))
            {
                namespaceStack.push(namespace);
                writeNamespace(element1, namespace);
            }
        }

        i = 0;
        for (int l = element.attributeCount(); i < l; i++)
        {
            Attribute attribute = element.attribute(i);
            element1.setAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName(), attribute.getValue());
        }

        appendDOMTree(document, ((Node) (element1)), element.content());
        node.appendChild(element1);
        for (; namespaceStack.size() > j; namespaceStack.pop()) { }
    }

    protected void appendDOMTree(Document document, Node node, Entity entity)
    {
        node.appendChild(document.createEntityReference(entity.getName()));
    }

    protected void appendDOMTree(Document document, Node node, ProcessingInstruction processinginstruction)
    {
        node.appendChild(document.createProcessingInstruction(processinginstruction.getTarget(), processinginstruction.getText()));
    }

    protected String attributeNameForNamespace(Namespace namespace)
    {
        String s = "xmlns";
        String s1 = namespace.getPrefix();
        namespace = s;
        if (s1.length() > 0)
        {
            namespace = "xmlns" + ":" + s1;
        }
        return namespace;
    }

    protected Document createDomDocument(org.dom4j.Document document)
        throws DocumentException
    {
        if (domDocumentClass != null)
        {
            try
            {
                document = (Document)domDocumentClass.newInstance();
            }
            // Misplaced declaration of an exception variable
            catch (org.dom4j.Document document)
            {
                throw new DocumentException("Could not instantiate an instance of DOM Document with class: " + domDocumentClass.getName(), document);
            }
        } else
        {
            Document document1 = createDomDocumentViaJAXP();
            document = document1;
            if (document1 == null)
            {
                document = getDomDocumentClass();
                Document document2;
                try
                {
                    document2 = (Document)document.newInstance();
                }
                catch (Exception exception)
                {
                    throw new DocumentException("Could not instantiate an instance of DOM Document with class: " + document.getName(), exception);
                }
                return document2;
            }
        }
        return document;
    }

    protected Document createDomDocument(org.dom4j.Document document, DOMImplementation domimplementation)
        throws DocumentException
    {
        return domimplementation.createDocument(null, null, null);
    }

    protected Document createDomDocumentViaJAXP()
        throws DocumentException
    {
        Document document;
        try
        {
            document = JAXPHelper.createDocument(false, true);
        }
        catch (Throwable throwable)
        {
            if (!loggedWarning)
            {
                loggedWarning = true;
                if (SAXHelper.isVerboseErrorReporting())
                {
                    System.out.println("Warning: Caught exception attempting to use JAXP to create a W3C DOM document");
                    System.out.println("Warning: Exception was: " + throwable);
                    throwable.printStackTrace();
                } else
                {
                    System.out.println("Warning: Error occurred using JAXP to create a DOM document.");
                }
            }
            return null;
        }
        return document;
    }

    public Class getDomDocumentClass()
        throws DocumentException
    {
        Object obj;
        Object obj1;
        obj = domDocumentClass;
        obj1 = obj;
        if (obj != null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = DEFAULT_DOM_DOCUMENT_CLASSES.length;
        i = 0;
_L4:
        obj1 = obj;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        String s;
        s = DEFAULT_DOM_DOCUMENT_CLASSES[i];
        if (class$org$dom4j$io$DOMWriter != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        obj1 = _mthclass$("org.dom4j.io.DOMWriter");
        class$org$dom4j$io$DOMWriter = ((Class) (obj1));
_L3:
        obj1 = Class.forName(s, true, ((Class) (obj1)).getClassLoader());
        obj = obj1;
        if (obj1 != null)
        {
            return ((Class) (obj1));
        }
        break MISSING_BLOCK_LABEL_79;
        obj1 = class$org$dom4j$io$DOMWriter;
          goto _L3
        obj1;
        i++;
        if (true) goto _L4; else goto _L2
_L2:
        return ((Class) (obj1));
    }

    protected boolean isNamespaceDeclaration(Namespace namespace)
    {
        if (namespace != null && namespace != Namespace.NO_NAMESPACE && namespace != Namespace.XML_NAMESPACE)
        {
            String s = namespace.getURI();
            if (s != null && s.length() > 0 && !namespaceStack.contains(namespace))
            {
                return true;
            }
        }
        return false;
    }

    protected void resetNamespaceStack()
    {
        namespaceStack.clear();
        namespaceStack.push(Namespace.XML_NAMESPACE);
    }

    public void setDomDocumentClass(Class class1)
    {
        domDocumentClass = class1;
    }

    public void setDomDocumentClassName(String s)
        throws DocumentException
    {
        Class class1;
        if (class$org$dom4j$io$DOMWriter != null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        class1 = _mthclass$("org.dom4j.io.DOMWriter");
        class$org$dom4j$io$DOMWriter = class1;
_L1:
        domDocumentClass = Class.forName(s, true, class1.getClassLoader());
        return;
        try
        {
            class1 = class$org$dom4j$io$DOMWriter;
        }
        catch (Exception exception)
        {
            throw new DocumentException("Could not load the DOM Document class: " + s, exception);
        }
          goto _L1
    }

    public Document write(org.dom4j.Document document)
        throws DocumentException
    {
        if (document instanceof Document)
        {
            return (Document)document;
        } else
        {
            resetNamespaceStack();
            Document document1 = createDomDocument(document);
            appendDOMTree(document1, document1, document.content());
            namespaceStack.clear();
            return document1;
        }
    }

    public Document write(org.dom4j.Document document, DOMImplementation domimplementation)
        throws DocumentException
    {
        if (document instanceof Document)
        {
            return (Document)document;
        } else
        {
            resetNamespaceStack();
            domimplementation = createDomDocument(document, domimplementation);
            appendDOMTree(domimplementation, domimplementation, document.content());
            namespaceStack.clear();
            return domimplementation;
        }
    }

    protected void writeNamespace(org.w3c.dom.Element element, Namespace namespace)
    {
        element.setAttribute(attributeNameForNamespace(namespace), namespace.getURI());
    }

}
