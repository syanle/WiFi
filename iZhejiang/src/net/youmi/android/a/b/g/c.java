// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g;

import android.content.Context;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import net.youmi.android.a.b.g.d.b;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.b.g:
//            e

public abstract class c extends a
    implements b, net.youmi.android.a.b.g.d.c
{

    private Context a;
    private net.youmi.android.a.b.g.c.a b;
    private HashSet c;

    public c(Context context, net.youmi.android.a.b.g.c.a a1)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("context is null");
        }
        a = context.getApplicationContext();
        if (a1 == null)
        {
            throw new IOException("Cache Directory is null");
        } else
        {
            b = a1;
            c = new HashSet();
            net.youmi.android.a.b.g.e.a().a(this);
            return;
        }
    }

    private boolean o(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!c.contains(a1)) goto _L1; else goto _L3
_L3:
        boolean flag = c.remove(a1);
        if (!flag);
        return true;
        a1;
        return false;
    }

    protected abstract void a(net.youmi.android.a.b.g.e.a a1);

    public void a(net.youmi.android.a.b.g.e.a a1, long l1, long l2, int j, long l3)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = c.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int i1;
        int j1;
        try
        {
            b(a1, l1, l2, j, l3);
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L1; else goto _L4
_L4:
        if (list.size() <= 0) goto _L1; else goto _L5
_L5:
        i1 = 0;
_L7:
        j1 = list.size();
        if (i1 >= j1) goto _L1; else goto _L6
_L6:
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(i1)).a(a1, l1, l2, j, l3);
        }
        catch (Throwable throwable1) { }
        i1++;
          goto _L7
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public boolean a(String s)
    {
        s = new net.youmi.android.a.b.g.e.a(s);
        if (!s.d())
        {
            return false;
        }
        s.a(b.c(s.b()));
        if (!net.youmi.android.a.b.g.e.a().a(a, s, this))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        c.add(s);
        return true;
        s;
        return false;
    }

    protected abstract void b(net.youmi.android.a.b.g.e.a a1);

    protected abstract void b(net.youmi.android.a.b.g.e.a a1, long l1, long l2, int j, long l3);

    public void c(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = c.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int j;
        int i1;
        try
        {
            a(a1);
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L1; else goto _L4
_L4:
        if (list.size() <= 0) goto _L1; else goto _L5
_L5:
        j = 0;
_L7:
        i1 = list.size();
        if (j >= i1) goto _L1; else goto _L6
_L6:
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(j)).c(a1);
        }
        catch (Throwable throwable1) { }
        j++;
          goto _L7
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public void d(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = c.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int j;
        int i1;
        try
        {
            b(a1);
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L1; else goto _L4
_L4:
        if (list.size() <= 0) goto _L1; else goto _L5
_L5:
        j = 0;
_L7:
        i1 = list.size();
        if (j >= i1) goto _L1; else goto _L6
_L6:
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(j)).d(a1);
        }
        catch (Throwable throwable1) { }
        j++;
          goto _L7
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public void e(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        int j;
        int i1;
        try
        {
            if (!o(a1))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        k(a1);
        list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.size() <= 0) goto _L2; else goto _L3
_L3:
        j = 0;
_L4:
        i1 = list.size();
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(j)).e(a1);
        }
        catch (Throwable throwable) { }
        j++;
        if (true) goto _L4; else goto _L2
_L2:
    }

    public void f(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        int j;
        int i1;
        try
        {
            if (!o(a1))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        l(a1);
        list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.size() <= 0) goto _L2; else goto _L3
_L3:
        j = 0;
_L4:
        i1 = list.size();
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(j)).f(a1);
        }
        catch (Throwable throwable) { }
        j++;
        if (true) goto _L4; else goto _L2
_L2:
    }

    public void g(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        int j;
        int i1;
        try
        {
            if (!o(a1))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        n(a1);
        list = g();
        j = 0;
_L2:
        i1 = list.size();
        if (j < i1)
        {
            try
            {
                ((net.youmi.android.a.b.g.d.c)list.get(j)).g(a1);
            }
            catch (Throwable throwable) { }
            j++;
        } else
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean g_(net.youmi.android.a.b.g.e.a a1)
    {
        return false;
    }

    public void h_(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        int j;
        int i1;
        try
        {
            if (!o(a1))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        m(a1);
        list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.size() <= 0) goto _L2; else goto _L3
_L3:
        j = 0;
_L4:
        i1 = list.size();
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            ((net.youmi.android.a.b.g.d.c)list.get(j)).h_(a1);
        }
        catch (Throwable throwable) { }
        j++;
        if (true) goto _L4; else goto _L2
_L2:
    }

    public boolean i(net.youmi.android.a.b.g.e.a a1)
    {
        return true;
    }

    protected abstract void k(net.youmi.android.a.b.g.e.a a1);

    protected abstract void l(net.youmi.android.a.b.g.e.a a1);

    protected abstract void m(net.youmi.android.a.b.g.e.a a1);

    protected abstract void n(net.youmi.android.a.b.g.e.a a1);
}
