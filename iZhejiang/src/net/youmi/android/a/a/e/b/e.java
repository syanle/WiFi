// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.b;

import android.content.Context;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.c.h;
import net.youmi.android.a.b.d.g;

// Referenced classes of package net.youmi.android.a.a.e.b:
//            b

public class e
{

    private static h a;

    public static String a(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (!a(context).b(s = new b(g.a(s)))) goto _L1; else goto _L3
_L3:
        context = s.a();
        return context;
        context;
        return null;
    }

    private static h a(Context context)
    {
        net/youmi/android/a/a/e/b/e;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new h(context, "ObeolEO5", net.youmi.android.a.a.b.a.e(context), 0);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = a;
        net/youmi/android/a/a/e/b/e;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static boolean a(Context context, String s, String s1, long l)
    {
        if (context == null || s == null || s1 == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            s = new b(g.a(s), l);
            s.b(s1);
            flag = a(context).a(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }
}
