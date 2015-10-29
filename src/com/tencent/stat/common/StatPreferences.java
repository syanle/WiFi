// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class StatPreferences
{

    private static SharedPreferences defaultPerferences = null;

    static SharedPreferences getInstance(Context context)
    {
        if (defaultPerferences == null)
        {
            defaultPerferences = PreferenceManager.getDefaultSharedPreferences(context);
        }
        return defaultPerferences;
    }

    public static long getLong(Context context, String s, long l)
    {
        s = (new StringBuilder()).append("").append(s).toString();
        return getInstance(context).getLong(s, l);
    }

    public static String getString(Context context, String s, String s1)
    {
        s = (new StringBuilder()).append("").append(s).toString();
        return getInstance(context).getString(s, s1);
    }

    public static void putLong(Context context, String s, long l)
    {
        s = (new StringBuilder()).append("").append(s).toString();
        context = getInstance(context).edit();
        context.putLong(s, l);
        context.commit();
    }

    public static void putString(Context context, String s, String s1)
    {
        s = (new StringBuilder()).append("").append(s).toString();
        context = getInstance(context).edit();
        context.putString(s, s1);
        context.commit();
    }

}
