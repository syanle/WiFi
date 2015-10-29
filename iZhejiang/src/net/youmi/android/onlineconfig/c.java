// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;

import android.content.Context;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.c.h;

// Referenced classes of package net.youmi.android.onlineconfig:
//            a

class c extends h
{

    private static c a;

    c(Context context)
    {
        super(context, "dTW3KThJ", net.youmi.android.a.a.b.a.b(context));
    }

    static c a(Context context)
    {
        net/youmi/android/onlineconfig/c;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new c(context);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = a;
        net/youmi/android/onlineconfig/c;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    String a(String s, String s1)
    {
        net.youmi.android.onlineconfig.a a1;
        try
        {
            a1 = new net.youmi.android.onlineconfig.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s1;
        }
        s = s1;
        if (!b(a1))
        {
            break MISSING_BLOCK_LABEL_33;
        }
        s = s1;
        if (a1.a() != null)
        {
            s = a1.a();
        }
        return s;
    }

    boolean a(String s, String s1, long l)
    {
        boolean flag;
        try
        {
            s = new net.youmi.android.onlineconfig.a(s);
            s.b(s1);
            s.a(l);
            flag = a(((net.youmi.android.a.b.c.d) (s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }
}
