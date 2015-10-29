// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import javax.xml.transform.sax.SAXResult;
import org.dom4j.Document;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;

// Referenced classes of package org.dom4j.io:
//            SAXContentHandler

public class DocumentResult extends SAXResult
{

    private SAXContentHandler contentHandler;

    public DocumentResult()
    {
        this(new SAXContentHandler());
    }

    public DocumentResult(SAXContentHandler saxcontenthandler)
    {
        contentHandler = saxcontenthandler;
        super.setHandler(contentHandler);
        super.setLexicalHandler(contentHandler);
    }

    public Document getDocument()
    {
        return contentHandler.getDocument();
    }

    public void setHandler(ContentHandler contenthandler)
    {
        if (contenthandler instanceof SAXContentHandler)
        {
            contentHandler = (SAXContentHandler)contenthandler;
            super.setHandler(contentHandler);
        }
    }

    public void setLexicalHandler(LexicalHandler lexicalhandler)
    {
        if (lexicalhandler instanceof SAXContentHandler)
        {
            contentHandler = (SAXContentHandler)lexicalhandler;
            super.setLexicalHandler(contentHandler);
        }
    }
}
