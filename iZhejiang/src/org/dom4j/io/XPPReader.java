// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.xpp.ProxyXmlStartTag;
import org.gjt.xpp.XmlPullParser;
import org.gjt.xpp.XmlPullParserException;
import org.gjt.xpp.XmlPullParserFactory;

// Referenced classes of package org.dom4j.io:
//            DispatchHandler

public class XPPReader
{

    private DispatchHandler dispatchHandler;
    private DocumentFactory factory;
    private XmlPullParserFactory xppFactory;
    private XmlPullParser xppParser;

    public XPPReader()
    {
    }

    public XPPReader(DocumentFactory documentfactory)
    {
        factory = documentfactory;
    }

    public void addHandler(String s, ElementHandler elementhandler)
    {
        getDispatchHandler().addHandler(s, elementhandler);
    }

    protected Reader createReader(InputStream inputstream)
        throws IOException
    {
        return new BufferedReader(new InputStreamReader(inputstream));
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

    public XmlPullParserFactory getXPPFactory()
        throws XmlPullParserException
    {
        if (xppFactory == null)
        {
            xppFactory = XmlPullParserFactory.newInstance();
        }
        return xppFactory;
    }

    public XmlPullParser getXPPParser()
        throws XmlPullParserException
    {
        if (xppParser == null)
        {
            xppParser = getXPPFactory().newPullParser();
        }
        return xppParser;
    }

    protected Document parseDocument()
        throws DocumentException, IOException, XmlPullParserException
    {
        Document document = getDocumentFactory().createDocument();
        Element element = null;
        XmlPullParser xmlpullparser = getXPPParser();
        xmlpullparser.setNamespaceAware(true);
        ProxyXmlStartTag proxyxmlstarttag = new ProxyXmlStartTag();
        org.gjt.xpp.XmlEndTag xmlendtag = xppFactory.newEndTag();
        do
        {
            byte byte0 = xmlpullparser.next();
            switch (byte0)
            {
            default:
                throw new DocumentException("Error: unknown type: " + byte0);

            case 2: // '\002'
                xmlpullparser.readStartTag(proxyxmlstarttag);
                Element element1 = proxyxmlstarttag.getElement();
                if (element != null)
                {
                    element.add(element1);
                } else
                {
                    document.add(element1);
                }
                element = element1;
                break;

            case 3: // '\003'
                xmlpullparser.readEndTag(xmlendtag);
                if (element != null)
                {
                    element = element.getParent();
                }
                break;

            case 4: // '\004'
                String s = xmlpullparser.readContent();
                if (element != null)
                {
                    element.addText(s);
                } else
                {
                    throw new DocumentException("Cannot have text content outside of the root document");
                }
                break;

            case 1: // '\001'
                return document;
            }
        } while (true);
    }

    public Document read(File file)
        throws DocumentException, IOException, XmlPullParserException
    {
        String s = file.getAbsolutePath();
        return read(((Reader) (new BufferedReader(new FileReader(file)))), s);
    }

    public Document read(InputStream inputstream)
        throws DocumentException, IOException, XmlPullParserException
    {
        return read(createReader(inputstream));
    }

    public Document read(InputStream inputstream, String s)
        throws DocumentException, IOException, XmlPullParserException
    {
        return read(createReader(inputstream), s);
    }

    public Document read(Reader reader)
        throws DocumentException, IOException, XmlPullParserException
    {
        getXPPParser().setInput(reader);
        return parseDocument();
    }

    public Document read(Reader reader, String s)
        throws DocumentException, IOException, XmlPullParserException
    {
        reader = read(reader);
        reader.setName(s);
        return reader;
    }

    public Document read(String s)
        throws DocumentException, IOException, XmlPullParserException
    {
        if (s.indexOf(':') >= 0)
        {
            return read(new URL(s));
        } else
        {
            return read(new File(s));
        }
    }

    public Document read(URL url)
        throws DocumentException, IOException, XmlPullParserException
    {
        String s = url.toExternalForm();
        return read(createReader(url.openStream()), s);
    }

    public Document read(char ac[])
        throws DocumentException, IOException, XmlPullParserException
    {
        getXPPParser().setInput(ac);
        return parseDocument();
    }

    public void removeHandler(String s)
    {
        getDispatchHandler().removeHandler(s);
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

    public void setXPPFactory(XmlPullParserFactory xmlpullparserfactory)
    {
        xppFactory = xmlpullparserfactory;
    }
}
