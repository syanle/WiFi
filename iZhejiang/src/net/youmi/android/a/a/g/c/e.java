// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.a.a.g;
import net.youmi.android.a.b.g.d.a;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.b.k.n;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            f, a

class e
    implements a
{

    private Context a;
    private net.youmi.android.a.a.g.c.a b;

    e(Context context, net.youmi.android.a.a.g.c.a a1)
    {
        a = context.getApplicationContext();
        b = a1;
    }

    static Context a(e e1)
    {
        return e1.a;
    }

    private void a(String s)
    {
        try
        {
            m.a().a(new f(this, s));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    private net.youmi.android.a.a.e.g.a f(net.youmi.android.a.b.g.e.a a1)
    {
        while (b == null || a1 == null || a1.c() == null) 
        {
            return null;
        }
        return b.f_(a1);
    }

    public void a(int i)
    {
    }

    public void a(net.youmi.android.a.b.g.e.a a1)
    {
        a(net.youmi.android.a.a.h.a.b());
    }

    public void a(net.youmi.android.a.b.g.e.a a1, long l, long l1, int i, long l2)
    {
    }

    public void b(net.youmi.android.a.b.g.e.a a1)
    {
        net.youmi.android.a.a.e.g.a a2 = f(a1);
        String s = net.youmi.android.a.a.h.a.c();
        a1 = "";
        if (a2 != null)
        {
            a1 = a2.f().g().b();
        }
        if (!a1.equals(""))
        {
            a1 = String.format(net.youmi.android.a.a.h.a.d(), new Object[] {
                a1
            });
        } else
        {
            a1 = s;
        }
        a(a1);
    }

    public void c(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1.g() != null && a1.g().getPath() != null && a1.g().exists())
        {
            Object obj = null;
            net.youmi.android.a.a.e.g.a a2 = f(a1);
            a1 = obj;
            if (a2 != null)
            {
                a1 = a2.d();
            }
            if (a1 != null && !"".equals(a1.trim()))
            {
                a(a1);
                return;
            }
        }
    }

    public void d(net.youmi.android.a.b.g.e.a a1)
    {
        long l1;
        net.youmi.android.a.a.h.a.j();
        if (!k.a(a))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        l1 = a1.e();
        long l;
        l = l1;
        if (l1 <= 0L)
        {
            l = 0xa00000L;
        }
        if (!n.a(a, l)) goto _L2; else goto _L1
_L1:
        a1 = net.youmi.android.a.a.h.a.l();
_L3:
        a(a1);
        return;
_L2:
        try
        {
            a1 = net.youmi.android.a.a.h.a.m();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
          goto _L3
        a1 = net.youmi.android.a.a.h.a.n();
          goto _L3
    }

    public void e(net.youmi.android.a.b.g.e.a a1)
    {
    }
}
