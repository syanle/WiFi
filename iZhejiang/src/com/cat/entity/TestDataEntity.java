// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.entity;

import java.io.Serializable;
import java.util.Date;

public class TestDataEntity
    implements Serializable
{

    private static final long serialVersionUID = 0x91098196bbc48dedL;
    int auto;
    Boolean b;
    char c;
    double d;
    Date date;
    float f;
    int i;
    String name;

    public TestDataEntity()
    {
    }

    public int getAuto()
    {
        return auto;
    }

    public Boolean getB()
    {
        return b;
    }

    public char getC()
    {
        return c;
    }

    public double getD()
    {
        return d;
    }

    public Date getDate()
    {
        return date;
    }

    public float getF()
    {
        return f;
    }

    public int getI()
    {
        return i;
    }

    public String getName()
    {
        return name;
    }

    public void setAuto(int j)
    {
        auto = j;
    }

    public void setB(Boolean boolean1)
    {
        b = boolean1;
    }

    public void setC(char c1)
    {
        c = c1;
    }

    public void setD(double d1)
    {
        d = d1;
    }

    public void setDate(Date date1)
    {
        date = date1;
    }

    public void setF(float f1)
    {
        f = f1;
    }

    public void setI(int j)
    {
        i = j;
    }

    public void setName(String s)
    {
        name = s;
    }

    public String toString()
    {
        return (new StringBuilder("getName")).append(getName()).append("--getC--").append(getC()).append("--getD--").append(getD()).append("--getI--").append(getI()).append("--getF--").append(getF()).append("--getB--").append(getB()).append("--getDate--").append(getDate()).append("auto").append(getAuto()).toString();
    }
}
