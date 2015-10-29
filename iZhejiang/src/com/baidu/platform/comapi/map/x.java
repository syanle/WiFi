// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;


public final class x extends Enum
{

    public static final x a;
    public static final x b;
    public static final x c;
    private static final x e[];
    private final int d;

    private x(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static x valueOf(String s)
    {
        return (x)Enum.valueOf(com/baidu/platform/comapi/map/x, s);
    }

    public static x[] values()
    {
        return (x[])e.clone();
    }

    static 
    {
        a = new x("DEFAULT", 0, 1);
        b = new x("INDOOR", 1, 2);
        c = new x("STREET", 2, 3);
        e = (new x[] {
            a, b, c
        });
    }
}
