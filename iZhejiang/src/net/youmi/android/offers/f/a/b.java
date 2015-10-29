// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f.a;

import android.content.Context;
import net.youmi.android.a.b.c.i;

// Referenced classes of package net.youmi.android.offers.f.a:
//            a

public class b
{

    private static i a;

    public static String a(Context context, String s, String s1)
    {
        try
        {
            a(context);
            context = a.a(s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return context;
    }

    private static void a(Context context)
    {
        net/youmi/android/offers/f/a/b;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new i("androidof", net.youmi.android.offers.f.a.a.g(context));
        }
        net/youmi/android/offers/f/a/b;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public static boolean a(Context context, String s, String s1, long l)
    {
        boolean flag;
        try
        {
            a(context);
            flag = a.a(s, s1, l);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }
}
