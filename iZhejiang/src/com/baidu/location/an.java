// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


public final class an
{

    public an()
    {
    }

    public static Object a(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("null reference");
        } else
        {
            return obj;
        }
    }

    public static Object a(Object obj, Object obj1)
    {
        if (obj == null)
        {
            throw new NullPointerException(String.valueOf(obj1));
        } else
        {
            return obj;
        }
    }

    public static void a(boolean flag)
    {
        if (!flag)
        {
            throw new IllegalStateException();
        } else
        {
            return;
        }
    }

    public static void a(boolean flag, Object obj)
    {
        if (!flag)
        {
            throw new IllegalStateException(String.valueOf(obj));
        } else
        {
            return;
        }
    }

    public static void a(boolean flag, String s, Object aobj[])
    {
        if (!flag)
        {
            throw new IllegalArgumentException(String.format(s, aobj));
        } else
        {
            return;
        }
    }

    public static void _mthif(boolean flag)
    {
        if (!flag)
        {
            throw new IllegalArgumentException();
        } else
        {
            return;
        }
    }

    public static void _mthif(boolean flag, Object obj)
    {
        if (!flag)
        {
            throw new IllegalArgumentException(String.valueOf(obj));
        } else
        {
            return;
        }
    }
}
