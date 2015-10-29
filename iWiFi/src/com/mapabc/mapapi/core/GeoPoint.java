// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.mapabc.mapapi.core:
//            h, MapAbcException, e, c, 
//            k, l

public class GeoPoint
    implements Parcelable
{
    public static final class EnumMapProjection extends Enum
    {

        private static final EnumMapProjection $VALUES[];
        public static final EnumMapProjection projection_900913;
        public static final EnumMapProjection projection_custBeijing54;

        public static EnumMapProjection valueOf(String s)
        {
            return (EnumMapProjection)Enum.valueOf(com/mapabc/mapapi/core/GeoPoint$EnumMapProjection, s);
        }

        public static EnumMapProjection[] values()
        {
            return (EnumMapProjection[])$VALUES.clone();
        }

        static 
        {
            projection_900913 = new EnumMapProjection("projection_900913", 0);
            projection_custBeijing54 = new EnumMapProjection("projection_custBeijing54", 1);
            $VALUES = (new EnumMapProjection[] {
                projection_900913, projection_custBeijing54
            });
        }

        private EnumMapProjection(String s, int i)
        {
            super(s, i);
        }
    }

    public static class a
    {

        public int a;
        public int b;

        public a(int i, int j)
        {
            a = i;
            b = j;
        }
    }

    public static class b
    {

        public double a;
        public double b;

        public b(double d1, double d2)
        {
            a = d1;
            b = d2;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new h();
    static final double a[] = {
        0.71111111111111114D, 1.4222222222222223D, 2.8444444444444446D, 5.6888888888888891D, 11.377777777777778D, 22.755555555555556D, 45.511111111111113D, 91.022222222222226D, 182.04444444444445D, 364.0888888888889D, 
        728.17777777777781D, 1456.3555555555556D, 2912.7111111111112D, 5825.4222222222224D, 11650.844444444445D, 23301.68888888889D, 46603.37777777778D, 93206.755555555559D, 186413.51111111112D, 372827.02222222224D, 
        745654.04444444447D
    };
    static final double b[] = {
        40.743665431525208D, 81.487330863050417D, 162.97466172610083D, 325.94932345220167D, 651.89864690440334D, 1303.7972938088067D, 2607.5945876176133D, 5215.1891752352267D, 10430.378350470453D, 20860.756700940907D, 
        41721.513401881813D, 83443.026803763627D, 166886.05360752725D, 333772.10721505451D, 667544.21443010902D, 1335088.428860218D, 2670176.8577204361D, 5340353.7154408721D, 10680707.430881744D, 21361414.861763489D, 
        42722829.723526977D
    };
    static final a c[] = {
        new a(128, 128), new a(256, 256), new a(512, 512), new a(1024, 1024), new a(2048, 2048), new a(4096, 4096), new a(8192, 8192), new a(16384, 16384), new a(32768, 32768), new a(0x10000, 0x10000), 
        new a(0x20000, 0x20000), new a(0x40000, 0x40000), new a(0x80000, 0x80000), new a(0x100000, 0x100000), new a(0x200000, 0x200000), new a(0x400000, 0x400000), new a(0x800000, 0x800000), new a(0x1000000, 0x1000000), new a(0x2000000, 0x2000000), new a(0x4000000, 0x4000000), 
        new a(0x8000000, 0x8000000)
    };
    private long d;
    private long e;
    private double f;
    private double g;

    public GeoPoint()
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        d = 0L;
        e = 0L;
    }

    public GeoPoint(double d1, double d2, long l1, long l2)
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        f = d1;
        g = d2;
        d = l1;
        e = l2;
    }

    public GeoPoint(double d1, double d2, Activity activity)
        throws MapAbcException
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        if (!Class.forName("com.mapabc.mapapi.map.MapActivity").isInstance(activity)) goto _L2; else goto _L1
_L1:
        String s = com.mapabc.mapapi.core.e.b();
_L4:
        if (c.a)
        {
            activity = (b)(new k(new b(d2, d1), com.mapabc.mapapi.core.e.b(activity), s, com.mapabc.mapapi.core.e.a(activity), null)).GetData();
            d = com.mapabc.mapapi.core.e.a(((b) (activity)).b);
            e = com.mapabc.mapapi.core.e.a(((b) (activity)).a);
            return;
        } else
        {
            activity = (b)(new l(new b(d2, d1), com.mapabc.mapapi.core.e.b(activity), s, com.mapabc.mapapi.core.e.a(activity), null)).GetData();
            d = com.mapabc.mapapi.core.e.a(((b) (activity)).b);
            e = com.mapabc.mapapi.core.e.a(((b) (activity)).a);
            return;
        }
        activity;
        throw new RuntimeException("\u5FC5\u987B\u4F20\u5165MapActivity\u7684\u5B9E\u4F8B");
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public GeoPoint(double d1, double d2, Context context, String s)
        throws MapAbcException
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        if (c.a)
        {
            context = (b)(new k(new b(d2, d1), com.mapabc.mapapi.core.e.b(context), s, com.mapabc.mapapi.core.e.a(context), null)).GetData();
            d = com.mapabc.mapapi.core.e.a(((b) (context)).b);
            e = com.mapabc.mapapi.core.e.a(((b) (context)).a);
            return;
        } else
        {
            context = (b)(new l(new b(d2, d1), com.mapabc.mapapi.core.e.b(context), s, com.mapabc.mapapi.core.e.a(context), null)).GetData();
            d = com.mapabc.mapapi.core.e.a(((b) (context)).b);
            e = com.mapabc.mapapi.core.e.a(((b) (context)).a);
            return;
        }
    }

    public GeoPoint(double d1, double d2, boolean flag)
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        if (flag)
        {
            d = (long)(d1 * 1000000D);
            e = (long)(d2 * 1000000D);
            return;
        } else
        {
            f = d1;
            g = d2;
            return;
        }
    }

    public GeoPoint(int i, int j)
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        d = i;
        e = j;
    }

    public GeoPoint(long l1, long l2)
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        d = l1;
        e = l2;
    }

    private GeoPoint(Parcel parcel)
    {
        d = 0x8000000000000000L;
        e = 0x8000000000000000L;
        f = 4.9406564584124654E-324D;
        g = 4.9406564584124654E-324D;
        d = parcel.readLong();
        e = parcel.readLong();
    }

    GeoPoint(Parcel parcel, h h1)
    {
        this(parcel);
    }

    public double a()
    {
        if (c.j == EnumMapProjection.projection_custBeijing54)
        {
            if (g != 4.9406564584124654E-324D)
            {
                return g;
            } else
            {
                return com.mapabc.mapapi.core.e.a(e);
            }
        }
        if (c.j == EnumMapProjection.projection_900913 && g == 4.9406564584124654E-324D)
        {
            g = (com.mapabc.mapapi.core.e.a(e) * 20037508.34D) / 180D;
        }
        return g;
    }

    public void a(double d1)
    {
        g = d1;
    }

    public double b()
    {
        if (c.j == EnumMapProjection.projection_custBeijing54)
        {
            if (f != 4.9406564584124654E-324D)
            {
                return f;
            } else
            {
                return com.mapabc.mapapi.core.e.a(d);
            }
        }
        if (c.j == EnumMapProjection.projection_900913 && f == 4.9406564584124654E-324D)
        {
            f = ((Math.log(Math.tan(((com.mapabc.mapapi.core.e.a(d) + 90D) * 3.1415926535897931D) / 360D)) / 0.017453292519943295D) * 20037508.34D) / 180D;
        }
        return f;
    }

    public void b(double d1)
    {
        f = d1;
    }

    public GeoPoint c()
    {
        return new GeoPoint(f, g, d, e);
    }

    public String d()
    {
        return (new StringBuilder()).append("").append(com.mapabc.mapapi.core.e.a(d)).append(",").append(com.mapabc.mapapi.core.e.a(e)).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && obj.getClass() == getClass())
        {
            obj = (GeoPoint)obj;
            if (f == ((GeoPoint) (obj)).f && g == ((GeoPoint) (obj)).g && d == ((GeoPoint) (obj)).d && e == ((GeoPoint) (obj)).e)
            {
                return true;
            }
        }
        return false;
    }

    public int getLatitudeE6()
    {
        return (int)d;
    }

    public int getLongitudeE6()
    {
        return (int)e;
    }

    public long getlongLatitudeE6()
    {
        return d;
    }

    public long getlongLongitudeE6()
    {
        return e;
    }

    public int hashCode()
    {
        return (int)(g * 7D + f * 11D);
    }

    public String toString()
    {
        return (new StringBuilder()).append("").append(d).append(",").append(e).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(d);
        parcel.writeLong(e);
    }


    // Unreferenced inner class com/mapabc/mapapi/core/h
    static final class h
        implements android.os.Parcelable.Creator
    {

        public GeoPoint a(Parcel parcel)
        {
            return new GeoPoint(parcel, null);
        }

        public GeoPoint[] a(int i)
        {
            return new GeoPoint[i];
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public volatile Object[] newArray(int i)
        {
            return a(i);
        }

            h()
            {
            }
    }

}
