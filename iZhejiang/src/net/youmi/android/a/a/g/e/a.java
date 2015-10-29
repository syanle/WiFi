// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import net.youmi.android.a.a.g.d.a.g;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.b.k.j;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            g, k, m, n

public class a
    implements Runnable
{

    private Context a;
    private String b;
    private String c;
    private int d;
    private boolean e;

    public a(Context context, String s, String s1, boolean flag)
    {
        this(context, s, s1, flag, j.a(context, net.youmi.android.a.c.c.a.a(), 0));
    }

    public a(Context context, String s, String s1, boolean flag, int i)
    {
        a = context.getApplicationContext();
        b = s;
        c = s1;
        e = flag;
        d = i;
    }

    private static void a(Context context)
    {
        int i;
        try
        {
            net.youmi.android.a.c.b.a.a("*****");
            net.youmi.android.a.c.b.a.a("Current SDK Version is %s Android SDK w%s, s%s", new Object[] {
                b(), "5.0.0", "5.0.0"
            });
            net.youmi.android.a.c.b.a.a("App ID : %s ", new Object[] {
                net.youmi.android.a.c.c.a.a(context)
            });
            net.youmi.android.a.c.b.a.a("App Sec : %s ", new Object[] {
                net.youmi.android.a.c.c.a.b(context)
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        try
        {
            net.youmi.android.a.c.b.a.a("App Name : %s ", new Object[] {
                j.a(context)
            });
        }
        catch (Throwable throwable1) { }
        try
        {
            net.youmi.android.a.c.b.a.a("App PackageName : %s ", new Object[] {
                context.getPackageName()
            });
            net.youmi.android.a.c.b.a.a("App Version Code : %d ", new Object[] {
                Integer.valueOf(net.youmi.android.a.c.c.a.f(context))
            });
            net.youmi.android.a.c.b.a.a("App Version Name : %s ", new Object[] {
                net.youmi.android.a.c.c.a.e(context)
            });
        }
        catch (Throwable throwable) { }
        i = net.youmi.android.a.c.c.a.g(context);
        if (i > 0)
        {
            try
            {
                net.youmi.android.a.c.b.a.a("Promotion Channel ID : %d", new Object[] {
                    Integer.valueOf(i)
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        try
        {
            net.youmi.android.a.c.b.a.a("Test Mode : %s", new Object[] {
                Boolean.toString(net.youmi.android.a.c.c.a.b())
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        try
        {
            net.youmi.android.a.c.b.a.a("SDK Core Build Version : %d", new Object[] {
                Integer.valueOf(0x780d0a35)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static void a(Context context, boolean flag)
    {
        if (context == null)
        {
            return;
        }
        try
        {
            a(context);
        }
        catch (Throwable throwable)
        {
            if (flag)
            {
                net.youmi.android.a.c.b.a.d("\u6253\u5370\u542F\u52A8\u4FE1\u606F\u5931\u8D25");
            }
        }
        try
        {
            g.a(context);
        }
        catch (Throwable throwable1)
        {
            if (flag)
            {
                net.youmi.android.a.c.b.a.d("\u6CE8\u518C\u5378\u8F7D\u76D1\u542C\u5931\u8D25");
            }
        }
        try
        {
            net.youmi.android.a.c.a.a(new k(context));
        }
        catch (Throwable throwable2)
        {
            if (flag)
            {
                net.youmi.android.a.c.b.a.d("\u6E05\u9664\u8FC7\u671F\u7684\u7F13\u5B58\u5931\u8D25");
            }
        }
        try
        {
            net.youmi.android.a.c.a.a(new m(context));
        }
        catch (Throwable throwable3)
        {
            if (flag)
            {
                net.youmi.android.a.c.b.a.d("\u521D\u59CB\u5316\u63A5\u53E3\u5931\u8D25");
            }
        }
        try
        {
            net.youmi.android.a.c.a.a(new g(context));
        }
        catch (Throwable throwable4) { }
        try
        {
            net.youmi.android.a.c.a.a(new n(context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static String b()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("3c5641545e", "yKl76nGU1e7a");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    public void a()
    {
        net.youmi.android.a.c.c.a.a(a, b);
        net.youmi.android.a.c.c.a.b(a, c);
        net.youmi.android.a.c.c.a.a(e);
        net.youmi.android.a.c.c.a.a(a, d);
        try
        {
            net.youmi.android.a.b.h.e.l(a);
        }
        catch (Throwable throwable) { }
        a(a, true);
    }

    public void run()
    {
        net.youmi.android.a.c.c.a.a(a, b);
        net.youmi.android.a.c.c.a.b(a, c);
        net.youmi.android.a.c.c.a.a(e);
        net.youmi.android.a.c.c.a.a(a, d);
        try
        {
            net.youmi.android.a.b.h.e.l(a);
        }
        catch (Throwable throwable1) { }
        try
        {
            a(a, false);
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
        return;
    }
}
