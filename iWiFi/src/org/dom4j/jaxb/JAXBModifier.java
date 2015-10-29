// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.ElementModifier;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXModifier;
import org.dom4j.io.XMLWriter;
import org.xml.sax.InputSource;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBSupport, JAXBObjectModifier, JAXBRuntimeException

public class JAXBModifier extends JAXBSupport
{
    private class JAXBElementModifier
        implements ElementModifier
    {

        private JAXBModifier jaxbModifier;
        private JAXBObjectModifier objectModifier;
        private final JAXBModifier this$0;

        public Element modifyElement(Element element)
            throws Exception
        {
            element = jaxbModifier.unmarshal(element);
            element = objectModifier.modifyObject(element);
            return jaxbModifier.marshal(element);
        }

        public JAXBElementModifier(JAXBModifier jaxbmodifier1, JAXBObjectModifier jaxbobjectmodifier)
        {
            this$0 = JAXBModifier.this;
            jaxbModifier = jaxbmodifier1;
            objectModifier = jaxbobjectmodifier;
        }
    }


    private SAXModifier modifier;
    private HashMap modifiers;
    private OutputFormat outputFormat;
    private boolean pruneElements;
    private XMLWriter xmlWriter;

    public JAXBModifier(String s)
    {
        super(s);
        modifiers = new HashMap();
        outputFormat = new OutputFormat();
    }

    public JAXBModifier(String s, ClassLoader classloader)
    {
        super(s, classloader);
        modifiers = new HashMap();
        outputFormat = new OutputFormat();
    }

    public JAXBModifier(String s, ClassLoader classloader, OutputFormat outputformat)
    {
        super(s, classloader);
        modifiers = new HashMap();
        outputFormat = outputformat;
    }

    public JAXBModifier(String s, OutputFormat outputformat)
    {
        super(s);
        modifiers = new HashMap();
        outputFormat = outputformat;
    }

    private XMLWriter createXMLWriter()
        throws IOException
    {
        if (xmlWriter == null)
        {
            xmlWriter = new XMLWriter(outputFormat);
        }
        return xmlWriter;
    }

    private SAXModifier getModifier()
    {
        if (modifier == null)
        {
            modifier = new SAXModifier(isPruneElements());
        }
        return modifier;
    }

    private XMLWriter getXMLWriter()
    {
        return xmlWriter;
    }

    private SAXModifier installModifier()
        throws IOException
    {
        modifier = new SAXModifier(isPruneElements());
        modifier.resetModifiers();
        java.util.Map.Entry entry;
        JAXBElementModifier jaxbelementmodifier;
        for (Iterator iterator = modifiers.entrySet().iterator(); iterator.hasNext(); getModifier().addModifier((String)entry.getKey(), jaxbelementmodifier))
        {
            entry = (java.util.Map.Entry)iterator.next();
            jaxbelementmodifier = new JAXBElementModifier(this, (JAXBObjectModifier)entry.getValue());
        }

        modifier.setXMLWriter(getXMLWriter());
        return modifier;
    }

    public void addObjectModifier(String s, JAXBObjectModifier jaxbobjectmodifier)
    {
        modifiers.put(s, jaxbobjectmodifier);
    }

    public boolean isPruneElements()
    {
        return pruneElements;
    }

    public Document modify(File file)
        throws DocumentException, IOException
    {
        return installModifier().modify(file);
    }

    public Document modify(File file, Charset charset)
        throws DocumentException, IOException
    {
        try
        {
            file = new InputStreamReader(new FileInputStream(file), charset);
            file = installModifier().modify(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file = file.getCause();
            throw new DocumentException(file.getMessage(), file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            throw new DocumentException(file.getMessage(), file);
        }
        return file;
    }

    public Document modify(InputStream inputstream)
        throws DocumentException, IOException
    {
        try
        {
            inputstream = installModifier().modify(inputstream);
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
        throws DocumentException, IOException
    {
        try
        {
            inputstream = installModifier().modify(inputstream);
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
        throws DocumentException, IOException
    {
        try
        {
            reader = installModifier().modify(reader);
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
        throws DocumentException, IOException
    {
        try
        {
            reader = installModifier().modify(reader);
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
        throws DocumentException, IOException
    {
        try
        {
            s = installModifier().modify(s);
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
        throws DocumentException, IOException
    {
        try
        {
            url = installModifier().modify(url);
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
        throws DocumentException, IOException
    {
        try
        {
            inputsource = installModifier().modify(inputsource);
        }
        // Misplaced declaration of an exception variable
        catch (InputSource inputsource)
        {
            inputsource = inputsource.getCause();
            throw new DocumentException(inputsource.getMessage(), inputsource);
        }
        return inputsource;
    }

    public void removeObjectModifier(String s)
    {
        modifiers.remove(s);
        getModifier().removeModifier(s);
    }

    public void resetObjectModifiers()
    {
        modifiers.clear();
        getModifier().resetModifiers();
    }

    public void setOutput(File file)
        throws IOException
    {
        createXMLWriter().setOutputStream(new FileOutputStream(file));
    }

    public void setOutput(OutputStream outputstream)
        throws IOException
    {
        createXMLWriter().setOutputStream(outputstream);
    }

    public void setOutput(Writer writer)
        throws IOException
    {
        createXMLWriter().setWriter(writer);
    }

    public void setPruneElements(boolean flag)
    {
        pruneElements = flag;
    }
}
