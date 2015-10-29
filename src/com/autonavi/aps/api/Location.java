// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;


public class Location
{

    private String a;
    private String b;
    private double c;
    private double d;
    private double e;
    private String f;
    private String g;
    private String h;
    private double i;
    private double j;
    private double k;

    public Location()
    {
        a = "";
        b = "";
        c = 0.0D;
        d = 0.0D;
        e = 0.0D;
        f = "";
        g = "";
        h = "";
        i = 0.0D;
        j = 0.0D;
        k = 0.0D;
    }

    public String getAdcode()
    {
        return h;
    }

    public double getCenx()
    {
        return c;
    }

    public double getCeny()
    {
        return d;
    }

    public String getCitycode()
    {
        return f;
    }

    public String getDesc()
    {
        return g;
    }

    public double getRadius()
    {
        return e;
    }

    public double getRawd()
    {
        return 0.0D;
    }

    public double getRawx()
    {
        return 0.0D;
    }

    public double getRawy()
    {
        return 0.0D;
    }

    public String getRdesc()
    {
        return b;
    }

    public String getResult()
    {
        return a;
    }

    public void setAdcode(String s)
    {
        h = s;
    }

    public void setCenx(double d1)
    {
        c = d1;
    }

    public void setCeny(double d1)
    {
        d = d1;
    }

    public void setCitycode(String s)
    {
        f = s;
    }

    public void setDesc(String s)
    {
        g = s;
    }

    public void setRadius(double d1)
    {
        e = d1;
    }

    public void setRawd(double d1)
    {
        k = 0.0D;
    }

    public void setRawx(double d1)
    {
        i = 0.0D;
    }

    public void setRawy(double d1)
    {
        j = 0.0D;
    }

    public void setRdesc(String s)
    {
        b = s;
    }

    public void setResult(String s)
    {
        a = s;
    }

    public final String toString()
    {
        return (new StringBuilder()).append("result:").append(a).append("\n").append("rdesc:").append(b).append("\n").append("cenx:").append(c).append("\n").append("ceny:").append(d).append("\n").append("radius:").append(e).append("\n").append("citycode:").append(f).append("\n").append("adcode:").append(h).append("\n").append("desc:").append(g).append("\n").append("rawx:").append(0.0D).append("\n").append("rawy:").append(0.0D).append("\n").append("rawd:").append(0.0D).append("\n").toString();
    }
}
