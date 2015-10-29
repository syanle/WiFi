// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.util.Log;
import java.io.ByteArrayInputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

// Referenced classes of package com.autonavi.aps.api:
//            Constant, k

public class ApsRequest
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;

    public ApsRequest()
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = "";
        f = "";
        g = "";
        h = "";
        i = "";
        j = "";
        k = "";
        l = "";
        m = "";
        n = "";
        o = "";
        p = "";
        q = "";
        r = "";
        s = "";
        t = "";
        u = "";
        v = "";
        w = "";
        x = "";
        y = "";
        z = "";
    }

    public String convertApsRequestXml(String s1)
    {
        if (Constant.apsVerion == 2)
        {
            setApsRequestProperty(s1);
            s1 = new StringBuffer();
            s1.append("<?xml version=\"1.0\" encoding=\"GBK\" ?>");
            s1.append("<Cell_Req ver=\"1.0\"><HDR version=\"1.0\" cdma=\"").append(getCdma()).append("\" gps=\"").append(getGps()).append("\" glong=\"").append(getGlong()).append("\" glat=\"").append(getGlat()).append("\" precision=\"\"><src>").append(getSrc()).append("</src><license>").append(getLicense()).append("</license><imei>").append(getImei()).append("</imei ></HDR><DRR phnum=\"").append(getLine1number()).append("\" nettype=\"").append(getNettype()).append("\" inftype=\"").append(getInftype()).append("\">");
            if (getCdma().equalsIgnoreCase("1"))
            {
                s1.append("<sid>").append(getSid()).append("</sid>").append("<nid>").append(getNid()).append("</nid>").append("<bid>").append(getBid()).append("</bid>").append("<lon>").append(getLon()).append("</lon>").append("<lat>").append(getLat()).append("</lat>");
            } else
            {
                s1.append("<mcc>").append(getMcc()).append("</mcc><mnc>").append(getMnc()).append("</mnc><lac>").append(getLac()).append("</lac><cellid>").append(getCellid()).append("</cellid>");
            }
            s1.append("<signal>").append(getSignal()).append("</signal><nb>").append(getNb()).append("</nb><mmac>").append(getMainmac()).append("</mmac><macs>").append(getMacs()).append("</macs></DRR></Cell_Req>");
            return s1.toString();
        } else
        {
            Log.d("aps", "aps request xml do not need convert");
            return s1;
        }
    }

    public String getBid()
    {
        if (n == null || n.equalsIgnoreCase("null"))
        {
            n = "";
        }
        return n;
    }

    public String getCdma()
    {
        if (d == null || d.equalsIgnoreCase("null"))
        {
            d = "";
        }
        return d;
    }

    public String getCellid()
    {
        if (j == null || j.equalsIgnoreCase("null"))
        {
            j = "";
        }
        return j;
    }

    public String getClienttime()
    {
        return g;
    }

    public String getGaccuracy()
    {
        return z;
    }

    public String getGlat()
    {
        if (v == null || v.equalsIgnoreCase("null"))
        {
            v = "";
        }
        return v;
    }

    public String getGlong()
    {
        if (u == null || u.equalsIgnoreCase("null"))
        {
            u = "";
        }
        return u;
    }

    public String getGps()
    {
        if (t == null || t.equalsIgnoreCase("null"))
        {
            t = "";
        }
        return t;
    }

    public String getImei()
    {
        if (c == null || c.equalsIgnoreCase("null"))
        {
            c = "";
        }
        return c;
    }

    public String getInftype()
    {
        if (getMainmac().length() > 1)
        {
            y = "2";
        } else
        {
            y = "1";
        }
        return y;
    }

    public String getLac()
    {
        if (k == null || k.equalsIgnoreCase("null"))
        {
            k = "";
        }
        return k;
    }

    public String getLat()
    {
        if (f == null || f.equalsIgnoreCase("null"))
        {
            f = "";
        }
        return f;
    }

    public String getLicense()
    {
        if (a == null || a.equalsIgnoreCase("null"))
        {
            a = "";
        }
        return a;
    }

    public String getLine1number()
    {
        if (getNetwork().indexOf("line1number: ") == -1) goto _L2; else goto _L1
_L1:
        if (getNetwork().indexOf(", wifi") == -1) goto _L4; else goto _L3
_L3:
        w = getNetwork().substring(getNetwork().indexOf("line1number: ") + 13, getNetwork().indexOf(", wifi"));
_L2:
        if (w == null || w.equalsIgnoreCase("null"))
        {
            w = "";
        }
        return w;
_L4:
        try
        {
            w = getNetwork().substring(getNetwork().indexOf("line1number: ") + 13);
        }
        catch (Exception exception) { }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public String getLon()
    {
        if (e == null || e.equalsIgnoreCase("null"))
        {
            e = "";
        }
        return e;
    }

    public String getMacs()
    {
        if (r == null || r.equalsIgnoreCase("null"))
        {
            r = "";
        }
        return r;
    }

    public String getMainmac()
    {
        if (s == null || s.equalsIgnoreCase("null"))
        {
            s = "";
        }
        return s;
    }

    public String getMcc()
    {
        if (h == null || h.equalsIgnoreCase("null"))
        {
            h = "";
        }
        return h;
    }

    public String getMnc()
    {
        if (i == null || i.equalsIgnoreCase("null"))
        {
            i = "";
        }
        return i;
    }

    public String getNb()
    {
        if (q == null || q.equalsIgnoreCase("null"))
        {
            q = "";
        }
        return q;
    }

    public String getNettype()
    {
        if (getNetwork().indexOf("nettype") != -1)
        {
            x = getNetwork().substring(getNetwork().indexOf("type: ") + 6, getNetwork().indexOf(", state: "));
        }
        if (x == null || x.equalsIgnoreCase("null"))
        {
            x = "";
        }
        return x;
    }

    public String getNetwork()
    {
        if (o == null || o.equalsIgnoreCase("null"))
        {
            o = "";
        }
        return o;
    }

    public String getNid()
    {
        if (m == null || m.equalsIgnoreCase("null"))
        {
            m = "";
        }
        return m;
    }

    public String getSid()
    {
        if (l == null || l.equalsIgnoreCase("null"))
        {
            l = "";
        }
        return l;
    }

    public String getSignal()
    {
        if (p == null || p.equalsIgnoreCase("null"))
        {
            p = "";
        }
        return p;
    }

    public String getSrc()
    {
        if (b == null || b.equalsIgnoreCase("null"))
        {
            b = "";
        }
        return b;
    }

    public void setApsRequestProperty(String s1)
    {
        s1 = new ByteArrayInputStream(s1.getBytes());
        SAXParserFactory saxparserfactory = SAXParserFactory.newInstance();
        k k1 = new k(this);
        try
        {
            saxparserfactory.newSAXParser().parse(s1, k1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return;
        }
    }

    public void setBid(String s1)
    {
        n = s1;
    }

    public void setCdma(String s1)
    {
        d = s1;
    }

    public void setCellid(String s1)
    {
        j = s1;
    }

    public void setClienttime(String s1)
    {
        String s2;
label0:
        {
            if (s1 != null)
            {
                s2 = s1;
                if (s1.length() >= 2)
                {
                    break label0;
                }
            }
            s2 = "0000-00-00-00-00-00";
        }
        g = s2;
    }

    public void setGaccuracy(String s1)
    {
        z = s1;
    }

    public void setGlat(String s1)
    {
        v = s1;
    }

    public void setGlong(String s1)
    {
        u = s1;
    }

    public void setGps(String s1)
    {
        t = s1;
    }

    public void setImei(String s1)
    {
        c = s1;
    }

    public void setLac(String s1)
    {
        k = s1;
    }

    public void setLat(String s1)
    {
        f = s1;
    }

    public void setLicense(String s1)
    {
        a = s1;
    }

    public void setLon(String s1)
    {
        e = s1;
    }

    public void setMacs(String s1)
    {
        r = s1;
    }

    public void setMainmac(String s1)
    {
        s = s1;
    }

    public void setMcc(String s1)
    {
        h = s1;
    }

    public void setMnc(String s1)
    {
        i = s1;
    }

    public void setNb(String s1)
    {
        String s2 = s1;
        if (s1 != null)
        {
            s2 = s1;
            if (s1.length() > 3)
            {
                s1 = s1.replace((new StringBuilder("*")).append(i).append(",").toString(), "*");
                s2 = s1.substring(i.length() + 1, s1.length());
            }
        }
        q = s2;
    }

    public void setNetwork(String s1)
    {
        o = s1;
    }

    public void setNid(String s1)
    {
        m = s1;
    }

    public void setSid(String s1)
    {
        l = s1;
    }

    public void setSignal(String s1)
    {
        p = s1;
    }

    public void setSrc(String s1)
    {
        b = s1;
    }
}
