// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.a;

import java.util.List;
import net.youmi.android.a.b.j.a;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.j.a:
//            d, c, e, f, 
//            g

public class b extends a
{

    private static b a;

    public b()
    {
    }

    public static b a()
    {
        net/youmi/android/a/a/j/a/b;
        JVM INSTR monitorenter ;
        b b1;
        if (a == null)
        {
            a = new b();
        }
        b1 = a;
        net/youmi/android/a/a/j/a/b;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int i)
    {
        List list = g();
        if (list == null || list.size() <= 0)
        {
            return;
        } else
        {
            m.a().a(new d(this, list, i));
            return;
        }
    }

    public void a(CharSequence charsequence)
    {
        List list = g();
        if (list == null || list.size() <= 0)
        {
            return;
        } else
        {
            m.a().a(new c(this, list, charsequence));
            return;
        }
    }

    public void b()
    {
        try
        {
            if (g() != null && g().size() > 0)
            {
                g().clear();
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void b(int i)
    {
        List list = g();
        if (list == null || list.size() <= 0)
        {
            return;
        } else
        {
            m.a().a(new e(this, list, i));
            return;
        }
    }

    public void b(CharSequence charsequence)
    {
        List list = g();
        if (list == null || list.size() <= 0)
        {
            return;
        } else
        {
            m.a().a(new f(this, list, charsequence));
            return;
        }
    }

    public void c(int i)
    {
        List list = g();
        if (list == null || list.size() <= 0)
        {
            return;
        } else
        {
            m.a().a(new g(this, list, i));
            return;
        }
    }
}
