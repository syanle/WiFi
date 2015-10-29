// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.IOException;
import org.dom4j.Document;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.dom4j.io:
//            SAXHelper, DocumentInputSource

public class SAXValidator
{

    private ErrorHandler errorHandler;
    private XMLReader xmlReader;

    public SAXValidator()
    {
    }

    public SAXValidator(XMLReader xmlreader)
    {
        xmlReader = xmlreader;
    }

    protected void configureReader()
        throws SAXException
    {
        if (xmlReader.getContentHandler() == null)
        {
            xmlReader.setContentHandler(new DefaultHandler());
        }
        xmlReader.setFeature("http://xml.org/sax/features/validation", true);
        xmlReader.setFeature("http://xml.org/sax/features/namespaces", true);
        xmlReader.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
    }

    protected XMLReader createXMLReader()
        throws SAXException
    {
        return SAXHelper.createXMLReader(true);
    }

    public ErrorHandler getErrorHandler()
    {
        return errorHandler;
    }

    public XMLReader getXMLReader()
        throws SAXException
    {
        if (xmlReader == null)
        {
            xmlReader = createXMLReader();
            configureReader();
        }
        return xmlReader;
    }

    public void setErrorHandler(ErrorHandler errorhandler)
    {
        errorHandler = errorhandler;
    }

    public void setXMLReader(XMLReader xmlreader)
        throws SAXException
    {
        xmlReader = xmlreader;
        configureReader();
    }

    public void validate(Document document)
        throws SAXException
    {
        XMLReader xmlreader;
        if (document == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        xmlreader = getXMLReader();
        if (errorHandler != null)
        {
            xmlreader.setErrorHandler(errorHandler);
        }
        xmlreader.parse(new DocumentInputSource(document));
        return;
        document;
        throw new RuntimeException("Caught and exception that should never happen: " + document);
    }
}
