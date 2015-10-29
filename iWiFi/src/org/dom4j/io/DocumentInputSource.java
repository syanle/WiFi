// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import org.dom4j.Document;
import org.xml.sax.InputSource;

// Referenced classes of package org.dom4j.io:
//            XMLWriter

class DocumentInputSource extends InputSource
{

    private Document document;

    public DocumentInputSource()
    {
    }

    public DocumentInputSource(Document document1)
    {
        document = document1;
        setSystemId(document1.getName());
    }

    public Reader getCharacterStream()
    {
        Object obj;
        try
        {
            obj = new StringWriter();
            XMLWriter xmlwriter = new XMLWriter(((java.io.Writer) (obj)));
            xmlwriter.write(document);
            xmlwriter.flush();
            obj = new StringReader(((StringWriter) (obj)).toString());
        }
        catch (final IOException e)
        {
            return new _cls1();
        }
        return ((Reader) (obj));
    }

    public Document getDocument()
    {
        return document;
    }

    public void setCharacterStream(Reader reader)
        throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException();
    }

    public void setDocument(Document document1)
    {
        document = document1;
        setSystemId(document1.getName());
    }

    private class _cls1 extends Reader
    {

        private final DocumentInputSource this$0;
        private final IOException val$e;

        public void close()
            throws IOException
        {
        }

        public int read(char ac[], int i, int j)
            throws IOException
        {
            throw e;
        }

        _cls1()
            throws IOException
        {
            this$0 = DocumentInputSource.this;
            e = ioexception;
        }
    }

}
