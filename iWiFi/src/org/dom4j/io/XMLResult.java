// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import javax.xml.transform.sax.SAXResult;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

// Referenced classes of package org.dom4j.io:
//            XMLWriter, OutputFormat

public class XMLResult extends SAXResult
{

    private XMLWriter xmlWriter;

    public XMLResult()
    {
        this(new XMLWriter());
    }

    public XMLResult(OutputStream outputstream)
        throws UnsupportedEncodingException
    {
        this(new XMLWriter(outputstream));
    }

    public XMLResult(OutputStream outputstream, OutputFormat outputformat)
        throws UnsupportedEncodingException
    {
        this(new XMLWriter(outputstream, outputformat));
    }

    public XMLResult(Writer writer)
    {
        this(new XMLWriter(writer));
    }

    public XMLResult(Writer writer, OutputFormat outputformat)
    {
        this(new XMLWriter(writer, outputformat));
    }

    public XMLResult(XMLWriter xmlwriter)
    {
        super(xmlwriter);
        xmlWriter = xmlwriter;
        setLexicalHandler(xmlwriter);
    }

    public ContentHandler getHandler()
    {
        return xmlWriter;
    }

    public LexicalHandler getLexicalHandler()
    {
        return xmlWriter;
    }

    public XMLWriter getXMLWriter()
    {
        return xmlWriter;
    }

    public void setXMLWriter(XMLWriter xmlwriter)
    {
        xmlWriter = xmlwriter;
        setHandler(xmlWriter);
        setLexicalHandler(xmlWriter);
    }
}
