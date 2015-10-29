// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;


public class AndroidVersionCheckUtils
{

    private AndroidVersionCheckUtils()
    {
    }

    public static boolean hasDonut()
    {
        return android.os.Build.VERSION.SDK_INT >= 4;
    }

    public static boolean hasEclair()
    {
        return android.os.Build.VERSION.SDK_INT >= 5;
    }

    public static boolean hasFroyo()
    {
        return android.os.Build.VERSION.SDK_INT >= 8;
    }

    public static boolean hasGingerbread()
    {
        return android.os.Build.VERSION.SDK_INT >= 9;
    }

    public static boolean hasHoneycomb()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean hasHoneycombMR1()
    {
        return android.os.Build.VERSION.SDK_INT >= 12;
    }

    public static boolean hasIcecreamsandwich()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }
}
