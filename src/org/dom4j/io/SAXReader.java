// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.ElementHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

// Referenced classes of package org.dom4j.io:
//            DispatchHandler, SAXHelper, SAXContentHandler

public class SAXReader
{
    protected static class SAXEntityResolver
        implements EntityResolver, Serializable
    {

        protected String uriPrefix;

        public InputSource resolveEntity(String s, String s1)
        {
            s = s1;
            if (s1 != null)
            {
                s = s1;
                if (s1.length() > 0)
                {
                    s = s1;
                    if (uriPrefix != null)
                    {
                        s = s1;
                        if (s1.indexOf(':') <= 0)
                        {
                            s = uriPrefix + s1;
                        }
                    }
                }
            }
            return new InputSource(s);
        }

        public SAXEntityResolver(String s)
        {
            uriPrefix = s;
        }
    }


    private static final String SAX_DECL_HANDLER = "http://xml.org/sax/properties/declaration-handler";
    private static final String SAX_LEXICALHANDLER = "http://xml.org/sax/handlers/LexicalHandler";
    private static final String SAX_LEXICAL_HANDLER = "http://xml.org/sax/properties/lexical-handler";
    private static final String SAX_NAMESPACES = "http://xml.org/sax/features/namespaces";
    private static final String SAX_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    private static final String SAX_STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    private DispatchHandler dispatchHandler;
    private String encoding;
    private EntityResolver entityResolver;
    private ErrorHandler errorHandler;
    private DocumentFactory factory;
    private boolean ignoreComments;
    private boolean includeExternalDTDDeclarations;
    private boolean includeInternalDTDDeclarations;
    private boolean mergeAdjacentText;
    private boolean stringInternEnabled;
    private boolean stripWhitespaceText;
    private boolean validating;
    private XMLFilter xmlFilter;
    private XMLReader xmlReader;

    public SAXReader()
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
    }

    public SAXReader(String s)
        throws SAXException
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        if (s != null)
        {
            xmlReader = XMLReaderFactory.createXMLReader(s);
        }
    }

    public SAXReader(String s, boolean flag)
        throws SAXException
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        if (s != null)
        {
            xmlReader = XMLReaderFactory.createXMLReader(s);
        }
        validating = flag;
    }

    public SAXReader(DocumentFactory documentfactory)
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        factory = documentfactory;
    }

    public SAXReader(DocumentFactory documentfactory, boolean flag)
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        factory = documentfactory;
        validating = flag;
    }

    public SAXReader(XMLReader xmlreader)
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        xmlReader = xmlreader;
    }

    public SAXReader(XMLReader xmlreader, boolean flag)
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        xmlReader = xmlreader;
        validating = flag;
    }

    public SAXReader(boolean flag)
    {
        stringInternEnabled = true;
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        mergeAdjacentText = false;
        stripWhitespaceText = false;
        ignoreComments = false;
        encoding = null;
        validating = flag;
    }

    public void addHandler(String s, ElementHandler elementhandler)
    {
        getDispatchHandler().addHandler(s, elementhandler);
    }

    protected void configureReader(XMLReader xmlreader, DefaultHandler defaulthandler)
        throws DocumentException
    {
        SAXHelper.setParserProperty(xmlreader, "http://xml.org/sax/handlers/LexicalHandler", defaulthandler);
        SAXHelper.setParserProperty(xmlreader, "http://xml.org/sax/properties/lexical-handler", defaulthandler);
        if (includeInternalDTDDeclarations || includeExternalDTDDeclarations)
        {
            SAXHelper.setParserProperty(xmlreader, "http://xml.org/sax/properties/declaration-handler", defaulthandler);
        }
        SAXHelper.setParserFeature(xmlreader, "http://xml.org/sax/features/namespaces", true);
        SAXHelper.setParserFeature(xmlreader, "http://xml.org/sax/features/namespace-prefixes", false);
        SAXHelper.setParserFeature(xmlreader, "http://xml.org/sax/features/string-interning", isStringInternEnabled());
        SAXHelper.setParserFeature(xmlreader, "http://xml.org/sax/features/use-locator2", true);
        xmlreader.setFeature("http://xml.org/sax/features/validation", isValidating());
        if (errorHandler != null)
        {
            xmlreader.setErrorHandler(errorHandler);
            return;
        }
        try
        {
            xmlreader.setErrorHandler(defaulthandler);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DefaultHandler defaulthandler) { }
        if (isValidating())
        {
            throw new DocumentException("Validation not supported for XMLReader: " + xmlreader, defaulthandler);
        } else
        {
            return;
        }
    }

    protected SAXContentHandler createContentHandler(XMLReader xmlreader)
    {
        return new SAXContentHandler(getDocumentFactory(), dispatchHandler);
    }

    protected EntityResolver createDefaultEntityResolver(String s)
    {
        Object obj = null;
        String s1 = obj;
        if (s != null)
        {
            s1 = obj;
            if (s.length() > 0)
            {
                int i = s.lastIndexOf('/');
                s1 = obj;
                if (i > 0)
                {
                    s1 = s.substring(0, i + 1);
                }
            }
        }
        return new SAXEntityResolver(s1);
    }

    protected XMLReader createXMLReader()
        throws SAXException
    {
        return SAXHelper.createXMLReader(isValidating());
    }

    protected DispatchHandler getDispatchHandler()
    {
        if (dispatchHandler == null)
        {
            dispatchHandler = new DispatchHandler();
        }
        return dispatchHandler;
    }

    public DocumentFactory getDocumentFactory()
    {
        if (factory == null)
        {
            factory = DocumentFactory.getInstance();
        }
        return factory;
    }

    public String getEncoding()
    {
        return encoding;
    }

    public EntityResolver getEntityResolver()
    {
        return entityResolver;
    }

    public ErrorHandler getErrorHandler()
    {
        return errorHandler;
    }

    public XMLFilter getXMLFilter()
    {
        return xmlFilter;
    }

    public XMLReader getXMLReader()
        throws SAXException
    {
        if (xmlReader == null)
        {
            xmlReader = createXMLReader();
        }
        return xmlReader;
    }

    protected XMLReader installXMLFilter(XMLReader xmlreader)
    {
        XMLFilter xmlfilter1 = getXMLFilter();
        if (xmlfilter1 != null)
        {
            XMLFilter xmlfilter = xmlfilter1;
            do
            {
                XMLReader xmlreader1 = xmlfilter.getParent();
                if (xmlreader1 instanceof XMLFilter)
                {
                    xmlfilter = (XMLFilter)xmlreader1;
                } else
                {
                    xmlfilter.setParent(xmlreader);
                    return xmlfilter1;
                }
            } while (true);
        } else
        {
            return xmlreader;
        }
    }

    public boolean isIgnoreComments()
    {
        return ignoreComments;
    }

    public boolean isIncludeExternalDTDDeclarations()
    {
        return includeExternalDTDDeclarations;
    }

    public boolean isIncludeInternalDTDDeclarations()
    {
        return includeInternalDTDDeclarations;
    }

    public boolean isMergeAdjacentText()
    {
        return mergeAdjacentText;
    }

    public boolean isStringInternEnabled()
    {
        return stringInternEnabled;
    }

    public boolean isStripWhitespaceText()
    {
        return stripWhitespaceText;
    }

    public boolean isValidating()
    {
        return validating;
    }

    public Document read(File file)
        throws DocumentException
    {
        InputSource inputsource;
        StringBuffer stringbuffer;
        try
        {
            inputsource = new InputSource(new FileInputStream(file));
            if (encoding != null)
            {
                inputsource.setEncoding(encoding);
            }
            file = file.getAbsolutePath();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            throw new DocumentException(file.getMessage(), file);
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        stringbuffer = new StringBuffer("file://");
        if (!file.startsWith(File.separator))
        {
            stringbuffer.append("/");
        }
        stringbuffer.append(file.replace('\\', '/'));
        inputsource.setSystemId(stringbuffer.toString());
        file = read(inputsource);
        return file;
    }

    public Document read(InputStream inputstream)
        throws DocumentException
    {
        inputstream = new InputSource(inputstream);
        if (encoding != null)
        {
            inputstream.setEncoding(encoding);
        }
        return read(((InputSource) (inputstream)));
    }

    public Document read(InputStream inputstream, String s)
        throws DocumentException
    {
        inputstream = new InputSource(inputstream);
        inputstream.setSystemId(s);
        if (encoding != null)
        {
            inputstream.setEncoding(encoding);
        }
        return read(((InputSource) (inputstream)));
    }

    public Document read(Reader reader)
        throws DocumentException
    {
        reader = new InputSource(reader);
        if (encoding != null)
        {
            reader.setEncoding(encoding);
        }
        return read(((InputSource) (reader)));
    }

    public Document read(Reader reader, String s)
        throws DocumentException
    {
        reader = new InputSource(reader);
        reader.setSystemId(s);
        if (encoding != null)
        {
            reader.setEncoding(encoding);
        }
        return read(((InputSource) (reader)));
    }

    public Document read(String s)
        throws DocumentException
    {
        s = new InputSource(s);
        if (encoding != null)
        {
            s.setEncoding(encoding);
        }
        return read(((InputSource) (s)));
    }

    public Document read(URL url)
        throws DocumentException
    {
        url = new InputSource(url.toExternalForm());
        if (encoding != null)
        {
            url.setEncoding(encoding);
        }
        return read(((InputSource) (url)));
    }

    public Document read(InputSource inputsource)
        throws DocumentException
    {
        EntityResolver entityresolver;
        Object obj;
        XMLReader xmlreader;
        boolean flag;
        boolean flag1;
        try
        {
            xmlreader = installXMLFilter(getXMLReader());
            obj = entityResolver;
        }
        catch (Exception exception)
        {
            if (exception instanceof SAXParseException)
            {
                SAXParseException saxparseexception = (SAXParseException)exception;
                String s = saxparseexception.getSystemId();
                inputsource = s;
                if (s == null)
                {
                    inputsource = "";
                }
                throw new DocumentException("Error on line " + saxparseexception.getLineNumber() + " of document " + inputsource + " : " + saxparseexception.getMessage(), exception);
            } else
            {
                throw new DocumentException(exception.getMessage(), exception);
            }
        }
        entityresolver = ((EntityResolver) (obj));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        entityresolver = createDefaultEntityResolver(inputsource.getSystemId());
        entityResolver = entityresolver;
        xmlreader.setEntityResolver(entityresolver);
        obj = createContentHandler(xmlreader);
        ((SAXContentHandler) (obj)).setEntityResolver(entityresolver);
        ((SAXContentHandler) (obj)).setInputSource(inputsource);
        flag = isIncludeInternalDTDDeclarations();
        flag1 = isIncludeExternalDTDDeclarations();
        ((SAXContentHandler) (obj)).setIncludeInternalDTDDeclarations(flag);
        ((SAXContentHandler) (obj)).setIncludeExternalDTDDeclarations(flag1);
        ((SAXContentHandler) (obj)).setMergeAdjacentText(isMergeAdjacentText());
        ((SAXContentHandler) (obj)).setStripWhitespaceText(isStripWhitespaceText());
        ((SAXContentHandler) (obj)).setIgnoreComments(isIgnoreComments());
        xmlreader.setContentHandler(((org.xml.sax.ContentHandler) (obj)));
        configureReader(xmlreader, ((DefaultHandler) (obj)));
        xmlreader.parse(inputsource);
        inputsource = ((SAXContentHandler) (obj)).getDocument();
        return inputsource;
    }

    public void removeHandler(String s)
    {
        getDispatchHandler().removeHandler(s);
    }

    public void resetHandlers()
    {
        getDispatchHandler().resetHandlers();
    }

    public void setDefaultHandler(ElementHandler elementhandler)
    {
        getDispatchHandler().setDefaultHandler(elementhandler);
    }

    protected void setDispatchHandler(DispatchHandler dispatchhandler)
    {
        dispatchHandler = dispatchhandler;
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        factory = documentfactory;
    }

    public void setEncoding(String s)
    {
        encoding = s;
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
        throws SAXException
    {
        getXMLReader().setFeature(s, flag);
    }

    public void setIgnoreComments(boolean flag)
    {
        ignoreComments = flag;
    }

    public void setIncludeExternalDTDDeclarations(boolean flag)
    {
        includeExternalDTDDeclarations = flag;
    }

    public void setIncludeInternalDTDDeclarations(boolean flag)
    {
        includeInternalDTDDeclarations = flag;
    }

    public void setMergeAdjacentText(boolean flag)
    {
        mergeAdjacentText = flag;
    }

    public void setProperty(String s, Object obj)
        throws SAXException
    {
        getXMLReader().setProperty(s, obj);
    }

    public void setStringInternEnabled(boolean flag)
    {
        stringInternEnabled = flag;
    }

    public void setStripWhitespaceText(boolean flag)
    {
        stripWhitespaceText = flag;
    }

    public void setValidation(boolean flag)
    {
        validating = flag;
    }

    public void setXMLFilter(XMLFilter xmlfilter)
    {
        xmlFilter = xmlfilter;
    }

    public void setXMLReader(XMLReader xmlreader)
    {
        xmlReader = xmlreader;
    }

    public void setXMLReaderClassName(String s)
        throws SAXException
    {
        setXMLReader(XMLReaderFactory.createXMLReader(s));
    }
}
