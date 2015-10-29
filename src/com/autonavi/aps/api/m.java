// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.autonavi.aps.api:
//            ParserResponse

final class m extends DefaultHandler
{

    public String a;
    private boolean b;

    m(ParserResponse parserresponse)
    {
        a = "";
        b = false;
    }

    public final void characters(char ac[], int i, int j)
    {
        if (b)
        {
            a = new String(ac, i, j);
        }
        super.characters(ac, i, j);
    }

    public final void endElement(String s, String s1, String s2)
    {
        if (s1.equals("sres"))
        {
            b = false;
        }
        super.endElement(s, s1, s2);
    }

    public final void startElement(String s, String s1, String s2, Attributes attributes)
    {
        if (s1.equals("sres"))
        {
            b = true;
        }
        super.startElement(s, s1, s2, attributes);
    }
}
