// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
import org.dom4j.io.SAXReader;
import org.xml.sax.InputSource;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBSupport, JAXBRuntimeException, JAXBObjectHandler

public class JAXBReader extends JAXBSupport
{
    private class PruningElementHandler
        implements ElementHandler
    {

        private final JAXBReader this$0;

        public void onEnd(ElementPath elementpath)
        {
            elementpath.getCurrent().detach();
        }

        public void onStart(ElementPath elementpath)
        {
        }

        public PruningElementHandler()
        {
            this$0 = JAXBReader.this;
        }
    }

    private class UnmarshalElementHandler
        implements ElementHandler
    {

        private JAXBObjectHandler handler;
        private JAXBReader jaxbReader;
        private final JAXBReader this$0;

        public void onEnd(ElementPath elementpath)
        {
            try
            {
                elementpath = elementpath.getCurrent();
                javax.xml.bind.Element element = jaxbReader.unmarshal(elementpath);
                if (jaxbReader.isPruneElements())
                {
                    elementpath.detach();
                }
                handler.handleObject(element);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ElementPath elementpath)
            {
                throw new JAXBRuntimeException(elementpath);
            }
        }

        public void onStart(ElementPath elementpath)
        {
        }

        public UnmarshalElementHandler(JAXBReader jaxbreader1, JAXBObjectHandler jaxbobjecthandler)
        {
            this$0 = JAXBReader.this;
            jaxbReader = jaxbreader1;
            handler = jaxbobjecthandler;
        }
    }


    private boolean pruneElements;
    private SAXReader reader;

    public JAXBReader(String s)
    {
        super(s);
    }

    public JAXBReader(String s, ClassLoader classloader)
    {
        super(s, classloader);
    }

    private SAXReader getReader()
    {
        if (reader == null)
        {
            reader = new SAXReader();
        }
        return reader;
    }

    public void addHandler(String s, ElementHandler elementhandler)
    {
        getReader().addHandler(s, elementhandler);
    }

    public void addObjectHandler(String s, JAXBObjectHandler jaxbobjecthandler)
    {
        jaxbobjecthandler = new UnmarshalElementHandler(this, jaxbobjecthandler);
        getReader().addHandler(s, jaxbobjecthandler);
    }

    public boolean isPruneElements()
    {
        return pruneElements;
    }

    public Document read(File file)
        throws DocumentException
    {
        return getReader().read(file);
    }

    public Document read(File file, Charset charset)
        throws DocumentException
    {
        try
        {
            file = new InputStreamReader(new FileInputStream(file), charset);
            file = getReader().read(file);
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

    public Document read(InputStream inputstream)
        throws DocumentException
    {
        try
        {
            inputstream = getReader().read(inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream = inputstream.getCause();
            throw new DocumentException(inputstream.getMessage(), inputstream);
        }
        return inputstream;
    }

    public Document read(InputStream inputstream, String s)
        throws DocumentException
    {
        try
        {
            inputstream = getReader().read(inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream = inputstream.getCause();
            throw new DocumentException(inputstream.getMessage(), inputstream);
        }
        return inputstream;
    }

    public Document read(Reader reader1)
        throws DocumentException
    {
        try
        {
            reader1 = getReader().read(reader1);
        }
        // Misplaced declaration of an exception variable
        catch (Reader reader1)
        {
            reader1 = reader1.getCause();
            throw new DocumentException(reader1.getMessage(), reader1);
        }
        return reader1;
    }

    public Document read(Reader reader1, String s)
        throws DocumentException
    {
        try
        {
            reader1 = getReader().read(reader1);
        }
        // Misplaced declaration of an exception variable
        catch (Reader reader1)
        {
            reader1 = reader1.getCause();
            throw new DocumentException(reader1.getMessage(), reader1);
        }
        return reader1;
    }

    public Document read(String s)
        throws DocumentException
    {
        try
        {
            s = getReader().read(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = s.getCause();
            throw new DocumentException(s.getMessage(), s);
        }
        return s;
    }

    public Document read(URL url)
        throws DocumentException
    {
        try
        {
            url = getReader().read(url);
        }
        // Misplaced declaration of an exception variable
        catch (URL url)
        {
            url = url.getCause();
            throw new DocumentException(url.getMessage(), url);
        }
        return url;
    }

    public Document read(InputSource inputsource)
        throws DocumentException
    {
        try
        {
            inputsource = getReader().read(inputsource);
        }
        // Misplaced declaration of an exception variable
        catch (InputSource inputsource)
        {
            inputsource = inputsource.getCause();
            throw new DocumentException(inputsource.getMessage(), inputsource);
        }
        return inputsource;
    }

    public void removeHandler(String s)
    {
        getReader().removeHandler(s);
    }

    public void removeObjectHandler(String s)
    {
        getReader().removeHandler(s);
    }

    public void resetHandlers()
    {
        getReader().resetHandlers();
    }

    public void setPruneElements(boolean flag)
    {
        pruneElements = flag;
        if (flag)
        {
            getReader().setDefaultHandler(new PruningElementHandler());
        }
    }
}
