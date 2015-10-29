// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.g.d.b;
import net.youmi.android.a.b.g.d.c;
import net.youmi.android.a.b.g.d.f;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.b.g:
//            e

public abstract class d extends a
    implements b, c, f
{

    private HashSet a;
    private HashSet b;
    private HashMap c;
    protected Context d;

    public d(Context context)
    {
        d = context.getApplicationContext();
        c = new HashMap();
        a = new HashSet();
        b = new HashSet();
        net.youmi.android.a.b.g.e.a().a(this);
    }

    protected File a(net.youmi.android.a.b.g.e.a a1, String s)
    {
        try
        {
            a1 = a(a1).c(a().a(a1, s));
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return null;
        }
        return a1;
    }

    protected abstract net.youmi.android.a.b.g.b.b a();

    protected abstract net.youmi.android.a.b.g.c.a a(net.youmi.android.a.b.g.e.a a1);

    protected abstract void a(Object obj, net.youmi.android.a.b.g.e.a a1);

    protected abstract void a(Object obj, net.youmi.android.a.b.g.e.a a1, long l1, long l2, int j, 
            long l3);

    public final void a(net.youmi.android.a.b.g.e.a a1, long l1, long l2, int j, long l3)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = b.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        int i1;
        list = g();
        i1 = 0;
_L5:
        if (i1 >= list.size()) goto _L1; else goto _L4
_L4:
        Object obj = list.get(i1);
        if (obj != null)
        {
            try
            {
                a(obj, a1, l1, l2, j, l3);
            }
            catch (Throwable throwable1) { }
        }
        i1++;
          goto _L5
          goto _L1
        Throwable throwable;
        throwable;
          goto _L3
    }

    public void a(net.youmi.android.a.b.g.g.a a1)
    {
        while (a == null || a1 == null) 
        {
            return;
        }
        a.remove(a1);
    }

    public void a(net.youmi.android.a.b.g.g.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        while (a == null || a1 == null) 
        {
            return;
        }
        a.remove(a1);
        try
        {
            f(a2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.g.a a1)
        {
            return;
        }
    }

    public final void a(net.youmi.android.a.b.g.g.a a1, net.youmi.android.a.b.g.e.a a2, String s, String s1, String s2)
    {
        if (a2 != null)
        {
            try
            {
                if (a2.d())
                {
                    a2.a(a(a2, s1));
                    if (net.youmi.android.a.b.g.e.a().a(d, a2, this))
                    {
                        b.add(a2);
                        c.put(a2.c(), a2);
                    }
                }
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.b.g.e.a a2) { }
        }
        a.remove(a1);
    }

    public boolean a(String s)
    {
        return b(s, ((String) (null)));
    }

    public Context b()
    {
        return d;
    }

    protected abstract void b(Object obj, net.youmi.android.a.b.g.e.a a1);

    protected abstract boolean b(String s);

    public boolean b(String s, String s1)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((s = s.trim()).length() <= 0) goto _L1; else goto _L3
_L3:
        if (c.containsKey(s))
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = c(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        try
        {
            s = new net.youmi.android.a.b.g.g.a(d, this, s, s1);
            a.add(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        try
        {
            (new Thread(s)).start();
        }
        // Misplaced declaration of an exception variable
        catch (String s1) { }
        s.b();
        return true;
        s1 = new net.youmi.android.a.b.g.e.a(s, s1);
        s1.a(a(s1, ((String) (null))));
        if (!net.youmi.android.a.b.g.e.a().a(d, s1, this)) goto _L1; else goto _L4
_L4:
        b.add(s1);
        c.put(s, s1);
        return true;
    }

    protected abstract void c(Object obj, net.youmi.android.a.b.g.e.a a1);

    public final void c(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = b.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        Object obj;
        int j;
        try
        {
            k(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L5:
        if (j >= list.size()) goto _L1; else goto _L4
_L4:
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                f(obj, a1);
            }
            catch (Throwable throwable2) { }
        }
        j++;
          goto _L5
          goto _L1
        Throwable throwable1;
        throwable1;
          goto _L3
    }

    protected boolean c(String s)
    {
        Uri uri;
        uri = Uri.parse(s);
        if (uri.getQuery() != null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        if (uri.getFragment() != null)
        {
            return true;
        }
        boolean flag = b(s);
        if (flag)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_34;
        s;
        return true;
    }

    protected abstract void d(Object obj, net.youmi.android.a.b.g.e.a a1);

    public final void d(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        return;
_L2:
        if (!(flag = b.contains(a1))) goto _L1; else goto _L3
_L3:
        List list;
        Object obj;
        int j;
        try
        {
            l(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L5:
        if (j >= list.size()) goto _L1; else goto _L4
_L4:
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                e(obj, a1);
            }
            catch (Throwable throwable2) { }
        }
        j++;
          goto _L5
          goto _L1
        Throwable throwable1;
        throwable1;
          goto _L3
    }

    protected abstract void e(Object obj, net.youmi.android.a.b.g.e.a a1);

    public final void e(net.youmi.android.a.b.g.e.a a1)
    {
        if (q(a1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list;
        Object obj;
        int j;
        try
        {
            m(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L4:
        if (j >= list.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                d(obj, a1);
            }
            catch (Throwable throwable1) { }
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected abstract void f(Object obj, net.youmi.android.a.b.g.e.a a1);

    public final void f(net.youmi.android.a.b.g.e.a a1)
    {
        if (q(a1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list;
        Object obj;
        int j;
        try
        {
            n(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L4:
        if (j >= list.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                c(obj, a1);
            }
            catch (Throwable throwable1) { }
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public final void g(net.youmi.android.a.b.g.e.a a1)
    {
        if (q(a1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list;
        Object obj;
        int j;
        try
        {
            o(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L4:
        if (j >= list.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                b(obj, a1);
            }
            catch (Throwable throwable1) { }
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public boolean g_(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        long l1;
        if (a1.f() != null || (l1 = a1.e()) > 0L) goto _L1; else goto _L3
_L3:
        return true;
        a1;
        return true;
    }

    public final void h_(net.youmi.android.a.b.g.e.a a1)
    {
        if (q(a1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list;
        Object obj;
        int j;
        try
        {
            p(a1);
        }
        catch (Throwable throwable) { }
        list = g();
        j = 0;
_L4:
        if (j >= list.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(j);
        if (obj != null)
        {
            try
            {
                a(obj, a1);
            }
            catch (Throwable throwable1) { }
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public boolean i(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (a1.g() == null || !a1.g().exists()) goto _L1; else goto _L3
_L3:
        if (a1.f() != null)
        {
            return net.youmi.android.a.b.d.g.a(a1.g(), a1.f());
        }
        if (a1.e() <= 0L) goto _L1; else goto _L4
_L4:
        long l1;
        long l2;
        l1 = a1.e();
        l2 = a1.g().length();
        if (l1 == l2)
        {
            return true;
        }
          goto _L1
        a1;
        return false;
    }

    protected abstract void k(net.youmi.android.a.b.g.e.a a1);

    protected abstract void l(net.youmi.android.a.b.g.e.a a1);

    protected abstract void m(net.youmi.android.a.b.g.e.a a1);

    protected abstract void n(net.youmi.android.a.b.g.e.a a1);

    protected abstract void o(net.youmi.android.a.b.g.e.a a1);

    protected abstract void p(net.youmi.android.a.b.g.e.a a1);

    public boolean q(net.youmi.android.a.b.g.e.a a1)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag2 = true;
        flag1 = false;
        flag = false;
        if (a1 != null) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        boolean flag3;
        try
        {
            flag3 = c.containsKey(a1.c());
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return flag1;
        }
        if (flag3)
        {
            Object obj;
            boolean flag4;
            try
            {
                obj = c.remove(a1.c());
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.b.g.e.a a1)
            {
                return true;
            }
            if (obj == null);
            flag = true;
        }
        flag1 = flag;
        flag4 = b.contains(a1);
        if (!flag4)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = b.remove(a1);
        flag = flag2;
        if (flag1)
        {
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return flag;
    }
}
