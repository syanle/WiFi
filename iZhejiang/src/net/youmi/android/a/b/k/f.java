// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Field;

public class f
{

    private int a;
    private int b;
    private boolean c;
    private int d;
    private int e;
    private float f;
    private int g;
    private int h;

    protected f(DisplayMetrics displaymetrics, DisplayMetrics displaymetrics1)
    {
        a = 160;
        b = 160;
        c = true;
        f = 1.0F;
        g = displaymetrics.widthPixels;
        h = displaymetrics.heightPixels;
        f = displaymetrics.density;
        a = 160;
        Field field = displaymetrics.getClass().getField("densityDpi");
        int i;
        if (field != null)
        {
            try
            {
                a = field.getInt(displaymetrics);
            }
            // Misplaced declaration of an exception variable
            catch (DisplayMetrics displaymetrics) { }
        }
        b = 160;
        displaymetrics = displaymetrics1.getClass().getField("densityDpi");
        if (displaymetrics != null)
        {
            try
            {
                b = displaymetrics.getInt(displaymetrics1);
            }
            // Misplaced declaration of an exception variable
            catch (DisplayMetrics displaymetrics) { }
        }
        if (a == 160)
        {
            d = Math.round((float)displaymetrics1.widthPixels * displaymetrics1.density);
            e = Math.round((float)displaymetrics1.heightPixels * displaymetrics1.density);
            c = true;
        } else
        {
            d = g;
            e = h;
            c = false;
        }
        if (d > e)
        {
            i = d;
            d = e;
            e = i;
        }
        return;
    }

    public static f a(Context context)
    {
        return b(context);
    }

    private static f b(Context context)
    {
        System.currentTimeMillis();
        try
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            context = new f(context.getResources().getDisplayMetrics(), displaymetrics);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        finally
        {
            throw context;
        }
        return context;
    }

    public float a(float f1)
    {
        float f3 = 1.0F;
        float f2 = f1;
        if (f1 <= 0.0F)
        {
            f2 = 1.0F;
        }
        if (a())
        {
            return f2;
        }
        f1 = f * f2;
        if (f1 <= 0.0F)
        {
            f1 = f3;
        }
        return f1;
    }

    public int a(int i)
    {
        boolean flag = true;
        int j = i;
        if (i <= 0)
        {
            j = 1;
        }
        if (a())
        {
            return j;
        }
        i = Math.round((float)j * f);
        if (i <= 0)
        {
            i = ((flag) ? 1 : 0);
        }
        return i;
    }

    boolean a()
    {
        return c;
    }

    public int b()
    {
        return g;
    }

    public int c()
    {
        return h;
    }

    public int d()
    {
        return a;
    }

    public int e()
    {
        return b;
    }

    public float f()
    {
        return f;
    }

    public int g()
    {
        return d;
    }

    public int h()
    {
        return e;
    }
}
