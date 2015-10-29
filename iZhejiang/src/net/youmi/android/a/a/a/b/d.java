// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.b;

import android.content.Context;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.c.h;
import net.youmi.android.a.b.d.g;

// Referenced classes of package net.youmi.android.a.a.a.b:
//            a, b

public class d extends h
{

    private static d a;

    public d(Context context)
    {
        super(context, "aJoW5pml", net.youmi.android.a.a.b.a.a(context));
    }

    public static d a(Context context)
    {
        net/youmi/android/a/a/a/b/d;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new d(context);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = a;
        net/youmi/android/a/a/a/b/d;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public net.youmi.android.a.a.a.b.a a(Context context, String s, b b)
    {
        boolean flag;
        try
        {
            context = new net.youmi.android.a.a.a.b.a(s, b);
            flag = b(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
label0:
        {
            if (flag)
            {
                return context;
            }
            break label0;
        }
    }

    public boolean a(Context context, net.youmi.android.a.a.a.b.a a1)
    {
        return a(((net.youmi.android.a.b.c.d) (a1)));
    }

    public boolean a(String s)
    {
        return c(g.a(s));
    }
}
