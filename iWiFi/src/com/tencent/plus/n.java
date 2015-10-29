// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class n
{

    public n()
    {
    }

    public static int a(Context context, float f)
    {
        return (int)(context.getResources().getDisplayMetrics().density * f + 0.5F);
    }
}
