// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.g.d.a;
import net.youmi.android.a.a.i.a.b.g;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.c.d.c;

// Referenced classes of package net.youmi.android.offers.f:
//            a, c, d, e

public class b
{

    private static String a(Context context, String s)
    {
        net.youmi.android.offers.f.a.b.a(context, net.youmi.android.offers.f.a.b(context), "0");
        Object obj = new StringBuffer(512);
        ((StringBuffer) (obj)).append("lvc=");
        ((StringBuffer) (obj)).append(s);
        s = j.a(((StringBuffer) (obj)).toString());
        s = net.youmi.android.a.a.g.d.a.a(context, net.youmi.android.offers.b.b.k(), s, 500);
        obj = new net.youmi.android.a.b.i.a.b();
        ((net.youmi.android.a.b.i.a.b) (obj)).a("wl");
        ((net.youmi.android.a.b.i.a.b) (obj)).b("a_w_oar");
        ((net.youmi.android.a.b.i.a.b) (obj)).a(500);
        return net.youmi.android.a.c.d.c.a(context, s, ((net.youmi.android.a.b.i.a.b) (obj)));
    }

    public static void a(Context context)
    {
        net/youmi/android/offers/f/b;
        JVM INSTR monitorenter ;
        net.youmi.android.a.c.a.a(new net.youmi.android.offers.f.c(context));
        net/youmi/android/offers/f/b;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    static void a(Context context, String s, boolean flag)
    {
        b(context, s, flag);
    }

    public static void b(Context context)
    {
        net.youmi.android.a.c.a.a(new d(context));
    }

    private static void b(Context context, String s, boolean flag)
    {
        g.a().b();
        try
        {
            s = a(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            g.a().c();
            return;
        }
        if (e.a(s))
        {
            g.a().c();
        } else
        {
            s = net.youmi.android.a.b.b.b.a(s);
            if (net.youmi.android.a.b.b.b.a(s, "c", -1) != 0)
            {
                g.a().c();
                return;
            }
            Object obj = net.youmi.android.a.b.b.b.a(s, "d", null);
            if (obj == null)
            {
                if (!flag)
                {
                    g.a().c();
                    return;
                }
                if (d(context))
                {
                    g.a().c();
                    return;
                }
                try
                {
                    s = net.youmi.android.offers.f.a.b.a(context, net.youmi.android.offers.f.a.d(context), null);
                    if (!e.a(s))
                    {
                        net.youmi.android.offers.f.e.a(context).a(s);
                        return;
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    return;
                }
            } else
            {
                int i = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "svc", 0);
                s = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "url", null);
                obj = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "m5", null);
                try
                {
                    net.youmi.android.offers.f.e.a(context).a(i);
                    net.youmi.android.offers.f.e.a(context).b(((String) (obj)));
                    net.youmi.android.offers.f.e.a(context).a(s);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    return;
                }
            }
        }
    }

    static boolean c(Context context)
    {
        return d(context);
    }

    private static boolean d(Context context)
    {
        context = new File(net.youmi.android.offers.f.a.e(context));
        boolean flag1 = false;
        boolean flag = flag1;
        if (context.exists())
        {
            flag = flag1;
            if (context.isDirectory())
            {
                flag = true;
            }
        }
        return flag;
    }
}
