// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.BufferedReader;
import java.io.CharArrayReader;
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
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package org.dom4j.io:
//            DispatchHandler

public class XPP3Reader
{

    private DispatchHandler dispatchHandler;
    private DocumentFactory factory;
    private XmlPullParserFactory xppFactory;
    private XmlPullParser xppParser;

    public XPP3Reader()
    {
    }

    public XPP3Reader(DocumentFactory documentfactory)
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
        xppFactory.setNamespaceAware(true);
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
        DocumentFactory documentfactory = getDocumentFactory();
        Document document = documentfactory.createDocument();
        Element element = null;
        XmlPullParser xmlpullparser = getXPPParser();
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        do
        {
            switch (xmlpullparser.nextToken())
            {
            case 1: // '\001'
                return document;

            case 8: // '\b'
                String s = xmlpullparser.getText();
                int i = s.indexOf(" ");
                if (i >= 0)
                {
                    document.addProcessingInstruction(s.substring(0, i), s.substring(i + 1));
                } else
                {
                    document.addProcessingInstruction(s, "");
                }
                break;

            case 9: // '\t'
                if (element != null)
                {
                    element.addComment(xmlpullparser.getText());
                } else
                {
                    document.addComment(xmlpullparser.getText());
                }
                break;

            case 5: // '\005'
                if (element != null)
                {
                    element.addCDATA(xmlpullparser.getText());
                } else
                {
                    throw new DocumentException("Cannot have text content outside of the root document");
                }
                break;

            case 2: // '\002'
                org.dom4j.QName qname;
                Element element1;
                int j;
                if (xmlpullparser.getPrefix() == null)
                {
                    qname = documentfactory.createQName(xmlpullparser.getName(), xmlpullparser.getNamespace());
                } else
                {
                    qname = documentfactory.createQName(xmlpullparser.getName(), xmlpullparser.getPrefix(), xmlpullparser.getNamespace());
                }
                element1 = documentfactory.createElement(qname);
                j = xmlpullparser.getNamespaceCount(xmlpullparser.getDepth() - 1);
                for (int k = xmlpullparser.getNamespaceCount(xmlpullparser.getDepth()); j < k; j++)
                {
                    if (xmlpullparser.getNamespacePrefix(j) != null)
                    {
                        element1.addNamespace(xmlpullparser.getNamespacePrefix(j), xmlpullparser.getNamespaceUri(j));
                    }
                }

                j = 0;
                while (j < xmlpullparser.getAttributeCount()) 
                {
                    org.dom4j.QName qname1;
                    if (xmlpullparser.getAttributePrefix(j) == null)
                    {
                        qname1 = documentfactory.createQName(xmlpullparser.getAttributeName(j));
                    } else
                    {
                        qname1 = documentfactory.createQName(xmlpullparser.getAttributeName(j), xmlpullparser.getAttributePrefix(j), xmlpullparser.getAttributeNamespace(j));
                    }
                    element1.addAttribute(qname1, xmlpullparser.getAttributeValue(j));
                    j++;
                }
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
                if (element != null)
                {
                    element = element.getParent();
                }
                break;

            case 4: // '\004'
                String s1 = xmlpullparser.getText();
                if (element != null)
                {
                    element.addText(s1);
                } else
                {
                    throw new DocumentException("Cannot have text content outside of the root document");
                }
                break;
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
        getXPPParser().setInput(new CharArrayReader(ac));
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
