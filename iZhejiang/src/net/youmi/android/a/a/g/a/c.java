// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;
import net.youmi.android.a.a.g.d.a;
import net.youmi.android.a.a.g.d.a.d;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.c.c.b;
import net.youmi.android.b.k;

// Referenced classes of package net.youmi.android.a.a.g.a:
//            h, d, g

public class c
{

    public static int a = -1;
    private static int b = 20000;
    private static int c = 20001;
    private Context d;

    public c(Context context)
    {
        d = null;
        d = context.getApplicationContext();
    }

    static Context a(c c1)
    {
        return c1.d;
    }

    private d a(String s, net.youmi.android.a.a.e.g.b b1, int i)
    {
        long l = System.currentTimeMillis();
        b1 = new d(l, net.youmi.android.a.a.g.d.a.a(d, b1, i), i, l + 0x1499700L);
        b1.h = s;
        return b1;
    }

    private d a(String s, net.youmi.android.a.a.e.g.b b1, int i, String s1, long l)
    {
        s = a(s, b1, i);
        s.f = s1;
        s.g = l;
        return s;
    }

    private void a(String s)
    {
        net.youmi.android.a.a.g.a.b.a a1;
        a1 = net.youmi.android.a.a.g.a.a.a.a(d).a(s);
        s = net.youmi.android.a.a.h.a.C();
        if (a1 == null) goto _L2; else goto _L1
_L1:
        if (e.a(a1.g())) goto _L4; else goto _L3
_L3:
        s = a1.g();
_L2:
        b(s);
        return;
_L4:
        switch (a1.f())
        {
        default:
            s = net.youmi.android.a.a.h.a.C();
            break;

        case 3: // '\003'
            s = net.youmi.android.a.a.h.a.B();
            break;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private void a(String s, long l)
    {
        int i = 0;
        s = net.youmi.android.a.a.g.a.a.a.a(d).a(s);
        if (s != null)
        {
            try
            {
                i = s.b();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                i = 0;
            }
        }
        if (i <= 0)
        {
            return;
        } else
        {
            s = net.youmi.android.a.c.c.a.a(d);
            String s1 = (new b(d)).a();
            int j = net.youmi.android.a.c.c.a.f(d);
            (new k(d, s, s1, "a_wall", String.valueOf(j))).b(net.youmi.android.b.b.b().a("unexp").b(String.valueOf(i)).a(l));
            return;
        }
    }

    private int b()
    {
        Object obj = net.youmi.android.a.a.g.a.a.c.a(d).c();
        if (obj == null)
        {
            return b;
        }
        if (((List) (obj)).size() == 0)
        {
            return b;
        }
        Object obj1 = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)d.getSystemService("activity")).getRunningTasks(0x7fffffff).get(0)).topActivity.getPackageName();
        String s = g.a(((String) (obj1)));
        obj = net.youmi.android.a.a.g.a.a.c.a(d).b(s);
        if (obj == null)
        {
            obj = net.youmi.android.a.a.g.a.a.c.a(d).d();
            if (obj != null)
            {
                long l = System.currentTimeMillis();
                long l2 = ((net.youmi.android.a.a.g.a.b.b) (obj)).d();
                if (f.a(d, net.youmi.android.a.a.g.a.h.b(((net.youmi.android.a.a.g.a.b.b) (obj)).b()), null) != null)
                {
                    a(((net.youmi.android.a.a.g.a.b.b) (obj)).b());
                    a(((net.youmi.android.a.a.g.a.b.b) (obj)).b(), l - l2);
                } else
                {
                    if (((net.youmi.android.a.a.g.a.b.b) (obj)).g() == 1)
                    {
                        d();
                    } else
                    {
                        c();
                    }
                    net.youmi.android.a.a.g.a.a.c.a(d).c(((net.youmi.android.a.a.g.a.b.b) (obj)));
                }
            }
            net.youmi.android.a.a.g.a.a.c.a(d).a();
            return c;
        }
        if (((net.youmi.android.a.a.g.a.b.b) (obj)).f() == 0)
        {
            obj1 = net.youmi.android.a.a.g.a.a.c.a(d).d();
            if (obj1 != null)
            {
                long l1 = System.currentTimeMillis();
                long l3 = ((net.youmi.android.a.a.g.a.b.b) (obj1)).d();
                if (f.a(d, net.youmi.android.a.a.g.a.h.b(((net.youmi.android.a.a.g.a.b.b) (obj1)).b()), null) != null)
                {
                    a(((net.youmi.android.a.a.g.a.b.b) (obj1)).b());
                    a(((net.youmi.android.a.a.g.a.b.b) (obj1)).b(), l1 - l3);
                } else
                {
                    if (((net.youmi.android.a.a.g.a.b.b) (obj1)).g() == 1)
                    {
                        d();
                    } else
                    {
                        c();
                    }
                    net.youmi.android.a.a.g.a.a.c.a(d).c(((net.youmi.android.a.a.g.a.b.b) (obj1)));
                }
            }
            net.youmi.android.a.a.g.a.a.c.a(d).a();
            ((net.youmi.android.a.a.g.a.b.b) (obj)).a(1);
            ((net.youmi.android.a.a.g.a.b.b) (obj)).b(System.currentTimeMillis());
            net.youmi.android.a.a.g.a.a.c.a(d).b(((net.youmi.android.a.a.g.a.b.b) (obj)));
            return c;
        }
        if (((net.youmi.android.a.a.g.a.b.b) (obj)).f() == 1)
        {
            String s1 = f.a(d, net.youmi.android.a.a.g.a.h.b(s), null);
            if (s1 == null)
            {
                net.youmi.android.a.a.g.a.a.c.a(d).a(s);
                if (((net.youmi.android.a.a.g.a.b.b) (obj)).g() == 1)
                {
                    d();
                } else
                {
                    c();
                }
                return c;
            }
            if (System.currentTimeMillis() - ((net.youmi.android.a.a.g.a.b.b) (obj)).d() >= ((net.youmi.android.a.a.g.a.b.b) (obj)).e())
            {
                net.youmi.android.a.a.g.a.a.c.a(d).c(((net.youmi.android.a.a.g.a.b.b) (obj)));
                net.youmi.android.a.a.e.g.b b1 = new net.youmi.android.a.a.e.g.b();
                b1.e(net.youmi.android.a.c.a.a.b(s1, net.youmi.android.a.a.g.a.h.b(s)));
                if (((net.youmi.android.a.a.g.a.b.b) (obj)).g() == 1)
                {
                    net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(d, a(((String) (obj1)), b1, 4)));
                } else
                {
                    s = net.youmi.android.a.c.a.a.b(f.a(d, net.youmi.android.a.a.g.a.h.a(s), null), net.youmi.android.a.a.g.a.h.a(s));
                    net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(d, a(((String) (obj1)), b1, 13, s, ((net.youmi.android.a.a.g.a.b.b) (obj)).e())));
                }
            }
            return c;
        } else
        {
            return c;
        }
    }

    private void b(String s)
    {
        if (!e.a(s))
        {
            m.a().a(new net.youmi.android.a.a.g.a.d(this, s));
        }
    }

    private void c()
    {
        b(net.youmi.android.a.a.h.a.D());
    }

    private void d()
    {
        b(net.youmi.android.a.a.h.a.F());
    }

    public void a()
    {
        if (b == b())
        {
            net.youmi.android.a.a.g.a.g.a(d);
        }
    }

}
