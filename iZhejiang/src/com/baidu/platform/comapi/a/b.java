// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.a;


public class b
{

    private int a;
    private int b;

    public b(int i, int j)
    {
        a = i;
        b = j;
    }

    public int a()
    {
        return a;
    }

    public void a(int i)
    {
        a = i;
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        b = i;
    }

    public boolean equals(Object obj)
    {
        while (obj == null || obj.getClass() != getClass()) 
        {
            return false;
        }
        boolean flag;
        if (a == ((b)obj).a && b == ((b)obj).b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public String toString()
    {
        return (new StringBuilder()).append("GeoPoint: Latitude: ").append(a).append(", Longitude: ").append(b).toString();
    }
}
