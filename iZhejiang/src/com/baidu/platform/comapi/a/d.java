// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.a;

import java.io.Serializable;

public class d
    implements Serializable
{

    public int a;
    public int b;

    public d()
    {
    }

    public d(int i, int j)
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
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            obj = (d)obj;
            if (a != ((d) (obj)).a)
            {
                return false;
            }
            if (b != ((d) (obj)).b)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return (a + 31) * 31 + b;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Point [x=").append(a).append(", y=").append(b).append("]").toString();
    }
}
