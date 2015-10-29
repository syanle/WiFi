// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;

public class o
{

    public static NotificationManager a(Context context)
    {
        return (NotificationManager)context.getSystemService("notification");
    }

    public static TelephonyManager b(Context context)
    {
        return (TelephonyManager)context.getSystemService("phone");
    }

    public static WifiManager c(Context context)
    {
        return (WifiManager)context.getSystemService("wifi");
    }

    public static WindowManager d(Context context)
    {
        return (WindowManager)context.getSystemService("window");
    }

    public static AlarmManager e(Context context)
    {
        return (AlarmManager)context.getSystemService("alarm");
    }

    public static ActivityManager f(Context context)
    {
        return (ActivityManager)context.getSystemService("activity");
    }
}
