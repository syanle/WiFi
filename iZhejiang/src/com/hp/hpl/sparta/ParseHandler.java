// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            ParseException, Element, ParseSource

public interface ParseHandler
{

    public abstract void characters(char ac[], int i, int j)
        throws ParseException;

    public abstract void endDocument()
        throws ParseException;

    public abstract void endElement(Element element)
        throws ParseException;

    public abstract ParseSource getParseSource();

    public abstract void setParseSource(ParseSource parsesource);

    public abstract void startDocument()
        throws ParseException;

    public abstract void startElement(Element element)
        throws ParseException;
}
