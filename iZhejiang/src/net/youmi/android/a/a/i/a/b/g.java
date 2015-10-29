// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.b;

import java.util.List;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.a.i.a.b:
//            b

public class g extends a
{

    private static g a;
    private boolean b;
    private boolean c;

    public g()
    {
        b = false;
        c = false;
    }

    public static g a()
    {
        net/youmi/android/a/a/i/a/b/g;
        JVM INSTR monitorenter ;
        g g1;
        if (a == null)
        {
            a = new g();
        }
        g1 = a;
        net/youmi/android/a/a/i/a/b/g;
        JVM INSTR monitorexit ;
        return g1;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        if (!c) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b = false;
        c = true;
        List list = g();
        if (list != null && list.size() > 0)
        {
            int i = 0;
            while (i < list.size()) 
            {
                try
                {
                    ((b)list.get(i)).i();
                }
                catch (Throwable throwable) { }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void c()
    {
        b = true;
        c = false;
        List list = g();
        if (list != null && list.size() > 0)
        {
            int i = 0;
            while (i < list.size()) 
            {
                try
                {
                    ((b)list.get(i)).j();
                }
                catch (Throwable throwable) { }
                i++;
            }
        }
    }

    public boolean d()
    {
        return b;
    }

    public boolean e()
    {
        return c;
    }

    public void f()
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
}
