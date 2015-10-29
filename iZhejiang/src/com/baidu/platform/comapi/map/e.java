// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    public static final e f;
    public static final e g;
    public static final e h;
    public static final e i;
    public static final e j;
    private static final e k[];

    private e(String s, int l)
    {
        super(s, l);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/baidu/platform/comapi/map/e, s);
    }

    public static e[] values()
    {
        return (e[])k.clone();
    }

    static 
    {
        a = new e("logo", 0);
        b = new e("popup", 1);
        c = new e("marker", 2);
        d = new e("ground", 3);
        e = new e("text", 4);
        f = new e("arc", 5);
        g = new e("dot", 6);
        h = new e("circle", 7);
        i = new e("polyline", 8);
        j = new e("polygon", 9);
        k = (new e[] {
            a, b, c, d, e, f, g, h, i, j
        });
    }
}
