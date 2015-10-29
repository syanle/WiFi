// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import javax.xml.bind.Element;
import javax.xml.bind.JAXBException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;
import org.xml.sax.SAXException;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBSupport

public class JAXBWriter extends JAXBSupport
{

    private OutputFormat outputFormat;
    private XMLWriter xmlWriter;

    public JAXBWriter(String s)
    {
        super(s);
        outputFormat = new OutputFormat();
    }

    public JAXBWriter(String s, ClassLoader classloader)
    {
        super(s, classloader);
    }

    public JAXBWriter(String s, ClassLoader classloader, OutputFormat outputformat)
    {
        super(s, classloader);
        outputFormat = outputformat;
    }

    public JAXBWriter(String s, OutputFormat outputformat)
    {
        super(s);
        outputFormat = outputformat;
    }

    private XMLWriter getWriter()
        throws IOException
    {
        if (xmlWriter == null)
        {
            if (outputFormat != null)
            {
                xmlWriter = new XMLWriter(outputFormat);
            } else
            {
                xmlWriter = new XMLWriter();
            }
        }
        return xmlWriter;
    }

    public void endDocument()
        throws IOException, SAXException
    {
        getWriter().endDocument();
    }

    public OutputFormat getOutputFormat()
    {
        return outputFormat;
    }

    public void setOutput(File file)
        throws IOException
    {
        getWriter().setOutputStream(new FileOutputStream(file));
    }

    public void setOutput(OutputStream outputstream)
        throws IOException
    {
        getWriter().setOutputStream(outputstream);
    }

    public void setOutput(Writer writer)
        throws IOException
    {
        getWriter().setWriter(writer);
    }

    public void startDocument()
        throws IOException, SAXException
    {
        getWriter().startDocument();
    }

    public void write(Element element)
        throws IOException, JAXBException
    {
        getWriter().write(marshal(element));
    }

    public void writeClose(Element element)
        throws IOException, JAXBException
    {
        getWriter().writeClose(marshal(element));
    }

    public void writeCloseElement(org.dom4j.Element element)
        throws IOException
    {
        getWriter().writeClose(element);
    }

    public void writeElement(org.dom4j.Element element)
        throws IOException
    {
        getWriter().write(element);
    }

    public void writeOpen(Element element)
        throws IOException, JAXBException
    {
        getWriter().writeOpen(marshal(element));
    }

    public void writeOpenElement(org.dom4j.Element element)
        throws IOException
    {
        getWriter().writeOpen(element);
    }
}
