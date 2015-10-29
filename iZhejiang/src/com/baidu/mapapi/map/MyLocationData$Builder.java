// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            MyLocationData

public static class 
{

    private double a;
    private double b;
    private float c;
    private float d;
    private float e;
    private int f;

    public  accuracy(float f1)
    {
        e = f1;
        return this;
    }

    public MyLocationData build()
    {
        return new MyLocationData(a, b, c, d, e, f);
    }

    public f direction(float f1)
    {
        d = f1;
        return this;
    }

    public d latitude(double d1)
    {
        a = d1;
        return this;
    }

    public a longitude(double d1)
    {
        b = d1;
        return this;
    }

    public b satellitesNum(int i)
    {
        f = i;
        return this;
    }

    public f speed(float f1)
    {
        c = f1;
        return this;
    }

    public ()
    {
    }
}
