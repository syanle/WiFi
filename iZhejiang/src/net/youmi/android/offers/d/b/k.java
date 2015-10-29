// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.content.Context;
import android.content.SharedPreferences;
import net.youmi.android.offers.b.a;

public class k
{

    private static long a(Context context, String s)
    {
        long l;
        try
        {
            l = context.getSharedPreferences(net.youmi.android.offers.b.a.e(), 0).getLong(s, 0L);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return 0L;
        }
        return l;
    }

    static void a(Context context)
    {
        try
        {
            context.getSharedPreferences(net.youmi.android.offers.b.a.e(), 0).edit().putLong(net.youmi.android.offers.b.a.f(), System.currentTimeMillis()).commit();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    static void b(Context context)
    {
        try
        {
            context.getSharedPreferences(net.youmi.android.offers.b.a.e(), 0).edit().putLong(net.youmi.android.offers.b.a.f(), 0L).commit();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void c(Context context)
    {
        try
        {
            context.getSharedPreferences(net.youmi.android.offers.b.a.e(), 0).edit().putLong(net.youmi.android.offers.b.a.g(), System.currentTimeMillis()).commit();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    static boolean d(Context context)
    {
        boolean flag = false;
        long l;
        long l1;
        try
        {
            l = a(context, net.youmi.android.offers.b.a.f());
            l1 = System.currentTimeMillis();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (l1 - l > 0x927c0L)
        {
            flag = true;
        }
        return flag;
    }
}
