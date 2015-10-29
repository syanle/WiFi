// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import u.aly.bq;

public class AnalyticsConfig
{

    public static boolean ACTIVITY_DURATION_OPEN = true;
    public static boolean CATCH_EXCEPTION = true;
    public static boolean COMPRESS_DATA = true;
    public static boolean ENABLE_MEMORY_BUFFER = true;
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    private static String a = null;
    private static String b = null;
    private static double c[] = null;
    public static long kContinueSessionMillis = 30000L;
    public static int mVerticalType;
    public static String mWrapperType = null;
    public static String mWrapperVersion = null;
    public static boolean sEncrypt = false;
    public static int sLatentWindow;

    public AnalyticsConfig()
    {
    }

    public static void enableEncrypt(boolean flag)
    {
        sEncrypt = flag;
    }

    public static String getAppkey(Context context)
    {
        if (a == null)
        {
            a = bq.o(context);
        }
        return a;
    }

    public static String getChannel(Context context)
    {
        if (b == null)
        {
            b = bq.t(context);
        }
        return b;
    }

    public static double[] getLocation()
    {
        return c;
    }

    public static String getSDKVersion()
    {
        if (mVerticalType == 1)
        {
            return "5.5.3.0";
        } else
        {
            return "5.5.3";
        }
    }

    public static void setAppkey(String s)
    {
        a = s;
    }

    public static void setChannel(String s)
    {
        b = s;
    }

    public static void setLatencyWindow(long l)
    {
        sLatentWindow = (int)l * 1000;
    }

    public static void setLocation(double d, double d1)
    {
        if (c == null)
        {
            c = new double[2];
        }
        c[0] = d;
        c[1] = d1;
    }

}
