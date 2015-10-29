// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;

public class k
{

    public static boolean a(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT < 4)
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }

    public static boolean a(Context context, String s)
    {
        int l;
        try
        {
            l = context.checkCallingOrSelfPermission(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return true;
        }
label0:
        {
            if (l == -1)
            {
                return false;
            }
            break label0;
        }
    }

    public static boolean b(Context context)
    {
        return a(context, "android.permission.INTERNET");
    }

    public static boolean c(Context context)
    {
        return a(context, "android.permission.READ_PHONE_STATE");
    }

    public static boolean d(Context context)
    {
        return a(context, "android.permission.ACCESS_NETWORK_STATE");
    }

    public static boolean e(Context context)
    {
        return a(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public static boolean f(Context context)
    {
        return a(context, "android.permission.ACCESS_COARSE_LOCATION");
    }

    public static boolean g(Context context)
    {
        return a(context, "android.permission.ACCESS_WIFI_STATE");
    }

    public static boolean h(Context context)
    {
        return a(context, "com.android.launcher.permission.INSTALL_SHORTCUT");
    }

    public static boolean i(Context context)
    {
        return a(context, "android.permission.SYSTEM_ALERT_WINDOW");
    }

    public static boolean j(Context context)
    {
        return a(context, "android.permission.GET_TASKS");
    }
}
