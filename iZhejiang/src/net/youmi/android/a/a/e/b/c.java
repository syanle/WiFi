// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.b;

import android.content.Context;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.i;
import net.youmi.android.a.b.d.g;

public class c
{

    private static i a;

    public static String a(Context context, String s, String s1)
    {
        if (e.b(s) == null)
        {
            return s1;
        }
        s = g.a(s);
        if (e.a(s))
        {
            break MISSING_BLOCK_LABEL_34;
        }
        context = a(context).a(s, s1);
        return context;
        context;
        return s1;
    }

    private static i a(Context context)
    {
        net/youmi/android/a/a/e/b/c;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new i("wEjvZpk3", net.youmi.android.a.a.b.a.d(context));
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = a;
        net/youmi/android/a/a/e/b/c;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static boolean a(Context context, String s, String s1, long l)
    {
        if (e.b(s) == null)
        {
            return false;
        }
        s = g.a(s);
        if (e.a(s) || s1 == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        boolean flag = a(context).a(s, s1, l);
        return flag;
        context;
        return false;
    }
}
