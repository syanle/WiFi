// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


// Referenced classes of package com.mapabc.mapapi.core:
//            c

public static final class  extends Enum
{

    public static final m a;
    public static final m b;
    public static final m c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    public static final m l;
    public static final m m;
    private static final m n[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mapabc/mapapi/core/c$a, s);
    }

    public static [] values()
    {
        return ([])n.clone();
    }

    static 
    {
        a = new <init>("enomap", 0);
        b = new <init>("ewatermark", 1);
        c = new <init>("emarker", 2);
        d = new <init>("ecompassback", 3);
        e = new <init>("ecommpasspoint", 4);
        f = new <init>("eloc1", 5);
        g = new <init>("eloc2", 6);
        h = new <init>("ezoomin", 7);
        i = new <init>("ezoomout", 8);
        j = new <init>("ezoomindisable", 9);
        k = new <init>("ezoomoutdisable", 10);
        l = new <init>("ezoominselected", 11);
        m = new <init>("ezoomoutselected", 12);
        n = (new n[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m
        });
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
