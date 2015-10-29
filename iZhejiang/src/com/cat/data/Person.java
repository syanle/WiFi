// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.data;


public class Person
{

    private String code;
    private String country;
    private String countrycn;
    private String pinYinName;

    public Person()
    {
    }

    public String getCode()
    {
        return code;
    }

    public String getCountry()
    {
        return country;
    }

    public String getCountrycn()
    {
        return countrycn;
    }

    public String getPinYinName()
    {
        return pinYinName;
    }

    public void setCode(String s)
    {
        code = s;
    }

    public void setCountry(String s)
    {
        country = s;
    }

    public void setCountrycn(String s)
    {
        countrycn = s;
    }

    public void setPinYinName(String s)
    {
        pinYinName = s;
    }
}
