// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import net.youmi.android.a.a.e.g.f;
import net.youmi.android.a.b.g.d.a;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.b.k.n;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            a

class g
    implements a
{

    private net.youmi.android.a.a.g.c.a a;

    g(net.youmi.android.a.a.g.c.a a1)
    {
        a = a1;
    }

    private void a(net.youmi.android.a.a.e.g.a a1, f f1, int i, int j, long l)
    {
        if (a1 == null || f1 == null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        if (f1.c() == null)
        {
            return;
        }
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("a", a1.f().a());
        jsonobject.put("b", i);
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        jsonobject.put("c", j);
        if (l < 0L)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        jsonobject.put("d", l);
        a1 = new StringBuilder();
        a1.append("javascript:");
        a1.append(f1.c()).append("(").append(f1.b()).append(",").append(jsonobject.toString()).append(")");
        net.youmi.android.a.a.e.f.a.a().a(f1.a(), a1.toString());
        return;
        a1;
    }

    private void a(net.youmi.android.a.b.g.e.a a1, int i, int j, long l)
    {
        try
        {
            if (a == null)
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        a(a.f_(a1), a.h(a1), i, j, l);
        return;
    }

    public void a(int i)
    {
    }

    public void a(net.youmi.android.a.a.e.g.a a1, f f1)
    {
        try
        {
            a(a1, f1, 3, -1, -1L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.a a1)
        {
            return;
        }
    }

    public void a(net.youmi.android.a.b.g.e.a a1)
    {
    }

    public void a(net.youmi.android.a.b.g.e.a a1, long l, long l1, int i, long l2)
    {
        try
        {
            a(a1, 2, i, l2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
    }

    public void b(net.youmi.android.a.b.g.e.a a1)
    {
        try
        {
            a(a1, 5, -1, -1L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
    }

    public void c(net.youmi.android.a.b.g.e.a a1)
    {
        try
        {
            a(a1, 1, -1, -1L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
    }

    public void d(net.youmi.android.a.b.g.e.a a1)
    {
        byte byte0;
        boolean flag;
        flag = false;
        byte0 = flag;
        long l1;
        if (!k.a(a.b()))
        {
            break MISSING_BLOCK_LABEL_66;
        }
        l1 = a1.e();
        long l;
        l = l1;
        if (l1 <= 0L)
        {
            l = 0xa00000L;
        }
        boolean flag1 = n.a(a.b(), l);
        byte0 = flag;
        if (!flag1)
        {
            byte0 = 6;
        }
_L1:
        Throwable throwable;
        try
        {
            a(a1, byte0, -1, -1L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        throwable;
        byte0 = 0;
          goto _L1
    }

    public void e(net.youmi.android.a.b.g.e.a a1)
    {
    }
}
