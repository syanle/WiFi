// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import net.youmi.android.ExpService;
import net.youmi.android.a.a.g.a.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.k.o;
import net.youmi.android.a.c.a.a;
import net.youmi.android.b.d;

public class g
{

    public static final String a = a();
    public static final String b = b();
    public static final String c = c();
    private static int d = -1;
    private static PendingIntent e;
    private static int f = -1;
    private static PendingIntent g;

    private static final String a()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("545c094f4959110f5e4b025d194a1555444c4c42590a585b5754", "a2U9dn73sdLs");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    public static void a(Context context)
    {
        b(context);
        c(context);
        d(context);
    }

    private static void a(Context context, long l)
    {
        try
        {
            o.e(context).setRepeating(1, System.currentTimeMillis(), l, e(context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static void a(Context context, long l, long l1)
    {
        a(context, l);
        b(context, l1);
    }

    public static void a(Context context, b b1)
    {
        a(context, b1, 1000L, 0x36ee80L);
    }

    private static void a(Context context, b b1, long l, long l1)
    {
        b(context, b1);
        a(context, l, l1);
    }

    private static final String b()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("0256584b1f5e435f0d1c50564c5b5e5645014c405c5f0f5b085f", "a2U9dn73sdLc");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    private static void b(Context context)
    {
        try
        {
            o.e(context).cancel(e(context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static void b(Context context, long l)
    {
        o.e(context).set(0, System.currentTimeMillis() + l, f(context));
    }

    private static void b(Context context, b b1)
    {
        Intent intent = new Intent(context, net/youmi/android/ExpService);
        intent.setAction(c);
        intent.putExtra("AdData", b1);
        context.startService(intent);
    }

    private static final String c()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("555b5f1f185a10080a1b53551d59065d46534b5b1b4758095e5b5b53", "a2U9dn73sdLa");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    private static void c(Context context)
    {
        try
        {
            o.e(context).cancel(f(context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static void d(Context context)
    {
        try
        {
            net.youmi.android.b.d.a(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static PendingIntent e(Context context)
    {
        try
        {
            if (e == null)
            {
                Intent intent = new Intent(context, net/youmi/android/ExpService);
                intent.setAction(a);
                e = PendingIntent.getService(context, g(context), intent, 0x10000000);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        return e;
    }

    private static PendingIntent f(Context context)
    {
        try
        {
            if (g == null)
            {
                Intent intent = new Intent(context, net/youmi/android/ExpService);
                intent.setAction(b);
                g = PendingIntent.getService(context, h(context), intent, 0x10000000);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        return g;
    }

    private static int g(Context context)
    {
        if (-1 != d)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        String s;
        s = net.youmi.android.a.c.c.a.a(context);
        String s1 = net.youmi.android.a.c.c.a.b(context);
        int i = net.youmi.android.a.c.c.a.f(context);
        s = net.youmi.android.a.b.b.e.c((new StringBuilder()).append(s).append(s1).append(i).toString());
        context = s;
        try
        {
            if (s.length() > 9)
            {
                context = s.substring(s.length() - 9, s.length());
            }
            d = Integer.parseInt(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        if (-1 == d)
        {
            d = 22314;
        }
        return d;
    }

    private static int h(Context context)
    {
        if (-1 == f)
        {
            f = g(context) + 1;
        }
        return f;
    }

}
