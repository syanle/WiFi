// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.IOException;
import org.dom4j.DocumentFactory;
import org.dom4j.ElementHandler;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

// Referenced classes of package org.dom4j.io:
//            SAXContentHandler, ElementStack, DispatchHandler, XMLWriter, 
//            SAXModifyElementHandler, SAXModifyException

class SAXModifyContentHandler extends SAXContentHandler
{

    private XMLWriter xmlWriter;

    public SAXModifyContentHandler()
    {
    }

    public SAXModifyContentHandler(DocumentFactory documentfactory)
    {
        super(documentfactory);
    }

    public SAXModifyContentHandler(DocumentFactory documentfactory, ElementHandler elementhandler)
    {
        super(documentfactory, elementhandler);
    }

    public SAXModifyContentHandler(DocumentFactory documentfactory, ElementHandler elementhandler, ElementStack elementstack)
    {
        super(documentfactory, elementhandler, elementstack);
    }

    private boolean activeHandlers()
    {
        return getElementStack().getDispatchHandler().getActiveHandlerCount() > 0;
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        super.characters(ac, i, j);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.characters(ac, i, j);
        }
    }

    public void comment(char ac[], int i, int j)
        throws SAXException
    {
        super.comment(ac, i, j);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.comment(ac, i, j);
        }
    }

    public void endCDATA()
        throws SAXException
    {
        super.endCDATA();
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.endCDATA();
        }
    }

    public void endDTD()
        throws SAXException
    {
        super.endDTD();
        if (xmlWriter != null)
        {
            xmlWriter.endDTD();
        }
    }

    public void endDocument()
        throws SAXException
    {
        super.endDocument();
        if (xmlWriter != null)
        {
            xmlWriter.endDocument();
        }
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        ElementHandler elementhandler = getElementStack().getDispatchHandler().getHandler(getElementStack().getPath());
        super.endElement(s, s1, s2);
        if (!activeHandlers() && xmlWriter != null)
        {
            if (elementhandler == null)
            {
                xmlWriter.endElement(s, s1, s2);
            } else
            if (elementhandler instanceof SAXModifyElementHandler)
            {
                s = ((SAXModifyElementHandler)elementhandler).getModifiedElement();
                try
                {
                    xmlWriter.write(s);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    throw new SAXModifyException(s);
                }
            }
        }
    }

    public void endEntity(String s)
        throws SAXException
    {
        super.endEntity(s);
        if (xmlWriter != null)
        {
            xmlWriter.endEntity(s);
        }
    }

    public void endPrefixMapping(String s)
        throws SAXException
    {
        super.endPrefixMapping(s);
        if (xmlWriter != null)
        {
            xmlWriter.endPrefixMapping(s);
        }
    }

    protected XMLWriter getXMLWriter()
    {
        return xmlWriter;
    }

    public void ignorableWhitespace(char ac[], int i, int j)
        throws SAXException
    {
        super.ignorableWhitespace(ac, i, j);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.ignorableWhitespace(ac, i, j);
        }
    }

    public void notationDecl(String s, String s1, String s2)
        throws SAXException
    {
        super.notationDecl(s, s1, s2);
        if (xmlWriter != null)
        {
            xmlWriter.notationDecl(s, s1, s2);
        }
    }

    public void processingInstruction(String s, String s1)
        throws SAXException
    {
        super.processingInstruction(s, s1);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.processingInstruction(s, s1);
        }
    }

    public void setDocumentLocator(Locator locator)
    {
        super.setDocumentLocator(locator);
        if (xmlWriter != null)
        {
            xmlWriter.setDocumentLocator(locator);
        }
    }

    public void setXMLWriter(XMLWriter xmlwriter)
    {
        xmlWriter = xmlwriter;
    }

    public void skippedEntity(String s)
        throws SAXException
    {
        super.skippedEntity(s);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.skippedEntity(s);
        }
    }

    public void startCDATA()
        throws SAXException
    {
        super.startCDATA();
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.startCDATA();
        }
    }

    public void startDTD(String s, String s1, String s2)
        throws SAXException
    {
        super.startDTD(s, s1, s2);
        if (xmlWriter != null)
        {
            xmlWriter.startDTD(s, s1, s2);
        }
    }

    public void startDocument()
        throws SAXException
    {
        super.startDocument();
        if (xmlWriter != null)
        {
            xmlWriter.startDocument();
        }
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        super.startElement(s, s1, s2, attributes);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.startElement(s, s1, s2, attributes);
        }
    }

    public void startEntity(String s)
        throws SAXException
    {
        super.startEntity(s);
        if (xmlWriter != null)
        {
            xmlWriter.startEntity(s);
        }
    }

    public void startPrefixMapping(String s, String s1)
        throws SAXException
    {
        super.startPrefixMapping(s, s1);
        if (xmlWriter != null)
        {
            xmlWriter.startPrefixMapping(s, s1);
        }
    }

    public void unparsedEntityDecl(String s, String s1, String s2, String s3)
        throws SAXException
    {
        super.unparsedEntityDecl(s, s1, s2, s3);
        if (!activeHandlers() && xmlWriter != null)
        {
            xmlWriter.unparsedEntityDecl(s, s1, s2, s3);
        }
    }
}
