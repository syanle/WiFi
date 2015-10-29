// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Color;
import java.util.HashMap;

public class Gradient
{
    private class a
    {

        final Gradient a;
        private final int b;
        private final int c;
        private final float d;

        static float a(a a1)
        {
            return a1.d;
        }

        static int b(a a1)
        {
            return a1.b;
        }

        static int c(a a1)
        {
            return a1.c;
        }

        private a(int i, int j, float f)
        {
            a = Gradient.this;
            super();
            b = i;
            c = j;
            d = f;
        }

    }


    private final int a;
    private final int b[];
    private final float c[];

    public Gradient(int ai[], float af[])
    {
        this(ai, af, 1000);
    }

    private Gradient(int ai[], float af[], int i)
    {
        if (ai == null || af == null)
        {
            throw new IllegalArgumentException("colors and startPoints should not be null");
        }
        if (ai.length != af.length)
        {
            throw new IllegalArgumentException("colors and startPoints should be same length");
        }
        if (ai.length == 0)
        {
            throw new IllegalArgumentException("No colors have been defined");
        }
        for (int j = 1; j < af.length; j++)
        {
            if (af[j] <= af[j - 1])
            {
                throw new IllegalArgumentException("startPoints should be in increasing order");
            }
        }

        a = i;
        b = new int[ai.length];
        c = new float[af.length];
        System.arraycopy(ai, 0, b, 0, ai.length);
        System.arraycopy(af, 0, c, 0, af.length);
    }

    private static int a(int i, int j, float f)
    {
        float af[];
        float af1[];
        boolean flag;
        int k;
        flag = false;
        k = (int)((float)(Color.alpha(j) - Color.alpha(i)) * f + (float)Color.alpha(i));
        af = new float[3];
        Color.RGBToHSV(Color.red(i), Color.green(i), Color.blue(i), af);
        af1 = new float[3];
        Color.RGBToHSV(Color.red(j), Color.green(j), Color.blue(j), af1);
        if (af[0] - af1[0] <= 180F) goto _L2; else goto _L1
_L1:
        af1[0] = af1[0] + 360F;
_L4:
        float af2[];
        af2 = new float[3];
        for (i = ((flag) ? 1 : 0); i < 3; i++)
        {
            af2[i] = (af1[i] - af[i]) * f + af[i];
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (af1[0] - af[0] > 180F)
        {
            af[0] = af[0] + 360F;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return Color.HSVToColor(k, af2);
    }

    private HashMap a()
    {
        HashMap hashmap = new HashMap();
        if (c[0] != 0.0F)
        {
            int i = Color.argb(0, Color.red(b[0]), Color.green(b[0]), Color.blue(b[0]));
            int l = b[0];
            float f = a;
            hashmap.put(Integer.valueOf(0), new a(i, l, c[0] * f));
        }
        for (int j = 1; j < b.length; j++)
        {
            int i1 = (int)((float)a * c[j - 1]);
            int j1 = b[j - 1];
            int k1 = b[j];
            float f1 = a;
            hashmap.put(Integer.valueOf(i1), new a(j1, k1, (c[j] - c[j - 1]) * f1));
        }

        if (c[c.length - 1] != 1.0F)
        {
            int k = c.length - 1;
            hashmap.put(Integer.valueOf((int)((float)a * c[k])), new a(b[k], b[k], (float)a * (1.0F - c[k])));
        }
        return hashmap;
    }

    int[] a(double d)
    {
        boolean flag = false;
        HashMap hashmap = a();
        int ai[] = new int[a];
        a a1 = (a)hashmap.get(Integer.valueOf(0));
        int i = 0;
        int k = 0;
        for (; i < a; i++)
        {
            if (hashmap.containsKey(Integer.valueOf(i)))
            {
                a1 = (a)hashmap.get(Integer.valueOf(i));
                k = i;
            }
            float f = (float)(i - k) / a.a(a1);
            ai[i] = a(a.b(a1), a.c(a1), f);
        }

        if (d != 1.0D)
        {
            for (int j = ((flag) ? 1 : 0); j < a; j++)
            {
                int l = ai[j];
                ai[j] = Color.argb((int)((double)Color.alpha(l) * d), Color.red(l), Color.green(l), Color.blue(l));
            }

        }
        return ai;
    }
}
