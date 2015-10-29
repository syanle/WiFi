// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import java.util.Timer;
import net.youmi.android.AdService;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.k.o;
import net.youmi.android.a.c.a;
import net.youmi.android.offers.OffersManager;
import net.youmi.android.offers.f;

// Referenced classes of package net.youmi.android.offers.d.b:
//            i, j, k

public class h
{

    private static PendingIntent a;
    private static int b = -1;

    public static void a(Context context)
    {
        try
        {
            if (!OffersManager.isUsingServerCallBack())
            {
                net.youmi.android.a.c.a.a(new i(context));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void a(Context context, long l)
    {
        boolean flag;
        try
        {
            flag = OffersManager.isUsingServerCallBack();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (flag || l <= 0L)
        {
            return;
        }
        try
        {
            context = context.getApplicationContext();
            o.e(context).setInexactRepeating(1, System.currentTimeMillis() + l, 60000L, e(context));
            (new Timer()).schedule(new j(context), l);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void b(Context context)
    {
        try
        {
            Context context1 = context.getApplicationContext();
            k.b(context);
            o.e(context1).cancel(e(context1));
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
            if (k.d(context))
            {
                b(context);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    static PendingIntent d(Context context)
    {
        return e(context);
    }

    private static PendingIntent e(Context context)
    {
        if (a == null)
        {
            try
            {
                Context context1 = context.getApplicationContext();
                f f1 = new f();
                context = new Intent(context, net/youmi/android/AdService);
                f1.a(context);
                a = PendingIntent.getService(context1, f(context1), context, 0x8000000);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        return a;
    }

    private static int f(Context context)
    {
        if (-1 != b)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        String s;
        s = net.youmi.android.a.c.c.a.a(context);
        String s1 = net.youmi.android.a.c.c.a.b(context);
        int l = net.youmi.android.a.c.c.a.f(context);
        s = net.youmi.android.a.b.b.e.c((new StringBuilder()).append(s).append(s1).append(l).toString());
        context = s;
        try
        {
            if (s.length() > 9)
            {
                context = s.substring(s.length() - 9, s.length());
            }
            b = Integer.parseInt(context) - 5;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        if (-1 == b)
        {
            b = 0x6db36d0;
        }
        return b;
    }

}
