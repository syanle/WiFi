// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            ParseHandler, ParseException, ParseSource, Element

public class DefaultParseHandler
    implements ParseHandler
{

    private ParseSource parseSource_;

    public DefaultParseHandler()
    {
        parseSource_ = null;
    }

    public void characters(char ac[], int i, int j)
        throws ParseException
    {
    }

    public void endDocument()
        throws ParseException
    {
    }

    public void endElement(Element element)
        throws ParseException
    {
    }

    public ParseSource getParseSource()
    {
        return parseSource_;
    }

    public void setParseSource(ParseSource parsesource)
    {
        parseSource_ = parsesource;
    }

    public void startDocument()
        throws ParseException
    {
    }

    public void startElement(Element element)
        throws ParseException
    {
    }
}
