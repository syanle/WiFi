// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            HeatMap

class e
    implements Runnable
{

    final int a;
    final int b;
    final int c;
    final HeatMap d;

    e(HeatMap heatmap, int i, int j, int k)
    {
        d = heatmap;
        a = i;
        b = j;
        c = k;
        super();
    }

    public void run()
    {
        HeatMap.a(d, a, b, c);
    }
}
