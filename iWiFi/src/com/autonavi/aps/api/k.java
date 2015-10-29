// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.autonavi.aps.api:
//            ApsRequest

final class k extends DefaultHandler
{

    private StringBuffer a;
    private ApsRequest b;

    k(ApsRequest apsrequest)
    {
        b = apsrequest;
        super();
        a = new StringBuffer();
    }

    public final void characters(char ac[], int i, int j)
    {
        a.append((new String(ac, i, j)).toString());
        super.characters(ac, i, j);
    }

    public final void endElement(String s, String s1, String s2)
    {
        if (!s1.equals("license")) goto _L2; else goto _L1
_L1:
        b.setLicense(a.toString());
_L4:
        super.endElement(s, s1, s2);
        return;
_L2:
        if (s1.equals("gaccuracy"))
        {
            b.setGaccuracy(a.toString());
        } else
        if (s1.equals("src"))
        {
            b.setSrc(a.toString());
        } else
        if (s1.equals("imei"))
        {
            b.setImei(a.toString());
        } else
        if (s1.equals("lac"))
        {
            b.setLac(a.toString());
        } else
        if (s1.equals("cellid"))
        {
            b.setCellid(a.toString());
        } else
        if (s1.equals("mnc"))
        {
            b.setMnc(a.toString());
        } else
        if (s1.equals("mcc"))
        {
            b.setMcc(a.toString());
        } else
        if (s1.equals("sid"))
        {
            b.setSid(a.toString());
        } else
        if (s1.equals("nid"))
        {
            b.setNid(a.toString());
        } else
        if (s1.equals("bid"))
        {
            b.setBid(a.toString());
        } else
        if (s1.equals("network"))
        {
            b.setNetwork(a.toString());
        } else
        if (s1.equals("gps"))
        {
            b.setGps(a.toString());
        } else
        if (s1.equals("cdma"))
        {
            b.setCdma(a.toString());
        } else
        if (s1.equals("glat"))
        {
            b.setGlat(a.toString());
        } else
        if (s1.equals("glong"))
        {
            b.setGlong(a.toString());
        } else
        if (s1.equals("lat"))
        {
            b.setLat(a.toString());
        } else
        if (s1.equals("lon"))
        {
            b.setLon(a.toString());
        } else
        if (s1.equals("nb"))
        {
            b.setNb(a.toString());
        } else
        if (s1.equals("signal"))
        {
            b.setSignal(a.toString());
        } else
        if (s1.equals("macs"))
        {
            b.setMacs(a.toString());
        } else
        if (s1.equals("mainmac"))
        {
            b.setMainmac(a.toString());
        } else
        if (s1.equals("clienttime"))
        {
            b.setClienttime(a.toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void startElement(String s, String s1, String s2, Attributes attributes)
    {
        a.delete(0, a.toString().length());
        super.startElement(s, s1, s2, attributes);
    }
}
