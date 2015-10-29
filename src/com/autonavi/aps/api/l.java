// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.autonavi.aps.api:
//            Location, ParserResponse

final class l extends DefaultHandler
{

    public Location a;
    private StringBuffer b;

    l(ParserResponse parserresponse)
    {
        a = new Location();
        b = new StringBuffer();
    }

    public final void characters(char ac[], int i, int j)
    {
        b.append((new String(ac, i, j)).toString());
        super.characters(ac, i, j);
    }

    public final void endElement(String s, String s1, String s2)
    {
        if (!s1.equals("result")) goto _L2; else goto _L1
_L1:
        a.setResult(b.toString());
_L4:
        super.endElement(s, s1, s2);
        return;
_L2:
        if (s1.equals("rdesc"))
        {
            a.setRdesc(b.toString());
        } else
        if (s1.equals("cenx"))
        {
            try
            {
                a.setCenx(Double.valueOf(b.toString()).doubleValue());
            }
            catch (Exception exception)
            {
                a.setCenx(0.0D);
            }
        } else
        if (s1.equals("ceny"))
        {
            try
            {
                a.setCeny(Double.valueOf(b.toString()).doubleValue());
            }
            catch (Exception exception1)
            {
                a.setCeny(0.0D);
            }
        } else
        if (s1.equals("radius"))
        {
            try
            {
                a.setRadius(Double.valueOf(b.toString()).doubleValue());
            }
            catch (Exception exception2)
            {
                a.setRadius(0.0D);
            }
        } else
        if (s1.equals("citycode"))
        {
            a.setCitycode(b.toString());
        } else
        if (s1.equals("desc"))
        {
            a.setDesc(b.toString());
        } else
        if (s1.equals("adcode"))
        {
            a.setAdcode(b.toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void startElement(String s, String s1, String s2, Attributes attributes)
    {
        b.delete(0, b.toString().length());
        super.startElement(s, s1, s2, attributes);
    }
}
