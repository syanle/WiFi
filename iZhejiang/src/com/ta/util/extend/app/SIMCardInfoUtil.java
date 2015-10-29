// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.app;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.io.PrintStream;

public class SIMCardInfoUtil
{

    public SIMCardInfoUtil()
    {
    }

    public static String getIMSI(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getSubscriberId();
    }

    public static String getNativePhoneNumber(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getLine1Number();
    }

    public static String getProvidersName(Context context)
    {
        context = getIMSI(context);
        System.out.println(context);
        if (context.startsWith("46000") || context.startsWith("46002"))
        {
            return "\u4E2D\u56FD\u79FB\u52A8";
        }
        if (context.startsWith("46001"))
        {
            return "\u4E2D\u56FD\u8054\u901A";
        }
        if (context.startsWith("46003"))
        {
            return "\u4E2D\u56FD\u7535\u4FE1";
        } else
        {
            return "\u5176\u4ED6\u670D\u52A1\u5546";
        }
    }
}
