// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.support.v4.util.LongSparseArray;
import android.util.SparseIntArray;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.c.a;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

// Referenced classes of package com.baidu.mapapi.map:
//            Gradient, d, WeightedLatLng, j, 
//            i, BaiduMap, e

public class HeatMap
{
    public static class Builder
    {

        private Collection a;
        private int b;
        private Gradient c;
        private double d;

        static Collection a(Builder builder)
        {
            return builder.a;
        }

        static int b(Builder builder)
        {
            return builder.b;
        }

        static Gradient c(Builder builder)
        {
            return builder.c;
        }

        static double d(Builder builder)
        {
            return builder.d;
        }

        public HeatMap build()
        {
            if (a == null)
            {
                throw new IllegalStateException("No input data: you must use either .data or .weightedData before building");
            } else
            {
                return new HeatMap(this, null);
            }
        }

        public Builder data(Collection collection)
        {
            if (collection == null || collection.isEmpty())
            {
                throw new IllegalArgumentException("No input points.");
            }
            if (collection.contains(null))
            {
                throw new IllegalArgumentException("input points can not contain null.");
            } else
            {
                return weightedData(com.baidu.mapapi.map.HeatMap.a(collection));
            }
        }

        public Builder gradient(Gradient gradient1)
        {
            if (gradient1 == null)
            {
                throw new IllegalArgumentException("gradient can not be null");
            } else
            {
                c = gradient1;
                return this;
            }
        }

        public Builder opacity(double d1)
        {
            d = d1;
            if (d < 0.0D || d > 1.0D)
            {
                throw new IllegalArgumentException("Opacity must be in range [0, 1]");
            } else
            {
                return this;
            }
        }

        public Builder radius(int i1)
        {
            b = i1;
            if (b < 10 || b > 50)
            {
                throw new IllegalArgumentException("Radius not within bounds.");
            } else
            {
                return this;
            }
        }

        public Builder weightedData(Collection collection)
        {
            if (collection == null || collection.isEmpty())
            {
                throw new IllegalArgumentException("No input points.");
            }
            if (collection.contains(null))
            {
                throw new IllegalArgumentException("input points can not contain null.");
            }
            ArrayList arraylist = new ArrayList();
            Iterator iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                WeightedLatLng weightedlatlng = (WeightedLatLng)iterator.next();
                LatLng latlng = weightedlatlng.latLng;
                if (latlng.latitude < 0.37531999999999999D || latlng.latitude > 54.562494999999998D || latlng.longitude < 72.508319D || latlng.longitude > 135.94219799999999D)
                {
                    arraylist.add(weightedlatlng);
                }
            } while (true);
            collection.removeAll(arraylist);
            a = collection;
            return this;
        }

        public Builder()
        {
            b = 12;
            c = HeatMap.DEFAULT_GRADIENT;
            d = 0.59999999999999998D;
        }
    }


    public static final Gradient DEFAULT_GRADIENT = new Gradient(d, e);
    public static final double DEFAULT_OPACITY = 0.59999999999999998D;
    public static final int DEFAULT_RADIUS = 12;
    private static final String b = com/baidu/mapapi/map/HeatMap.getSimpleName();
    private static final SparseIntArray c;
    private static final int d[] = {
        Color.rgb(0, 0, 200), Color.rgb(0, 225, 0), Color.rgb(255, 0, 0)
    };
    private static final float e[] = {
        0.08F, 0.4F, 1.0F
    };
    BaiduMap a;
    private i f;
    private Collection g;
    private int h;
    private Gradient i;
    private double j;
    private d k;
    private int l[];
    private double m[];
    private double n[];
    private HashMap o;
    private ExecutorService p;
    private HashSet q;

    private HeatMap(Builder builder)
    {
        o = new HashMap();
        p = Executors.newFixedThreadPool(1);
        q = new HashSet();
        g = com.baidu.mapapi.map.Builder.a(builder);
        h = Builder.b(builder);
        i = Builder.c(builder);
        j = Builder.d(builder);
        m = a(h, (double)h / 3D);
        a(i);
        b(g);
    }

    HeatMap(Builder builder, e e1)
    {
        this(builder);
    }

    private static double a(Collection collection, d d1, int i1, int j1)
    {
        double d3 = d1.a;
        double d2 = d1.c;
        double d4 = d1.b;
        double d5 = d1.d;
        LongSparseArray longsparsearray;
        Iterator iterator;
        if (d2 - d3 > d5 - d4)
        {
            d2 -= d3;
        } else
        {
            d2 = d5 - d4;
        }
        d5 = (double)(int)((double)(j1 / (i1 * 2)) + 0.5D) / d2;
        longsparsearray = new LongSparseArray();
        iterator = collection.iterator();
        d2 = 0.0D;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            WeightedLatLng weightedlatlng = (WeightedLatLng)iterator.next();
            double d6 = weightedlatlng.a().x;
            double d7 = weightedlatlng.a().y;
            i1 = (int)((d6 - d3) * d5);
            j1 = (int)((d7 - d4) * d5);
            collection = (LongSparseArray)longsparsearray.get(i1);
            if (collection == null)
            {
                collection = new LongSparseArray();
                longsparsearray.put(i1, collection);
            }
            Double double1 = (Double)collection.get(j1);
            d1 = double1;
            if (double1 == null)
            {
                d1 = Double.valueOf(0.0D);
            }
            d6 = d1.doubleValue();
            d1 = Double.valueOf(weightedlatlng.intensity + d6);
            collection.put(j1, d1);
            if (d1.doubleValue() > d2)
            {
                d2 = d1.doubleValue();
            }
        } while (true);
        return d2;
    }

    private static Bitmap a(double ad[][], int ai[], double d1)
    {
        int k1 = ai[ai.length - 1];
        d1 = (double)(ai.length - 1) / d1;
        int l1 = ad.length;
        int ai1[] = new int[l1 * l1];
        for (int i1 = 0; i1 < l1; i1++)
        {
            int j1 = 0;
            while (j1 < l1) 
            {
                double d2 = ad[j1][i1];
                int i2 = i1 * l1 + j1;
                int j2 = (int)(d2 * d1);
                if (d2 != 0.0D)
                {
                    if (j2 < ai.length)
                    {
                        ai1[i2] = ai[j2];
                    } else
                    {
                        ai1[i2] = k1;
                    }
                } else
                {
                    ai1[i2] = 0;
                }
                j1++;
            }
        }

        ad = Bitmap.createBitmap(l1, l1, android.graphics.Bitmap.Config.ARGB_8888);
        ad.setPixels(ai1, 0, l1, 0, 0, l1, l1);
        return ad;
    }

    private static j a(Bitmap bitmap)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(bitmap.getWidth() * bitmap.getHeight() * 4);
        bitmap.copyPixelsToBuffer(bytebuffer);
        return new j(256, 256, bytebuffer.array());
    }

    static Collection a(Collection collection)
    {
        return c(collection);
    }

    private void a(Gradient gradient)
    {
        i = gradient;
        l = gradient.a(j);
    }

    static void a(HeatMap heatmap, int i1, int j1, int k1)
    {
        heatmap.b(i1, j1, k1);
    }

    private void a(String s, j j1)
    {
        this;
        JVM INSTR monitorenter ;
        o.put(s, j1);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    private boolean a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = q.contains(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        throw s;
    }

    private double[] a(int i1)
    {
        byte byte0 = 11;
        double ad[] = new double[19];
        int j1 = 5;
        int k1;
        do
        {
            k1 = byte0;
            if (j1 >= 11)
            {
                break;
            }
            ad[j1] = a(g, k, i1, (int)(1280D * Math.pow(2D, j1 - 3)));
            if (j1 == 5)
            {
                for (k1 = 0; k1 < j1; k1++)
                {
                    ad[k1] = ad[j1];
                }

            }
            j1++;
        } while (true);
        for (; k1 < 19; k1++)
        {
            ad[k1] = ad[10];
        }

        return ad;
    }

    private static double[] a(int i1, double d1)
    {
        double ad[] = new double[i1 * 2 + 1];
        for (int j1 = -i1; j1 <= i1; j1++)
        {
            ad[j1 + i1] = Math.exp((double)(-j1 * j1) / (2D * d1 * d1));
        }

        return ad;
    }

    private static double[][] a(double ad[][], double ad1[])
    {
        int i1 = (int)Math.floor((double)ad1.length / 2D);
        int k3 = ad.length;
        int l3 = k3 - i1 * 2;
        int l1 = (i1 + l3) - 1;
        double ad2[][] = (double[][])Array.newInstance(Double.TYPE, new int[] {
            k3, k3
        });
        for (int i2 = 0; i2 < k3; i2++)
        {
            int j1;
            int i3;
            for (int k2 = 0; k2 < k3; k2++)
            {
                double d1 = ad[i2][k2];
                if (d1 == 0.0D)
                {
                    continue;
                }
                if (l1 < i2 + i1)
                {
                    i3 = l1;
                } else
                {
                    i3 = i2 + i1;
                }
                if (i1 > i2 - i1)
                {
                    j1 = i1;
                } else
                {
                    j1 = i2 - i1;
                }
                for (; j1 < i3 + 1; j1++)
                {
                    double ad3[] = ad2[j1];
                    ad3[k2] = ad3[k2] + ad1[j1 - (i2 - i1)] * d1;
                }

            }

        }

        ad = (double[][])Array.newInstance(Double.TYPE, new int[] {
            l3, l3
        });
        for (int j2 = i1; j2 < l1 + 1; j2++)
        {
            int k1;
            int j3;
            for (int l2 = 0; l2 < k3; l2++)
            {
                double d2 = ad2[j2][l2];
                if (d2 == 0.0D)
                {
                    continue;
                }
                if (l1 < l2 + i1)
                {
                    j3 = l1;
                } else
                {
                    j3 = l2 + i1;
                }
                if (i1 > l2 - i1)
                {
                    k1 = i1;
                } else
                {
                    k1 = l2 - i1;
                }
                for (; k1 < j3 + 1; k1++)
                {
                    double ad4[] = ad[j2 - i1];
                    int i4 = k1 - i1;
                    ad4[i4] = ad4[i4] + ad1[k1 - (l2 - i1)] * d2;
                }

            }

        }

        return ad;
    }

    private void b(int i1, int j1, int k1)
    {
        double d1 = c.get(k1);
        double d2 = ((double)h * d1) / 256D;
        double d3 = (2D * d2 + d1) / (double)(h * 2 + 256);
        if (i1 >= 0 && j1 >= 0)
        {
            double d4 = (double)i1 * d1 - d2;
            double d5 = i1 + 1;
            double d6 = j1;
            double d7 = d1 * (double)(j1 + 1) + d2;
            d d8 = new d(d4, d5 * d1 + d2, d6 * d1 - d2, d7);
            if (d8.a(new d(k.a - d2, k.c + d2, k.b - d2, d2 + k.d)))
            {
                Object obj = f.a(d8);
                if (!((Collection) (obj)).isEmpty())
                {
                    int l1 = h;
                    int j2 = h;
                    double ad[][] = (double[][])Array.newInstance(Double.TYPE, new int[] {
                        l1 * 2 + 256, j2 * 2 + 256
                    });
                    for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
                    {
                        WeightedLatLng weightedlatlng = (WeightedLatLng)((Iterator) (obj)).next();
                        Point point = weightedlatlng.a();
                        int k2 = (int)(((double)point.x - d4) / d3);
                        int l2 = (int)((d7 - (double)point.y) / d3);
                        int i2 = k2;
                        if (k2 >= h * 2 + 256)
                        {
                            i2 = (h * 2 + 256) - 1;
                        }
                        k2 = l2;
                        if (l2 >= h * 2 + 256)
                        {
                            k2 = (h * 2 + 256) - 1;
                        }
                        double ad1[] = ad[i2];
                        ad1[k2] = ad1[k2] + weightedlatlng.intensity;
                    }

                    Bitmap bitmap = a(a(ad, m), l, n[k1 - 1]);
                    obj = a(bitmap);
                    bitmap.recycle();
                    a((new StringBuilder()).append(i1).append("_").append(j1).append("_").append(k1).toString(), ((j) (obj)));
                    if (a != null)
                    {
                        a.a();
                        return;
                    }
                }
            }
        }
    }

    private void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        q.add(s);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    private void b(Collection collection)
    {
        g = collection;
        if (g.isEmpty())
        {
            throw new IllegalArgumentException("No input points.");
        }
        k = d(g);
        f = new i(k);
        WeightedLatLng weightedlatlng;
        for (collection = g.iterator(); collection.hasNext(); f.a(weightedlatlng))
        {
            weightedlatlng = (WeightedLatLng)collection.next();
        }

        n = a(h);
    }

    private j c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (!o.containsKey(s)) goto _L2; else goto _L1
_L1:
        j j1;
        j1 = (j)o.get(s);
        o.remove(s);
        s = j1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    private static Collection c(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        for (collection = collection.iterator(); collection.hasNext(); arraylist.add(new WeightedLatLng((LatLng)collection.next()))) { }
        return arraylist;
    }

    private static d d(Collection collection)
    {
        collection = collection.iterator();
        WeightedLatLng weightedlatlng = (WeightedLatLng)collection.next();
        double d7 = weightedlatlng.a().x;
        double d3 = weightedlatlng.a().x;
        double d2 = weightedlatlng.a().y;
        double d1 = weightedlatlng.a().y;
        do
        {
            if (!collection.hasNext())
            {
                break;
            }
            WeightedLatLng weightedlatlng1 = (WeightedLatLng)collection.next();
            double d8 = weightedlatlng1.a().x;
            double d4 = weightedlatlng1.a().y;
            double d5 = d7;
            if (d8 < d7)
            {
                d5 = d8;
            }
            double d6 = d3;
            if (d8 > d3)
            {
                d6 = d8;
            }
            d8 = d2;
            if (d4 < d2)
            {
                d8 = d4;
            }
            d7 = d5;
            d3 = d6;
            d2 = d8;
            if (d4 > d1)
            {
                d1 = d4;
                d7 = d5;
                d3 = d6;
                d2 = d8;
            }
        } while (true);
        return new d(d7, d3, d2, d1);
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        o.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    j a(int i1, int j1, int k1)
    {
        String s = (new StringBuilder()).append(i1).append("_").append(j1).append("_").append(k1).toString();
        j j2 = c(s);
        if (j2 != null)
        {
            return j2;
        }
        if (!a(s) && !p.isShutdown())
        {
            try
            {
                p.execute(new e(this, i1, j1, k1));
                b(s);
            }
            catch (RejectedExecutionException rejectedexecutionexception)
            {
                rejectedexecutionexception.printStackTrace();
                com.baidu.platform.comapi.c.a.b(b, (new StringBuilder()).append("tile ").append(i1).append("_").append(j1).append("_").append(k1).append("task rejected!").toString());
            }
        }
        return null;
    }

    void a()
    {
        this;
        JVM INSTR monitorenter ;
        q.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void b()
    {
        d();
    }

    void c()
    {
        p.shutdownNow();
    }

    public void removeHeatMap()
    {
        if (a != null)
        {
            a.a(this);
        }
    }

    static 
    {
        c = new SparseIntArray();
        c.put(3, 0x800000);
        c.put(4, 0x400000);
        c.put(5, 0x200000);
        c.put(6, 0x100000);
        c.put(7, 0x80000);
        c.put(8, 0x40000);
        c.put(9, 0x20000);
        c.put(10, 0x10000);
        c.put(11, 32768);
        c.put(12, 16384);
        c.put(13, 8192);
        c.put(14, 4096);
        c.put(15, 2048);
        c.put(16, 1024);
        c.put(17, 512);
        c.put(18, 256);
        c.put(19, 128);
    }
}
