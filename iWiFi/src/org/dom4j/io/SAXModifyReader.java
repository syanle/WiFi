// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import org.dom4j.DocumentFactory;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package org.dom4j.io:
//            SAXReader, SAXModifyContentHandler, XMLWriter, SAXContentHandler

class SAXModifyReader extends SAXReader
{

    private boolean pruneElements;
    private XMLWriter xmlWriter;

    public SAXModifyReader()
    {
    }

    public SAXModifyReader(String s)
        throws SAXException
    {
        super(s);
    }

    public SAXModifyReader(String s, boolean flag)
        throws SAXException
    {
        super(s, flag);
    }

    public SAXModifyReader(DocumentFactory documentfactory)
    {
        super(documentfactory);
    }

    public SAXModifyReader(DocumentFactory documentfactory, boolean flag)
    {
        super(documentfactory, flag);
    }

    public SAXModifyReader(XMLReader xmlreader)
    {
        super(xmlreader);
    }

    public SAXModifyReader(XMLReader xmlreader, boolean flag)
    {
        super(xmlreader, flag);
    }

    public SAXModifyReader(boolean flag)
    {
        super(flag);
    }

    protected SAXContentHandler createContentHandler(XMLReader xmlreader)
    {
        xmlreader = new SAXModifyContentHandler(getDocumentFactory(), getDispatchHandler());
        xmlreader.setXMLWriter(xmlWriter);
        return xmlreader;
    }

    protected XMLWriter getXMLWriter()
    {
        return xmlWriter;
    }

    public boolean isPruneElements()
    {
        return pruneElements;
    }

    public void setPruneElements(boolean flag)
    {
        pruneElements = flag;
    }

    public void setXMLWriter(XMLWriter xmlwriter)
    {
        xmlWriter = xmlwriter;
    }
}
