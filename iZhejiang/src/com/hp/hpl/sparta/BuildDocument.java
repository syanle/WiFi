// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            DocumentSource, ParseHandler, Document, ParseSource, 
//            Element, Text, Node, ParseLog

class BuildDocument
    implements DocumentSource, ParseHandler
{

    private Element currentElement_;
    private final Document doc_;
    private final ParseLog log_;
    private ParseSource parseSource_;

    public BuildDocument()
    {
        this(null);
    }

    public BuildDocument(ParseLog parselog)
    {
        currentElement_ = null;
        doc_ = new Document();
        parseSource_ = null;
        ParseLog parselog1 = parselog;
        if (parselog == null)
        {
            parselog1 = ParseSource.DEFAULT_LOG;
        }
        log_ = parselog1;
    }

    public void characters(char ac[], int i, int j)
    {
        Element element = currentElement_;
        if (element.getLastChild() instanceof Text)
        {
            ((Text)element.getLastChild()).appendData(ac, i, j);
            return;
        } else
        {
            element.appendChildNoChecking(new Text(new String(ac, i, j)));
            return;
        }
    }

    public void endDocument()
    {
    }

    public void endElement(Element element)
    {
        currentElement_ = currentElement_.getParentNode();
    }

    public Document getDocument()
    {
        return doc_;
    }

    public int getLineNumber()
    {
        if (parseSource_ != null)
        {
            return parseSource_.getLineNumber();
        } else
        {
            return -1;
        }
    }

    public ParseSource getParseSource()
    {
        return parseSource_;
    }

    public String getSystemId()
    {
        if (parseSource_ != null)
        {
            return parseSource_.getSystemId();
        } else
        {
            return null;
        }
    }

    public void setParseSource(ParseSource parsesource)
    {
        parseSource_ = parsesource;
        doc_.setSystemId(parsesource.toString());
    }

    public void startDocument()
    {
    }

    public void startElement(Element element)
    {
        if (currentElement_ == null)
        {
            doc_.setDocumentElement(element);
        } else
        {
            currentElement_.appendChild(element);
        }
        currentElement_ = element;
    }

    public String toString()
    {
        if (parseSource_ != null)
        {
            return "BuildDoc: " + parseSource_.toString();
        } else
        {
            return null;
        }
    }
}
