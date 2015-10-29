// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.db;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;

public class c
{

    private static final String a = "socialize_identity_info";
    private static final String b = "socialize_identity_unshow";

    public c()
    {
    }

    public static void a(Context context)
    {
        com/umeng/socialize/db/c;
        JVM INSTR monitorenter ;
        context = context.getSharedPreferences("umeng_socialize", 2).edit();
        context.remove("socialize_identity_info");
        context.commit();
        com/umeng/socialize/db/c;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public static void a(Context context, String s)
    {
        com/umeng/socialize/db/c;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("umeng_socialize", 2).edit();
        editor.putString("socialize_identity_info", s);
        editor.commit();
        if (e(context) && !TextUtils.isEmpty(s))
        {
            a(context, false);
        }
        com/umeng/socialize/db/c;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public static void a(Context context, boolean flag)
    {
        synchronized (context.getSharedPreferences("umeng_socialize", 1))
        {
            android.content.SharedPreferences.Editor editor = context.edit();
            editor.putBoolean("socialize_identity_unshow", flag);
            editor.commit();
        }
        return;
        exception;
        context;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static SHARE_MEDIA b(Context context)
    {
        return SHARE_MEDIA.convertToEmun(context.getSharedPreferences("umeng_socialize", 1).getString("socialize_identity_info", ""));
    }

    public static boolean c(Context context)
    {
        return b(context) != null;
    }

    public static boolean d(Context context)
    {
        return "custom".equals(context.getSharedPreferences("umeng_socialize", 1).getString("socialize_identity_info", ""));
    }

    public static boolean e(Context context)
    {
        boolean flag1 = c(context);
        boolean flag = flag1;
        if (!flag1)
        {
            flag = context.getSharedPreferences("umeng_socialize", 1).getBoolean("socialize_identity_unshow", false);
        }
        return flag;
    }

    public static boolean f(Context context)
    {
        boolean flag = c(context);
        if (!flag)
        {
            flag = e(context);
        }
        if (flag)
        {
            return flag;
        } else
        {
            return d(context);
        }
    }
}
