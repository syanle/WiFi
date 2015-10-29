// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import javax.xml.transform.sax.SAXSource;
import org.dom4j.Document;
import org.dom4j.Node;
import org.xml.sax.InputSource;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;

// Referenced classes of package org.dom4j.io:
//            SAXWriter, DocumentInputSource

public class DocumentSource extends SAXSource
{

    public static final String DOM4J_FEATURE = "http://org.dom4j.io.DoucmentSource/feature";
    private XMLReader xmlReader;

    public DocumentSource(Document document)
    {
        xmlReader = new SAXWriter();
        setDocument(document);
    }

    public DocumentSource(Node node)
    {
        xmlReader = new SAXWriter();
        setDocument(node.getDocument());
    }

    public Document getDocument()
    {
        return ((DocumentInputSource)getInputSource()).getDocument();
    }

    public XMLReader getXMLReader()
    {
        return xmlReader;
    }

    public void setDocument(Document document)
    {
        super.setInputSource(new DocumentInputSource(document));
    }

    public void setInputSource(InputSource inputsource)
        throws UnsupportedOperationException
    {
        if (inputsource instanceof DocumentInputSource)
        {
            super.setInputSource((DocumentInputSource)inputsource);
            return;
        } else
        {
            throw new UnsupportedOperationException();
        }
    }

    public void setXMLReader(XMLReader xmlreader)
        throws UnsupportedOperationException
    {
        if (xmlreader instanceof SAXWriter)
        {
            xmlReader = (SAXWriter)xmlreader;
            return;
        }
        if (xmlreader instanceof XMLFilter)
        {
            xmlreader = (XMLFilter)xmlreader;
            do
            {
                XMLReader xmlreader1 = xmlreader.getParent();
                if (xmlreader1 instanceof XMLFilter)
                {
                    xmlreader = (XMLFilter)xmlreader1;
                } else
                {
                    xmlreader.setParent(xmlReader);
                    xmlReader = xmlreader;
                    return;
                }
            } while (true);
        } else
        {
            throw new UnsupportedOperationException();
        }
    }
}
