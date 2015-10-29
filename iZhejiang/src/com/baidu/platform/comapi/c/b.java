// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.telephony.TelephonyManager;
import com.baidu.platform.comjni.engine.AppEngine;

public class b
{

    public static boolean a = false;
    public static String b = "";
    public static int c = 0;

    public static void a(Context context)
    {
        context = b(context);
        if (context != null && context.isAvailable())
        {
            String s = context.getTypeName().toLowerCase();
            if (s.equals("wifi") && context.isConnected())
            {
                AppEngine.SetProxyInfo(null, 0);
                a = false;
            } else
            if (s.equals("mobile") || s.equals("wifi") && !a(((NetworkInfo) (context))))
            {
                context = context.getExtraInfo();
                a = false;
                if (context != null)
                {
                    context = context.toLowerCase();
                    if (context.startsWith("cmwap") || context.startsWith("uniwap") || context.startsWith("3gwap"))
                    {
                        b = "10.0.0.172";
                        c = 80;
                        a = true;
                    } else
                    if (context.startsWith("ctwap"))
                    {
                        b = "10.0.0.200";
                        c = 80;
                        a = true;
                    } else
                    if (context.startsWith("cmnet") || context.startsWith("uninet") || context.startsWith("ctnet") || context.startsWith("3gnet"))
                    {
                        a = false;
                    }
                } else
                {
                    context = Proxy.getDefaultHost();
                    int i = Proxy.getDefaultPort();
                    if (context != null && context.length() > 0)
                    {
                        if ("10.0.0.172".equals(context.trim()))
                        {
                            b = "10.0.0.172";
                            c = i;
                            a = true;
                        } else
                        if ("10.0.0.200".equals(context.trim()))
                        {
                            b = "10.0.0.200";
                            c = 80;
                            a = true;
                        }
                    }
                }
                if (a)
                {
                    AppEngine.SetProxyInfo(b, c);
                    return;
                } else
                {
                    AppEngine.SetProxyInfo(null, 0);
                    return;
                }
            }
        }
    }

    private static boolean a(NetworkInfo networkinfo)
    {
        boolean flag = true;
        if (networkinfo == null) goto _L2; else goto _L1
_L1:
        if (1 != networkinfo.getType()) goto _L4; else goto _L3
_L3:
        boolean flag1 = networkinfo.isConnected();
        if (!flag1) goto _L4; else goto _L5
_L5:
        return flag;
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
        networkinfo;
        networkinfo.printStackTrace();
        return false;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L6
_L6:
    }

    public static NetworkInfo b(Context context)
    {
        context = (ConnectivityManager)context.getSystemService("connectivity");
        try
        {
            context = context.getActiveNetworkInfo();
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
        NetworkInfo networkinfo;
        int i;
        i = 1;
        networkinfo = b(context);
        if (networkinfo == null) goto _L2; else goto _L1
_L1:
        if (networkinfo.getType() != 1) goto _L4; else goto _L3
_L3:
        return Integer.toString(i);
_L4:
        ((TelephonyManager)context.getSystemService("phone")).getNetworkType();
        JVM INSTR tableswitch 1 15: default 112
    //                   1 132
    //                   2 132
    //                   3 150
    //                   4 127
    //                   5 138
    //                   6 138
    //                   7 138
    //                   8 144
    //                   9 150
    //                   10 150
    //                   11 117
    //                   12 138
    //                   13 122
    //                   14 156
    //                   15 150;
           goto _L2 _L5 _L5 _L6 _L7 _L8 _L8 _L8 _L9 _L6 _L6 _L10 _L8 _L11 _L12 _L6
_L2:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L10:
        i = 2;
        continue; /* Loop/switch isn't completed */
_L11:
        i = 4;
        continue; /* Loop/switch isn't completed */
_L7:
        i = 5;
        continue; /* Loop/switch isn't completed */
_L5:
        i = 6;
        continue; /* Loop/switch isn't completed */
_L8:
        i = 7;
        continue; /* Loop/switch isn't completed */
_L9:
        i = 8;
        continue; /* Loop/switch isn't completed */
_L6:
        i = 9;
        continue; /* Loop/switch isn't completed */
_L12:
        i = 10;
        if (true) goto _L3; else goto _L13
_L13:
    }

}
