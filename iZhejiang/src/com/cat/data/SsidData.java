// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.data;


public class SsidData
{

    private int level;
    private String logo;
    private String mac;
    private String nettype;
    private int password;
    private String ssid;

    public SsidData()
    {
    }

    public int getLevel()
    {
        return level;
    }

    public String getLogo()
    {
        return logo;
    }

    public String getMac()
    {
        return mac;
    }

    public String getNettype()
    {
        return nettype;
    }

    public int getPassword()
    {
        return password;
    }

    public String getSsid()
    {
        return ssid;
    }

    public void setLevel(int i)
    {
        level = i;
    }

    public void setLogo(String s)
    {
        logo = s;
    }

    public void setMac(String s)
    {
        mac = s;
    }

    public void setNettype(String s)
    {
        nettype = s;
    }

    public void setPassword(int i)
    {
        password = i;
    }

    public void setSsid(String s)
    {
        ssid = s;
    }
}
