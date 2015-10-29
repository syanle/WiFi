// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;


public class GsmCellBean
{

    private String a;
    private String b;
    private int c;
    private int d;
    private int e;

    public GsmCellBean()
    {
        e = 10;
    }

    public int getCellid()
    {
        return d;
    }

    public int getLac()
    {
        return c;
    }

    public String getMcc()
    {
        return a;
    }

    public String getMnc()
    {
        return b;
    }

    public int getSignal()
    {
        return e;
    }

    public void setCellid(int i)
    {
        d = i;
    }

    public void setLac(int i)
    {
        c = i;
    }

    public void setMcc(String s)
    {
        a = s;
    }

    public void setMnc(String s)
    {
        b = s;
    }

    public void setSignal(int i)
    {
        e = i;
    }
}
