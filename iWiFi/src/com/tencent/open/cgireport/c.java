// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open.cgireport;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class c
{

    static String a = null;
    private static String b = null;

    public c()
    {
    }

    public static String a(Context context)
    {
        if (a != null && a.length() > 0)
        {
            return a;
        }
        if (context == null)
        {
            return "";
        }
        try
        {
            context = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "";
        }
        return context;
    }

    public static String b(Context context)
    {
        try
        {
            if (b == null)
            {
                Object obj = (WindowManager)context.getSystemService("window");
                DisplayMetrics displaymetrics = new DisplayMetrics();
                ((WindowManager) (obj)).getDefaultDisplay().getMetrics(displaymetrics);
                obj = new StringBuilder();
                ((StringBuilder) (obj)).append("imei=").append(a(context)).append('&');
                ((StringBuilder) (obj)).append("model=").append(Build.MODEL).append('&');
                ((StringBuilder) (obj)).append("os=").append(android.os.Build.VERSION.RELEASE).append('&');
                ((StringBuilder) (obj)).append("apilevel=").append(android.os.Build.VERSION.SDK_INT).append('&');
                ((StringBuilder) (obj)).append("display=").append(displaymetrics.widthPixels).append('*').append(displaymetrics.heightPixels).append('&');
                ((StringBuilder) (obj)).append("manu=").append(Build.MANUFACTURER).append("&");
                b = ((StringBuilder) (obj)).toString();
            }
            context = b;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static String c(Context context)
    {
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context == null)
        {
            return "MOBILE";
        }
        context = context.getActiveNetworkInfo();
        if (context != null)
        {
            return context.getTypeName();
        } else
        {
            return "MOBILE";
        }
    }

}
