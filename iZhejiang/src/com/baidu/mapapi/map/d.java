// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;

class d
{

    public final double a;
    public final double b;
    public final double c;
    public final double d;
    public final double e;
    public final double f;

    public d(double d1, double d2, double d3, double d4)
    {
        a = d1;
        b = d3;
        c = d2;
        d = d4;
        e = (d1 + d2) / 2D;
        f = (d3 + d4) / 2D;
    }

    public boolean a(double d1, double d2)
    {
        return a <= d1 && d1 <= c && b <= d2 && d2 <= d;
    }

    public boolean a(double d1, double d2, double d3, double d4)
    {
        return d1 < c && a < d2 && d3 < d && b < d4;
    }

    public boolean a(Point point)
    {
        return a(point.x, point.y);
    }

    public boolean a(d d1)
    {
        return a(d1.a, d1.c, d1.b, d1.d);
    }

    public boolean b(d d1)
    {
        return d1.a >= a && d1.c <= c && d1.b >= b && d1.d <= d;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("minX: ").append(a).toString());
        stringbuilder.append((new StringBuilder()).append(" minY: ").append(b).toString());
        stringbuilder.append((new StringBuilder()).append(" maxX: ").append(c).toString());
        stringbuilder.append((new StringBuilder()).append(" maxY: ").append(d).toString());
        stringbuilder.append((new StringBuilder()).append(" midX: ").append(e).toString());
        stringbuilder.append((new StringBuilder()).append(" midY: ").append(f).toString());
        return stringbuilder.toString();
    }
}
