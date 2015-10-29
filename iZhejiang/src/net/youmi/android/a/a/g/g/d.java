// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.g;

import android.content.Context;
import java.io.Serializable;
import java.util.List;
import java.util.Timer;
import net.youmi.android.a.a.j.c.b;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.g.g:
//            b, e

public class d
    implements Serializable
{

    private static d b;
    private static List c;
    private static List d;
    private static Timer e;
    private Context a;

    d(Context context)
    {
        a = context.getApplicationContext();
        if (a == null)
        {
            throw new NullPointerException("Context is null");
        } else
        {
            return;
        }
    }

    static Context a(d d1)
    {
        return d1.a;
    }

    static List a(List list)
    {
        d = list;
        return list;
    }

    static Timer a(Timer timer)
    {
        e = timer;
        return timer;
    }

    public static d a(Context context)
    {
        net/youmi/android/a/a/g/g/d;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new d(context);
        }
        if (b == null)
        {
            throw new NullPointerException("Context is null");
        }
        break MISSING_BLOCK_LABEL_42;
        context;
        net/youmi/android/a/a/g/g/d;
        JVM INSTR monitorexit ;
        throw context;
        context = b;
        net/youmi/android/a/a/g/g/d;
        JVM INSTR monitorexit ;
        return context;
    }

    static List c()
    {
        return c;
    }

    static List d()
    {
        return d;
    }

    static Timer e()
    {
        return e;
    }

    private void f()
    {
        try
        {
            c = net.youmi.android.a.a.g.g.b.a(a).a();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (e != null)
        {
            e.cancel();
            e = null;
        }
        if (d == null) goto _L2; else goto _L1
_L1:
        if (d.size() <= 0) goto _L4; else goto _L3
_L3:
        int i = 0;
_L9:
        if (i >= d.size()) goto _L4; else goto _L5
_L5:
        if (d.get(i) != null)
        {
            ((b)d.get(i)).a();
        }
          goto _L6
_L4:
        d = null;
_L2:
        if (c != null)
        {
            c.clear();
            c = null;
        }
_L7:
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        throw obj;
        obj;
        if (true) goto _L7; else goto _L6
_L6:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            a();
            f();
            m.a().a(new e(this));
        }
        catch (Exception exception1) { }
        finally
        {
            this;
        }
        return;
        throw exception;
    }
}
