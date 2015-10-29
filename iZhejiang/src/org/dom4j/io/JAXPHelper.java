// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.w3c.dom.Document;
import org.xml.sax.XMLReader;

class JAXPHelper
{

    protected JAXPHelper()
    {
    }

    public static Document createDocument(boolean flag, boolean flag1)
        throws Exception
    {
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        documentbuilderfactory.setValidating(flag);
        documentbuilderfactory.setNamespaceAware(flag1);
        return documentbuilderfactory.newDocumentBuilder().newDocument();
    }

    public static XMLReader createXMLReader(boolean flag, boolean flag1)
        throws Exception
    {
        SAXParserFactory saxparserfactory = SAXParserFactory.newInstance();
        saxparserfactory.setValidating(flag);
        saxparserfactory.setNamespaceAware(flag1);
        return saxparserfactory.newSAXParser().getXMLReader();
    }
}
