// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


// Referenced classes of package com.mapabc.mapapi.core:
//            u

public class c
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        public static final a k;
        public static final a l;
        public static final a m;
        private static final a n[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/mapabc/mapapi/core/c$a, s);
        }

        public static a[] values()
        {
            return (a[])n.clone();
        }

        static 
        {
            a = new a("enomap", 0);
            b = new a("ewatermark", 1);
            c = new a("emarker", 2);
            d = new a("ecompassback", 3);
            e = new a("ecommpasspoint", 4);
            f = new a("eloc1", 5);
            g = new a("eloc2", 6);
            h = new a("ezoomin", 7);
            i = new a("ezoomout", 8);
            j = new a("ezoomindisable", 9);
            k = new a("ezoomoutdisable", 10);
            l = new a("ezoominselected", 11);
            m = new a("ezoomoutselected", 12);
            n = (new a[] {
                a, b, c, d, e, f, g, h, i, j, 
                k, l, m
            });
        }

        private a(String s, int i1)
        {
            super(s, i1);
        }
    }


    public static boolean a = true;
    public static int b = 18;
    public static int c = 4;
    public static int d = 20;
    public static int e = 3;
    public static int f = 0;
    public static int g = 0;
    public static int h = 0;
    public static u i = null;
    public static GeoPoint.EnumMapProjection j;
    public static String k = "Android_MapSDKV5.3-B05";
    public static String l = "Android_MapSDKV5.3";
    public static boolean m = false;

    public c()
    {
    }

    static 
    {
        j = GeoPoint.EnumMapProjection.projection_900913;
    }
}
