// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import java.io.File;
import java.util.HashMap;
import net.youmi.android.AdManager;
import net.youmi.android.a.b.g.d.a;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.b.k.h;
import net.youmi.android.a.b.k.j;
import net.youmi.android.a.b.k.n;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            a, c

class d
    implements a
{

    private Context a;
    private net.youmi.android.a.a.g.c.a b;
    private HashMap c;

    d(Context context, net.youmi.android.a.a.g.c.a a1)
    {
        c = new HashMap();
        a = context.getApplicationContext();
        b = a1;
    }

    public static void a(Context context, int i, String s)
    {
        String s1;
        NotificationManager notificationmanager;
        PendingIntent pendingintent;
        int l;
        int i1;
        try
        {
            notificationmanager = (NotificationManager)context.getSystemService("notification");
            pendingintent = PendingIntent.getActivity(context, i, h.a(context, s), 0x8000000);
            s1 = net.youmi.android.a.a.h.a.s();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        s = j.b(context, s).a();
        s1 = s;
_L4:
        l = 0x1080074;
        i1 = j.b(context, context.getPackageName()).c();
        l = i1;
_L2:
        s = new Notification();
        s.flags = 16;
        s.when = System.currentTimeMillis();
        s.tickerText = net.youmi.android.a.a.h.a.r();
        s.icon = l;
        s.setLatestEventInfo(context, s1, net.youmi.android.a.a.h.a.r(), pendingintent);
        notificationmanager.notify(i, s);
        return;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int f(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null)
        {
            return a1.b().hashCode();
        } else
        {
            return 0;
        }
    }

    private c g(net.youmi.android.a.b.g.e.a a1)
    {
        if (b == null || a1 == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        String s;
        net.youmi.android.a.a.e.g.a a2;
        try
        {
            s = a1.c();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return null;
        }
        if (s == null)
        {
            return null;
        }
        a2 = b.f_(a1);
        if (a2 == null)
        {
            return null;
        }
        if (c.containsKey(s))
        {
            return (c)c.get(s);
        }
        a1 = new c(a, a2, f(a1));
        c.put(s, a1);
        return a1;
        return null;
    }

    public void a(int i)
    {
    }

    public void a(net.youmi.android.a.b.g.e.a a1)
    {
    }

    public void a(net.youmi.android.a.b.g.e.a a1, long l, long l1, int i, long l2)
    {
        if (!AdManager.isDownloadTipsDisplayOnNotification())
        {
            return;
        }
        a1 = g(a1);
        if (a1 != null)
        {
            try
            {
                a1.a(i, l2);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.b.g.e.a a1) { }
        }
        return;
    }

    public void b(net.youmi.android.a.b.g.e.a a1)
    {
        if (!AdManager.isDownloadTipsDisplayOnNotification())
        {
            return;
        }
        a1 = g(a1);
        if (a1 != null)
        {
            try
            {
                a1.a();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.b.g.e.a a1) { }
        }
        return;
    }

    public void c(net.youmi.android.a.b.g.e.a a1)
    {
        if (!AdManager.isDownloadTipsDisplayOnNotification())
        {
            return;
        }
        c c1 = g(a1);
        if (c1 != null)
        {
            try
            {
                if (a1.g() != null && a1.g().getPath() != null && a1.g().exists())
                {
                    c1.b(a1.g().getPath());
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.b.g.e.a a1) { }
        }
        return;
    }

    public void d(net.youmi.android.a.b.g.e.a a1)
    {
        c c1;
        long l;
        long l1;
        try
        {
            if (!AdManager.isDownloadTipsDisplayOnNotification())
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        c1 = g(a1);
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        if (!k.a(a))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        l1 = a1.e();
        l = l1;
        if (l1 <= 0L)
        {
            l = 0xa00000L;
        }
        if (n.a(a, l))
        {
            c1.a(net.youmi.android.a.a.h.a.l());
            return;
        }
        c1.a(net.youmi.android.a.a.h.a.m());
        return;
        c1.a(net.youmi.android.a.a.h.a.n());
    }

    public void e(net.youmi.android.a.b.g.e.a a1)
    {
    }
}
