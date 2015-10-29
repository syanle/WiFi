// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.content.Context;
import net.youmi.android.a.b.k.f;

public class AdSize
{

    public static final int FILL_PARENT = -1;
    public static final AdSize FIT_SCREEN = new AdSize(-1, -2);
    public static final int LANDSPACE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORAIT_AD_HEIGHT = 50;
    public static final AdSize SIZE_300x250 = new AdSize(300, 250);
    public static final AdSize SIZE_320x50 = new AdSize(320, 50);
    public static final AdSize SIZE_468x60 = new AdSize(468, 60);
    public static final AdSize SIZE_728x90 = new AdSize(728, 90);
    public static final int WRAP_CONTENT = -2;
    private int a;
    private int b;
    private int c;
    private int d;

    public AdSize(int i, int j)
    {
        a = i;
        b = j;
    }

    public int getAdHeight()
    {
        return b;
    }

    public int getAdWidth()
    {
        return a;
    }

    public int resizeHeight(Context context)
    {
        context = f.a(context);
        if (b != -1) goto _L2; else goto _L1
_L1:
        d = 0;
_L4:
        float f1 = b;
        d = (int)(context.f() * f1);
        return d;
_L2:
        if (b == -2)
        {
            b = (a * 50) / 320;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int resizeWidth(Context context)
    {
        context = f.a(context);
        if (a == -2)
        {
            c = 0;
        } else
        if (a == -1)
        {
            c = context.g();
            a = (int)((float)c / context.f());
        } else
        {
            float f1 = a;
            c = (int)(context.f() * f1);
        }
        return c;
    }

}
