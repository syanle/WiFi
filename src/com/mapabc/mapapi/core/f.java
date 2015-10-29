// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.graphics.Point;
import java.util.ArrayList;

// Referenced classes of package com.mapabc.mapapi.core:
//            g

public class f
{

    private ArrayList a;
    private int b;
    private double c;

    public f()
    {
        a = new ArrayList();
        c = 1.0D;
    }

    public f(ArrayList arraylist, double d)
    {
        a = new ArrayList();
        c = 1.0D;
        c = d;
        a = arraylist;
        if (arraylist != null)
        {
            b = arraylist.size();
        }
    }

    public ArrayList a()
    {
        ArrayList arraylist = new ArrayList();
        if (a != null && b >= 2)
        {
            arraylist.add(a.get(0));
            arraylist.add(a.get(b - 1));
            for (int i = 0; i < arraylist.size() - 1;)
            {
                int j = ((g)arraylist.get(i)).a;
                if (((g)arraylist.get(i + 1)).a == j + 1)
                {
                    i++;
                } else
                {
                    float f1 = ((g)arraylist.get(i)).b.x;
                    float f2 = ((g)arraylist.get(i)).b.y;
                    float f3 = ((g)arraylist.get(i + 1)).b.x;
                    float f4 = ((g)arraylist.get(i + 1)).b.y;
                    double d2 = f2 - f4;
                    double d3 = -(f1 - f3);
                    double d4 = (f1 - f3) * f2 - (f2 - f4) * f1;
                    double d = 0.0D;
                    int l = -1;
                    for (int k = ((g)arraylist.get(i)).a + 1; k < ((g)arraylist.get(i + 1)).a; k++)
                    {
                        g g1 = (g)a.get(k);
                        double d1 = Math.abs((double)g1.b.x * d2 + (double)g1.b.y * d3 + d4) / Math.sqrt(d2 * d2 + d3 * d3);
                        if (d1 > d)
                        {
                            l = k;
                            d = d1;
                        }
                    }

                    if (d >= c)
                    {
                        arraylist.add(i + 1, a.get(l));
                    } else
                    {
                        i++;
                    }
                }
            }

        }
        return arraylist;
    }
}
