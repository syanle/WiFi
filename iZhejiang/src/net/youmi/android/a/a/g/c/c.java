// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import net.youmi.android.a.a.a.a.g;
import net.youmi.android.a.a.e.g.a;
import net.youmi.android.a.b.k.j;

class c
{

    private Context a;
    private NotificationManager b;
    private Notification c;
    private PendingIntent d;
    private PendingIntent e;
    private int f;
    private g g;
    private net.youmi.android.a.a.a.a.a h;
    private String i;
    private String j;
    private String k;

    c(Context context, a a1, int l)
    {
        a = context.getApplicationContext();
        f = l;
        if (a1 != null)
        {
            try
            {
                h = a1.f();
                if (h != null)
                {
                    g = h.g();
                }
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        b();
    }

    private void b()
    {
        if (g != null)
        {
            String s = g.b();
            if (s != null)
            {
                i = String.format(net.youmi.android.a.a.h.a.f(), new Object[] {
                    s
                });
                k = String.format(net.youmi.android.a.a.h.a.k(), new Object[] {
                    s
                });
                j = String.format(net.youmi.android.a.a.h.a.i(), new Object[] {
                    s
                });
            }
        }
        if (i == null)
        {
            i = net.youmi.android.a.a.h.a.e();
        }
        if (k == null)
        {
            k = net.youmi.android.a.a.h.a.j();
        }
        if (j == null)
        {
            j = net.youmi.android.a.a.h.a.q();
        }
    }

    private boolean c()
    {
        NotificationManager notificationmanager;
        try
        {
            if (b == null)
            {
                b = (NotificationManager)a.getSystemService("notification");
            }
            notificationmanager = b;
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return notificationmanager != null;
    }

    private boolean c(String s)
    {
        boolean flag = false;
        try
        {
            s = net.youmi.android.a.b.k.j.d(a, s);
            e = PendingIntent.getActivity(a, f, s, 0x8000000);
            s = e;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        if (s != null)
        {
            flag = true;
        }
        return flag;
    }

    private boolean d()
    {
        boolean flag = false;
        Notification notification;
        try
        {
            if (c == null)
            {
                c = new Notification();
                c.when = System.currentTimeMillis();
            }
            notification = c;
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (notification != null)
        {
            flag = true;
        }
        return flag;
    }

    private boolean e()
    {
        boolean flag = false;
        PendingIntent pendingintent;
        try
        {
            if (d == null)
            {
                Intent intent = new Intent();
                d = PendingIntent.getActivity(a, f, intent, 0x8000000);
            }
            pendingintent = d;
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (pendingintent != null)
        {
            flag = true;
        }
        return flag;
    }

    void a()
    {
        if (!c() || !d())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        if (!e())
        {
            return;
        }
        try
        {
            c.flags = 16;
            c.setLatestEventInfo(a, i, net.youmi.android.a.a.h.a.a(), d);
            c.when = System.currentTimeMillis();
            c.icon = 0x1080081;
            b.notify(f, c);
            return;
        }
        catch (Throwable throwable) { }
    }

    void a(int l, long l1)
    {
        if (!c() || !d())
        {
            break MISSING_BLOCK_LABEL_127;
        }
        if (!e())
        {
            return;
        }
        try
        {
            StringBuilder stringbuilder = new StringBuilder(100);
            c.flags = 16;
            c.setLatestEventInfo(a, i, stringbuilder.append(net.youmi.android.a.a.h.a.g()).append(l).append("% . ").append(net.youmi.android.a.a.h.a.h()).append(l1 / 1024L).append("KB/s").toString(), d);
            c.icon = 0x1080081;
            b.notify(f, c);
            return;
        }
        catch (Throwable throwable) { }
    }

    void a(String s)
    {
        if (!c() || !d())
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (!e())
        {
            return;
        }
        try
        {
            c.flags = 16;
            c.setLatestEventInfo(a, k, s, d);
            c.when = System.currentTimeMillis();
            c.icon = 0x1080082;
            b.notify(f, c);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
    }

    void b(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!c() || !d() || !c(s)) goto _L1; else goto _L3
_L3:
        c.flags = 16;
        c.setLatestEventInfo(a, j, net.youmi.android.a.a.h.a.p(), e);
        c.when = System.currentTimeMillis();
        c.icon = 0x1080082;
        b.notify(f, c);
        return;
        s;
    }
}
