// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.LocatorImpl;

// Referenced classes of package org.dom4j.io:
//            DocumentInputSource

public class SAXWriter
    implements XMLReader
{

    protected static final String FEATURE_NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String FEATURE_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String LEXICAL_HANDLER_NAMES[] = {
        "http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler"
    };
    private AttributesImpl attributes;
    private ContentHandler contentHandler;
    private boolean declareNamespaceAttributes;
    private DTDHandler dtdHandler;
    private EntityResolver entityResolver;
    private ErrorHandler errorHandler;
    private Map features;
    private LexicalHandler lexicalHandler;
    private Map properties;

    public SAXWriter()
    {
        attributes = new AttributesImpl();
        features = new HashMap();
        properties = new HashMap();
        properties.put("http://xml.org/sax/features/namespace-prefixes", Boolean.FALSE);
        properties.put("http://xml.org/sax/features/namespace-prefixes", Boolean.TRUE);
    }

    public SAXWriter(ContentHandler contenthandler)
    {
        this();
        contentHandler = contenthandler;
    }

    public SAXWriter(ContentHandler contenthandler, LexicalHandler lexicalhandler)
    {
        this();
        contentHandler = contenthandler;
        lexicalHandler = lexicalhandler;
    }

    public SAXWriter(ContentHandler contenthandler, LexicalHandler lexicalhandler, EntityResolver entityresolver)
    {
        this();
        contentHandler = contenthandler;
        lexicalHandler = lexicalhandler;
        entityResolver = entityresolver;
    }

    protected AttributesImpl addNamespaceAttribute(AttributesImpl attributesimpl, Namespace namespace)
    {
        AttributesImpl attributesimpl1 = attributesimpl;
        if (declareNamespaceAttributes)
        {
            attributesimpl1 = attributesimpl;
            if (attributesimpl == null)
            {
                attributesimpl1 = new AttributesImpl();
            }
            String s1 = namespace.getPrefix();
            String s = "xmlns";
            attributesimpl = s;
            if (s1 != null)
            {
                attributesimpl = s;
                if (s1.length() > 0)
                {
                    attributesimpl = "xmlns:" + s1;
                }
            }
            attributesimpl1.addAttribute("", s1, attributesimpl, "CDATA", namespace.getURI());
        }
        return attributesimpl1;
    }

    protected void checkForNullHandlers()
    {
    }

    protected Attributes createAttributes(Element element, Attributes attributes1)
        throws SAXException
    {
        attributes.clear();
        if (attributes1 != null)
        {
            attributes.setAttributes(attributes1);
        }
        for (element = element.attributeIterator(); element.hasNext(); attributes.addAttribute(attributes1.getNamespaceURI(), attributes1.getName(), attributes1.getQualifiedName(), "CDATA", attributes1.getValue()))
        {
            attributes1 = (Attribute)element.next();
        }

        return attributes;
    }

    protected void documentLocator(Document document)
        throws SAXException
    {
        LocatorImpl locatorimpl = new LocatorImpl();
        Object obj = null;
        String s = null;
        DocumentType documenttype = document.getDocType();
        document = obj;
        if (documenttype != null)
        {
            document = documenttype.getPublicID();
            s = documenttype.getSystemID();
        }
        if (document != null)
        {
            locatorimpl.setPublicId(document);
        }
        if (s != null)
        {
            locatorimpl.setSystemId(s);
        }
        locatorimpl.setLineNumber(-1);
        locatorimpl.setColumnNumber(-1);
        contentHandler.setDocumentLocator(locatorimpl);
    }

    protected void dtdHandler(Document document)
        throws SAXException
    {
    }

    protected void endDocument()
        throws SAXException
    {
        contentHandler.endDocument();
    }

    protected void endElement(Element element)
        throws SAXException
    {
        contentHandler.endElement(element.getNamespaceURI(), element.getName(), element.getQualifiedName());
    }

    protected void endPrefixMapping(NamespaceStack namespacestack, int i)
        throws SAXException
    {
        do
        {
            if (namespacestack.size() <= i)
            {
                break;
            }
            Namespace namespace = namespacestack.pop();
            if (namespace != null)
            {
                contentHandler.endPrefixMapping(namespace.getPrefix());
            }
        } while (true);
    }

    protected void entityResolver(Document document)
        throws SAXException
    {
        Object obj;
        if (entityResolver == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        obj = document.getDocType();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        document = ((DocumentType) (obj)).getPublicID();
        obj = ((DocumentType) (obj)).getSystemID();
        if (document == null && obj == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        entityResolver.resolveEntity(document, ((String) (obj)));
        return;
        IOException ioexception;
        ioexception;
        throw new SAXException("Could not resolve publicID: " + document + " systemID: " + obj, ioexception);
    }

    public ContentHandler getContentHandler()
    {
        return contentHandler;
    }

    public DTDHandler getDTDHandler()
    {
        return dtdHandler;
    }

    public EntityResolver getEntityResolver()
    {
        return entityResolver;
    }

    public ErrorHandler getErrorHandler()
    {
        return errorHandler;
    }

    public boolean getFeature(String s)
        throws SAXNotRecognizedException, SAXNotSupportedException
    {
        s = (Boolean)features.get(s);
        return s != null && s.booleanValue();
    }

    public LexicalHandler getLexicalHandler()
    {
        return lexicalHandler;
    }

    public Object getProperty(String s)
        throws SAXNotRecognizedException, SAXNotSupportedException
    {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++)
        {
            if (LEXICAL_HANDLER_NAMES[i].equals(s))
            {
                return getLexicalHandler();
            }
        }

        return properties.get(s);
    }

    public boolean isDeclareNamespaceAttributes()
    {
        return declareNamespaceAttributes;
    }

    protected boolean isIgnoreableNamespace(Namespace namespace, NamespaceStack namespacestack)
    {
        String s;
        if (!namespace.equals(Namespace.NO_NAMESPACE) && !namespace.equals(Namespace.XML_NAMESPACE))
        {
            if ((s = namespace.getURI()) != null && s.length() > 0)
            {
                return namespacestack.contains(namespace);
            }
        }
        return true;
    }

    public void parse(String s)
        throws SAXNotSupportedException
    {
        throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
    }

    public void parse(InputSource inputsource)
        throws SAXException
    {
        if (inputsource instanceof DocumentInputSource)
        {
            write(((DocumentInputSource)inputsource).getDocument());
            return;
        } else
        {
            throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
        }
    }

    public void setContentHandler(ContentHandler contenthandler)
    {
        contentHandler = contenthandler;
    }

    public void setDTDHandler(DTDHandler dtdhandler)
    {
        dtdHandler = dtdhandler;
    }

    public void setDeclareNamespaceAttributes(boolean flag)
    {
        declareNamespaceAttributes = flag;
    }

    public void setEntityResolver(EntityResolver entityresolver)
    {
        entityResolver = entityresolver;
    }

    public void setErrorHandler(ErrorHandler errorhandler)
    {
        errorHandler = errorhandler;
    }

    public void setFeature(String s, boolean flag)
        throws SAXNotRecognizedException, SAXNotSupportedException
    {
        Boolean boolean1;
        Map map;
        if ("http://xml.org/sax/features/namespace-prefixes".equals(s))
        {
            setDeclareNamespaceAttributes(flag);
        } else
        if ("http://xml.org/sax/features/namespace-prefixes".equals(s) && !flag)
        {
            throw new SAXNotSupportedException("Namespace feature is always supported in dom4j");
        }
        map = features;
        if (flag)
        {
            boolean1 = Boolean.TRUE;
        } else
        {
            boolean1 = Boolean.FALSE;
        }
        map.put(s, boolean1);
    }

    public void setLexicalHandler(LexicalHandler lexicalhandler)
    {
        lexicalHandler = lexicalhandler;
    }

    public void setProperty(String s, Object obj)
    {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++)
        {
            if (LEXICAL_HANDLER_NAMES[i].equals(s))
            {
                setLexicalHandler((LexicalHandler)obj);
                return;
            }
        }

        properties.put(s, obj);
    }

    public void setXMLReader(XMLReader xmlreader)
    {
        setContentHandler(xmlreader.getContentHandler());
        setDTDHandler(xmlreader.getDTDHandler());
        setEntityResolver(xmlreader.getEntityResolver());
        setErrorHandler(xmlreader.getErrorHandler());
    }

    protected void startDocument()
        throws SAXException
    {
        contentHandler.startDocument();
    }

    protected void startElement(Element element, AttributesImpl attributesimpl)
        throws SAXException
    {
        contentHandler.startElement(element.getNamespaceURI(), element.getName(), element.getQualifiedName(), createAttributes(element, attributesimpl));
    }

    protected AttributesImpl startPrefixMapping(Element element, NamespaceStack namespacestack)
        throws SAXException
    {
        List list = null;
        Namespace namespace = element.getNamespace();
        Object obj = list;
        if (namespace != null)
        {
            obj = list;
            if (!isIgnoreableNamespace(namespace, namespacestack))
            {
                namespacestack.push(namespace);
                contentHandler.startPrefixMapping(namespace.getPrefix(), namespace.getURI());
                obj = addNamespaceAttribute(null, namespace);
            }
        }
        list = element.declaredNamespaces();
        int i = 0;
        for (int j = list.size(); i < j;)
        {
            Namespace namespace1 = (Namespace)list.get(i);
            element = ((Element) (obj));
            if (!isIgnoreableNamespace(namespace1, namespacestack))
            {
                namespacestack.push(namespace1);
                contentHandler.startPrefixMapping(namespace1.getPrefix(), namespace1.getURI());
                element = addNamespaceAttribute(((AttributesImpl) (obj)), namespace1);
            }
            i++;
            obj = element;
        }

        return ((AttributesImpl) (obj));
    }

    public void write(String s)
        throws SAXException
    {
        if (s != null)
        {
            s = s.toCharArray();
            contentHandler.characters(s, 0, s.length);
        }
    }

    public void write(CDATA cdata)
        throws SAXException
    {
        cdata = cdata.getText();
        if (lexicalHandler != null)
        {
            lexicalHandler.startCDATA();
            write(((String) (cdata)));
            lexicalHandler.endCDATA();
            return;
        } else
        {
            write(((String) (cdata)));
            return;
        }
    }

    public void write(Comment comment)
        throws SAXException
    {
        if (lexicalHandler != null)
        {
            comment = comment.getText().toCharArray();
            lexicalHandler.comment(comment, 0, comment.length);
        }
    }

    public void write(Document document)
        throws SAXException
    {
        if (document != null)
        {
            checkForNullHandlers();
            documentLocator(document);
            startDocument();
            entityResolver(document);
            dtdHandler(document);
            writeContent(document, new NamespaceStack());
            endDocument();
        }
    }

    public void write(Element element)
        throws SAXException
    {
        write(element, new NamespaceStack());
    }

    protected void write(Element element, NamespaceStack namespacestack)
        throws SAXException
    {
        int i = namespacestack.size();
        startElement(element, startPrefixMapping(element, namespacestack));
        writeContent(element, namespacestack);
        endElement(element);
        endPrefixMapping(namespacestack, i);
    }

    public void write(Entity entity)
        throws SAXException
    {
        String s = entity.getText();
        if (lexicalHandler != null)
        {
            entity = entity.getName();
            lexicalHandler.startEntity(entity);
            write(s);
            lexicalHandler.endEntity(entity);
            return;
        } else
        {
            write(s);
            return;
        }
    }

    public void write(Node node)
        throws SAXException
    {
        switch (node.getNodeType())
        {
        case 6: // '\006'
        case 11: // '\013'
        case 12: // '\f'
        default:
            throw new SAXException("Invalid node type: " + node);

        case 1: // '\001'
            write((Element)node);
            // fall through

        case 13: // '\r'
            return;

        case 2: // '\002'
            write(((Node) ((Attribute)node)));
            return;

        case 3: // '\003'
            write(node.getText());
            return;

        case 4: // '\004'
            write((CDATA)node);
            return;

        case 5: // '\005'
            write((Entity)node);
            return;

        case 7: // '\007'
            write((ProcessingInstruction)node);
            return;

        case 8: // '\b'
            write((Comment)node);
            return;

        case 9: // '\t'
            write((Document)node);
            return;

        case 10: // '\n'
            write(((Node) ((DocumentType)node)));
            break;
        }
    }

    public void write(ProcessingInstruction processinginstruction)
        throws SAXException
    {
        String s = processinginstruction.getTarget();
        processinginstruction = processinginstruction.getText();
        contentHandler.processingInstruction(s, processinginstruction);
    }

    public void writeClose(Element element)
        throws SAXException
    {
        endElement(element);
    }

    protected void writeContent(Branch branch, NamespaceStack namespacestack)
        throws SAXException
    {
        for (branch = branch.nodeIterator(); branch.hasNext();)
        {
            Object obj = branch.next();
            if (obj instanceof Element)
            {
                write((Element)obj, namespacestack);
            } else
            if (obj instanceof CharacterData)
            {
                if (obj instanceof Text)
                {
                    write(((Text)obj).getText());
                } else
                if (obj instanceof CDATA)
                {
                    write((CDATA)obj);
                } else
                if (obj instanceof Comment)
                {
                    write((Comment)obj);
                } else
                {
                    throw new SAXException("Invalid Node in DOM4J content: " + obj + " of type: " + obj.getClass());
                }
            } else
            if (obj instanceof String)
            {
                write((String)obj);
            } else
            if (obj instanceof Entity)
            {
                write((Entity)obj);
            } else
            if (obj instanceof ProcessingInstruction)
            {
                write((ProcessingInstruction)obj);
            } else
            if (obj instanceof Namespace)
            {
                write((Namespace)obj);
            } else
            {
                throw new SAXException("Invalid Node in DOM4J content: " + obj);
            }
        }

    }

    public void writeOpen(Element element)
        throws SAXException
    {
        startElement(element, null);
    }

}
