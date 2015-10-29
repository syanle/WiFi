// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.File;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

// Referenced classes of package org.dom4j.io:
//            SAXModifyReader, SAXHelper, PruningDispatchHandler, SAXModifyElementHandler, 
//            ElementModifier, SAXModifyException, SAXReader, XMLWriter

public class SAXModifier
{

    private HashMap modifiers;
    private SAXModifyReader modifyReader;
    private boolean pruneElements;
    private XMLReader xmlReader;
    private XMLWriter xmlWriter;

    public SAXModifier()
    {
        modifiers = new HashMap();
    }

    public SAXModifier(XMLReader xmlreader)
    {
        modifiers = new HashMap();
        xmlReader = xmlreader;
    }

    public SAXModifier(XMLReader xmlreader, boolean flag)
    {
        modifiers = new HashMap();
        xmlReader = xmlreader;
    }

    public SAXModifier(boolean flag)
    {
        modifiers = new HashMap();
        pruneElements = flag;
    }

    private SAXModifyReader getSAXModifyReader()
    {
        if (modifyReader == null)
        {
            modifyReader = new SAXModifyReader();
        }
        return modifyReader;
    }

    private XMLReader getXMLReader()
        throws SAXException
    {
        if (xmlReader == null)
        {
            xmlReader = SAXHelper.createXMLReader(false);
        }
        return xmlReader;
    }

    private SAXReader installModifyReader()
        throws DocumentException
    {
        Object obj;
        try
        {
            obj = getSAXModifyReader();
            if (isPruneElements())
            {
                modifyReader.setDispatchHandler(new PruningDispatchHandler());
            }
            ((SAXModifyReader) (obj)).resetHandlers();
            java.util.Map.Entry entry;
            SAXModifyElementHandler saxmodifyelementhandler;
            for (Iterator iterator = modifiers.entrySet().iterator(); iterator.hasNext(); ((SAXModifyReader) (obj)).addHandler((String)entry.getKey(), saxmodifyelementhandler))
            {
                entry = (java.util.Map.Entry)iterator.next();
                saxmodifyelementhandler = new SAXModifyElementHandler((ElementModifier)entry.getValue());
            }

        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new DocumentException(((SAXException) (obj)).getMessage(), ((Throwable) (obj)));
        }
        ((SAXModifyReader) (obj)).setXMLWriter(getXMLWriter());
        ((SAXModifyReader) (obj)).setXMLReader(getXMLReader());
        return ((SAXReader) (obj));
    }

    public void addModifier(String s, ElementModifier elementmodifier)
    {
        modifiers.put(s, elementmodifier);
    }

    public DocumentFactory getDocumentFactory()
    {
        return getSAXModifyReader().getDocumentFactory();
    }

    public XMLWriter getXMLWriter()
    {
        return xmlWriter;
    }

    public boolean isPruneElements()
    {
        return pruneElements;
    }

    public Document modify(File file)
        throws DocumentException
    {
        try
        {
            file = installModifyReader().read(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file = file.getCause();
            throw new DocumentException(file.getMessage(), file);
        }
        return file;
    }

    public Document modify(InputStream inputstream)
        throws DocumentException
    {
        try
        {
            inputstream = installModifyReader().read(inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream = inputstream.getCause();
            throw new DocumentException(inputstream.getMessage(), inputstream);
        }
        return inputstream;
    }

    public Document modify(InputStream inputstream, String s)
        throws DocumentException
    {
        try
        {
            inputstream = installModifyReader().read(inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream = inputstream.getCause();
            throw new DocumentException(inputstream.getMessage(), inputstream);
        }
        return inputstream;
    }

    public Document modify(Reader reader)
        throws DocumentException
    {
        try
        {
            reader = installModifyReader().read(reader);
        }
        // Misplaced declaration of an exception variable
        catch (Reader reader)
        {
            reader = reader.getCause();
            throw new DocumentException(reader.getMessage(), reader);
        }
        return reader;
    }

    public Document modify(Reader reader, String s)
        throws DocumentException
    {
        try
        {
            reader = installModifyReader().read(reader);
        }
        // Misplaced declaration of an exception variable
        catch (Reader reader)
        {
            reader = reader.getCause();
            throw new DocumentException(reader.getMessage(), reader);
        }
        return reader;
    }

    public Document modify(String s)
        throws DocumentException
    {
        try
        {
            s = installModifyReader().read(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = s.getCause();
            throw new DocumentException(s.getMessage(), s);
        }
        return s;
    }

    public Document modify(URL url)
        throws DocumentException
    {
        try
        {
            url = installModifyReader().read(url);
        }
        // Misplaced declaration of an exception variable
        catch (URL url)
        {
            url = url.getCause();
            throw new DocumentException(url.getMessage(), url);
        }
        return url;
    }

    public Document modify(InputSource inputsource)
        throws DocumentException
    {
        try
        {
            inputsource = installModifyReader().read(inputsource);
        }
        // Misplaced declaration of an exception variable
        catch (InputSource inputsource)
        {
            inputsource = inputsource.getCause();
            throw new DocumentException(inputsource.getMessage(), inputsource);
        }
        return inputsource;
    }

    public void removeModifier(String s)
    {
        modifiers.remove(s);
        getSAXModifyReader().removeHandler(s);
    }

    public void resetModifiers()
    {
        modifiers.clear();
        getSAXModifyReader().resetHandlers();
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        getSAXModifyReader().setDocumentFactory(documentfactory);
    }

    public void setXMLWriter(XMLWriter xmlwriter)
    {
        xmlWriter = xmlwriter;
    }
}
