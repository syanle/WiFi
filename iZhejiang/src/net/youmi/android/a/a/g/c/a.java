// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.content.Context;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;
import net.youmi.android.a.a.a.a.d;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.a.e.g.f;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            g, d, e, b, 
//            m

public class a extends net.youmi.android.a.a.d.a
{

    private static a e;
    g a;
    net.youmi.android.a.a.g.c.d b;
    e c;
    private SparseArray f;
    private SparseArray g;

    public a(Context context)
    {
        super(context);
        f = new SparseArray();
        g = new SparseArray();
        a = new g(this);
        a(a);
        b = new net.youmi.android.a.a.g.c.d(b(), this);
        a(b);
        c = new e(b(), this);
        a(c);
    }

    public static a a(Context context)
    {
        net/youmi/android/a/a/g/c/a;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new a(context);
        }
        context = e;
        net/youmi/android/a/a/g/c/a;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private b r(net.youmi.android.a.b.g.e.a a1)
    {
        a1 = f_(a1);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        if (!a1.g().e())
        {
            break MISSING_BLOCK_LABEL_28;
        }
        a1 = a1.g();
        return a1;
        a1;
        return null;
    }

    public void a(int i)
    {
        try
        {
            net.youmi.android.a.a.e.g.a a1 = (net.youmi.android.a.a.e.g.a)g.get(i);
            f f1 = (f)f.get(i);
            a.a(a1, f1);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void a(net.youmi.android.a.a.e.g.a a1, f f1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        d d1;
        try
        {
            obj = a1.f();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.a a1)
        {
            return;
        }
        if (obj == null) goto _L1; else goto _L3
_L3:
        d1 = ((net.youmi.android.a.a.a.a.a) (obj)).i();
        if (d1 == null) goto _L1; else goto _L4
_L4:
        obj = d1.c();
        if (obj == null) goto _L1; else goto _L5
_L5:
        g.put(((String) (obj)).hashCode(), a1);
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        f.put(((String) (obj)).hashCode(), f1);
        a1 = d1.d();
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        b(((String) (obj)), a1);
        return;
        a(((String) (obj)));
        return;
    }

    public boolean a(String s)
    {
        return super.a(s);
    }

    protected void a_(net.youmi.android.a.b.g.e.a a1)
    {
    }

    public void b(int i)
    {
        Object obj = g();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (((List) (obj)).isEmpty())
        {
            return;
        }
        obj = ((List) (obj)).iterator();
_L1:
        net.youmi.android.a.b.g.d.a a1;
        boolean flag;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break MISSING_BLOCK_LABEL_107;
            }
            a1 = (net.youmi.android.a.b.g.d.a)((Iterator) (obj)).next();
        } while (a1.equals(b) || a1.equals(a));
        flag = a1.equals(c);
        if (!flag)
        {
            try
            {
                m.a().a(new net.youmi.android.a.a.g.c.b(this, a1, i));
            }
            catch (Throwable throwable1) { }
        }
          goto _L1
        Throwable throwable;
        throwable;
    }

    protected void b(net.youmi.android.a.b.g.e.a a1)
    {
        a1 = r(a1);
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(d, a1, 6));
    }

    public boolean b(String s, String s1)
    {
        return super.b(s, s1);
    }

    protected void b_(net.youmi.android.a.b.g.e.a a1)
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.c.m(this, a1));
        a1 = r(a1);
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(b(), a1, new int[] {
            2, 7
        }));
    }

    protected void c_(net.youmi.android.a.b.g.e.a a1)
    {
    }

    protected void d_(net.youmi.android.a.b.g.e.a a1)
    {
    }

    protected void e_(net.youmi.android.a.b.g.e.a a1)
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.c.m(this, a1));
        a1 = r(a1);
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(b(), a1, 7));
    }

    net.youmi.android.a.a.e.g.a f_(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        if (a1.c() == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        a1 = (net.youmi.android.a.a.e.g.a)g.get(a1.c().hashCode());
        return a1;
        a1;
        return null;
    }

    f h(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        if (a1.c() == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        a1 = (f)f.get(a1.c().hashCode());
        return a1;
        a1;
        return null;
    }

    int j(net.youmi.android.a.b.g.e.a a1)
    {
        if (a1 != null && a1.c() != null)
        {
            return a1.c().hashCode();
        } else
        {
            return 0;
        }
    }
}
