// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;

// Referenced classes of package com.mapabc.mapapi.core:
//            c, u

public class aa
{

    public static Drawable a;
    public static Drawable b;
    public static Drawable c;
    public static Drawable d;
    public static Drawable e;
    public static Drawable f;
    public static Drawable g;
    public static Drawable h;
    public static Drawable i;
    public static Drawable j;
    public static Paint k;
    public static Paint l;
    public static Paint m;
    public static boolean n = false;

    public aa()
    {
    }

    public static void a()
    {
        if (a != null)
        {
            a = null;
        }
    }

    public static void a(Context context)
    {
        if (n)
        {
            return;
        }
        l = new Paint();
        l.setStyle(android.graphics.Paint.Style.STROKE);
        l.setColor(Color.rgb(54, 114, 227));
        l.setAlpha(180);
        l.setStrokeWidth(5.5F);
        l.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        l.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        l.setAntiAlias(true);
        k = new Paint();
        k.setStyle(android.graphics.Paint.Style.STROKE);
        k.setColor(Color.rgb(44, 222, 18));
        k.setAlpha(150);
        k.setStrokeWidth(5.5F);
        k.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        k.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        k.setAntiAlias(true);
        m = new Paint();
        m.setStyle(android.graphics.Paint.Style.STROKE);
        m.setColor(Color.rgb(54, 114, 227));
        m.setAlpha(180);
        m.setStrokeWidth(5.5F);
        m.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        m.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        m.setAntiAlias(true);
        new DisplayMetrics();
        Object obj = context.getResources().getDisplayMetrics();
        int i1 = ((DisplayMetrics) (obj)).widthPixels;
        long l1 = ((DisplayMetrics) (obj)).heightPixels * i1;
        Rect rect;
        if (l1 > 0x25800L)
        {
            a(context, 1);
        } else
        if (l1 < 0x25800L)
        {
            a(context, 3);
        } else
        {
            a(context, 2);
        }
        obj = new Rect(8, 4, 16, 14);
        rect = new Rect(17, 5, 8, 12);
        h = c.i.a(context, "left_back.png", new byte[] {
            1, 2, 2, 9, 0, 0, 0, 0, 0, 0, 
            0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 
            4, 0, 0, 0, 14, 0, 0, 0, 0, 0, 
            0, 0, 8, 0, 0, 0, 18, 0, 0, 0, 
            4, 0, 0, 0, 17, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0
        }, ((Rect) (obj)));
        i = c.i.a(context, "right_back.png", new byte[] {
            1, 2, 2, 9, 0, 0, 0, 0, 0, 0, 
            0, 0, 17, 0, 0, 0, 8, 0, 0, 0, 
            5, 0, 0, 0, 12, 0, 0, 0, 0, 0, 
            0, 0, 14, 0, 0, 0, 26, 0, 0, 0, 
            5, 0, 0, 0, 19, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0
        }, rect);
        n = true;
    }

    static void a(Context context, int i1)
    {
        switch (i1)
        {
        default:
            try
            {
                a = c.i.b(context, "start.png");
                b = c.i.b(context, "end.png");
                c = c.i.b(context, "foot.png");
                e = c.i.b(context, "bus_w.png");
                d = c.i.b(context, "car.png");
                f = c.i.b(context, "starticon.png");
                g = c.i.b(context, "endicon.png");
                j = c.i.b(context, "route_coner.png");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return;
            }

        case 1: // '\001'
            try
            {
                a = c.i.b(context, "start_w.png");
                b = c.i.b(context, "end_w.png");
                c = c.i.b(context, "foot_w.png");
                e = c.i.b(context, "bus_w.png");
                d = c.i.b(context, "car_w.png");
                f = c.i.b(context, "starticon_w.png");
                g = c.i.b(context, "endicon_w.png");
                j = c.i.b(context, "route_coner_w.png");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return;
            }

        case 2: // '\002'
            try
            {
                a = c.i.b(context, "start.png");
                b = c.i.b(context, "end.png");
                c = c.i.b(context, "foot.png");
                e = c.i.b(context, "bus.png");
                d = c.i.b(context, "car.png");
                f = c.i.b(context, "starticon.png");
                g = c.i.b(context, "endicon.png");
                j = c.i.b(context, "route_coner.png");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return;
            }

        case 3: // '\003'
            break;
        }
        try
        {
            a = c.i.b(context, "start.png");
            b = c.i.b(context, "end.png");
            c = c.i.b(context, "foot.png");
            e = c.i.b(context, "bus.png");
            d = c.i.b(context, "car.png");
            f = c.i.b(context, "starticon.png");
            g = c.i.b(context, "endicon.png");
            j = c.i.b(context, "route_coner_q.png");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static Drawable b(Context context)
    {
        Rect rect = new Rect(8, 4, 16, 14);
        return c.i.a(context, "left_back.png", new byte[] {
            1, 2, 2, 9, 0, 0, 0, 0, 0, 0, 
            0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 
            4, 0, 0, 0, 14, 0, 0, 0, 0, 0, 
            0, 0, 8, 0, 0, 0, 18, 0, 0, 0, 
            4, 0, 0, 0, 17, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
            0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 
            1, 0, 0, 0
        }, rect);
    }

    public static void b()
    {
        if (b != null)
        {
            b = null;
        }
    }

    public static void c()
    {
        if (c != null)
        {
            c = null;
        }
    }

    public static void d()
    {
        if (d != null)
        {
            d = null;
        }
    }

    public static void e()
    {
        if (e != null)
        {
            e = null;
        }
    }

    public static void f()
    {
        if (j != null)
        {
            j = null;
        }
    }

    public static void g()
    {
        n = false;
        a();
        b();
        c();
        d();
        e();
        if (h != null)
        {
            h = null;
        }
        if (i != null)
        {
            i = null;
        }
        f();
    }

}
