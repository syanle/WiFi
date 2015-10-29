// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import java.io.ByteArrayInputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

// Referenced classes of package com.autonavi.aps.api:
//            l, m, Location

public class ParserResponse
{

    public ParserResponse()
    {
    }

    public Location ParserApsXml(String s)
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(s.getBytes());
        SAXParserFactory saxparserfactory = SAXParserFactory.newInstance();
        s = new l(this);
        try
        {
            saxparserfactory.newSAXParser().parse(bytearrayinputstream, s);
        }
        catch (Exception exception) { }
        return ((l) (s)).a;
    }

    public String ParserSapsXml(String s)
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(s.getBytes());
        SAXParserFactory saxparserfactory = SAXParserFactory.newInstance();
        s = new m(this);
        try
        {
            saxparserfactory.newSAXParser().parse(bytearrayinputstream, s);
        }
        catch (Exception exception) { }
        return ((m) (s)).a;
    }
}
