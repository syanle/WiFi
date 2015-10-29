// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.draw;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class DensityUtils
{

    public DensityUtils()
    {
    }

    public static int dipTopx(Context context, float f)
    {
        return (int)(f * context.getResources().getDisplayMetrics().density + 0.5F);
    }

    public static int pxTodip(Context context, float f)
    {
        return (int)(f / context.getResources().getDisplayMetrics().density + 0.5F);
    }
}
