// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g;

import android.content.Context;
import java.util.HashMap;
import java.util.List;
import net.youmi.android.a.b.e.b;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.c;
import net.youmi.android.a.b.j.a;

class e extends a
    implements net.youmi.android.a.b.g.d.e
{

    private static e a;
    private static int b = 0;
    private int c;
    private HashMap d;

    private e()
    {
        c = 0;
        d = new HashMap();
        b++;
        c = b;
    }

    public static e a()
    {
        net/youmi/android/a/b/g/e;
        JVM INSTR monitorenter ;
        e e1;
        Exception exception;
        try
        {
            if (a == null)
            {
                a = new e();
            }
        }
        catch (Throwable throwable) { }
        e1 = a;
        net/youmi/android/a/b/g/e;
        JVM INSTR monitorexit ;
        return e1;
        exception;
        throw exception;
    }

    public void a(net.youmi.android.a.b.g.e.a a1)
    {
        List list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        int j = list.size();
        int i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).d(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        Throwable throwable;
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
        a1;
_L2:
    }

    public void a(net.youmi.android.a.b.g.e.a a1, int i, long l, long l1, long l2)
    {
        List list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        int k = list.size();
        int j = 0;
_L4:
        if (j >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(j)).a(a1, l1, l2, i, l);
_L5:
        j++;
        if (true) goto _L4; else goto _L2
        Throwable throwable;
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
        a1;
_L2:
    }

    public boolean a(Context context, net.youmi.android.a.b.g.e.a a1, net.youmi.android.a.b.g.d.b b1)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!a1.d()) goto _L1; else goto _L3
_L3:
        if (d.containsKey(a1))
        {
            return true;
        }
        try
        {
            context = new d(context, a1, b1, this);
            d.put(a1, context);
            net.youmi.android.a.b.g.a.b.a(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return true;
    }

    public void b(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        Throwable throwable;
        int i;
        int j;
        try
        {
            a1.g();
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        j = list.size();
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).e(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
_L2:
        d.remove(a1);
        return;
    }

    public void c(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        Throwable throwable;
        int i;
        int j;
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        j = list.size();
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).f(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
_L2:
        d.remove(a1);
        return;
    }

    public void d(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        Throwable throwable;
        int i;
        int j;
        try
        {
            a1.g();
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        j = list.size();
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).h_(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
_L2:
        d.remove(a1);
        return;
    }

    public void e(net.youmi.android.a.b.g.e.a a1)
    {
        List list;
        Throwable throwable;
        int i;
        int j;
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.b.g.e.a a1)
        {
            return;
        }
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        j = list.size();
        i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).g(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
_L2:
        d.remove(a1);
        return;
    }

    public void f(net.youmi.android.a.b.g.e.a a1)
    {
        List list = g();
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        int j = list.size();
        int i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        ((c)list.get(i)).c(a1);
_L5:
        i++;
        if (true) goto _L4; else goto _L2
        Throwable throwable;
        throwable;
        net.youmi.android.a.b.e.b.a("download_", this, throwable);
          goto _L5
        a1;
_L2:
    }

}
