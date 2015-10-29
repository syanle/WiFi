// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.a;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.g.e.a;
import net.youmi.android.a.b.g.f.b;
import net.youmi.android.a.b.g.f.c;
import net.youmi.android.a.b.g.f.e;
import net.youmi.android.a.b.g.f.f;
import net.youmi.android.a.b.g.f.g;
import net.youmi.android.a.b.g.f.h;
import net.youmi.android.a.b.g.f.i;

// Referenced classes of package net.youmi.android.a.b.g.a:
//            c, b

public class d
    implements Runnable
{

    private a a;
    private net.youmi.android.a.b.g.d.e b;
    private net.youmi.android.a.b.g.a.c c;
    private net.youmi.android.a.b.g.d.b d;
    private net.youmi.android.a.b.g.f.a e;
    private g f;
    private i g;
    private c h;
    private f i;
    private e j;
    private b k;
    private net.youmi.android.a.b.g.f.d l;
    private h m;
    private Context n;

    public d(Context context, a a1, net.youmi.android.a.b.g.d.b b1, net.youmi.android.a.b.g.d.e e1)
    {
        long l1 = 0L;
        super();
        n = context.getApplicationContext();
        a = a1;
        a(a.g());
        a.b(new File((new StringBuilder()).append(a.g().getPath()).append(".ymtf").toString()));
        d = b1;
        b = e1;
        if (a1.h().length() > 0L)
        {
            l1 = a1.h().length();
        }
        c = new net.youmi.android.a.b.g.a.c(n, a1.a(), l1, a1.h(), a1.g());
    }

    private void a(File file)
    {
        if (file != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (file.exists() || (file = file.getParentFile()) == null) goto _L1; else goto _L3
_L3:
        if (file.exists()) goto _L1; else goto _L4
_L4:
        file.mkdirs();
        return;
        file;
    }

    private net.youmi.android.a.b.g.f.a h()
    {
        this;
        JVM INSTR monitorenter ;
        g g1;
        if (f == null)
        {
            f = new g();
        }
        g1 = f;
        this;
        JVM INSTR monitorexit ;
        return g1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a i()
    {
        this;
        JVM INSTR monitorenter ;
        c c1;
        if (h == null)
        {
            h = new c();
        }
        c1 = h;
        this;
        JVM INSTR monitorexit ;
        return c1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a j()
    {
        this;
        JVM INSTR monitorenter ;
        f f1;
        if (i == null)
        {
            i = new f();
        }
        f1 = i;
        this;
        JVM INSTR monitorexit ;
        return f1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a k()
    {
        this;
        JVM INSTR monitorenter ;
        e e1;
        if (j == null)
        {
            j = new e();
        }
        e1 = j;
        this;
        JVM INSTR monitorexit ;
        return e1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a l()
    {
        this;
        JVM INSTR monitorenter ;
        b b1;
        if (k == null)
        {
            k = new b();
        }
        b1 = k;
        this;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a m()
    {
        this;
        JVM INSTR monitorenter ;
        net.youmi.android.a.b.g.f.d d1;
        if (l == null)
        {
            l = new net.youmi.android.a.b.g.f.d();
        }
        d1 = l;
        this;
        JVM INSTR monitorexit ;
        return d1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a n()
    {
        this;
        JVM INSTR monitorenter ;
        i i1;
        if (g == null)
        {
            g = new i();
        }
        i1 = g;
        this;
        JVM INSTR monitorexit ;
        return i1;
        Exception exception;
        exception;
        throw exception;
    }

    private net.youmi.android.a.b.g.f.a o()
    {
        this;
        JVM INSTR monitorenter ;
        h h1;
        if (m == null)
        {
            m = new h();
        }
        h1 = m;
        this;
        JVM INSTR monitorexit ;
        return h1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int i1)
    {
        net.youmi.android.a.b.g.f.a a1;
        if (e != null)
        {
            if (!e.equals(Integer.valueOf(i1)));
        }
        a1 = null;
        i1;
        JVM INSTR tableswitch 100 107: default 72
    //                   100 113
    //                   101 121
    //                   102 129
    //                   103 137
    //                   104 145
    //                   105 161
    //                   106 169
    //                   107 153;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        if (a1 != null && !a1.equals(e))
        {
            e = a1;
            e.a(n, this, a, b);
        }
        return;
_L2:
        a1 = h();
        continue; /* Loop/switch isn't completed */
_L3:
        a1 = i();
        continue; /* Loop/switch isn't completed */
_L4:
        a1 = j();
        continue; /* Loop/switch isn't completed */
_L5:
        a1 = k();
        continue; /* Loop/switch isn't completed */
_L6:
        a1 = l();
        continue; /* Loop/switch isn't completed */
_L9:
        a1 = m();
        continue; /* Loop/switch isn't completed */
_L7:
        a1 = n();
        continue; /* Loop/switch isn't completed */
_L8:
        a1 = o();
        if (true) goto _L1; else goto _L10
_L10:
    }

    public boolean a()
    {
        long l1 = 0L;
label0:
        {
            if (c != null)
            {
                net.youmi.android.a.b.g.a.b.a(c);
                break label0;
            }
            try
            {
                if (a.h().length() > 0L)
                {
                    l1 = a.h().length();
                }
                c = new net.youmi.android.a.b.g.a.c(n, a.a(), l1, a.h(), a.g());
                net.youmi.android.a.b.g.a.b.a(c);
            }
            catch (Throwable throwable)
            {
                return false;
            }
        }
        return true;
    }

    public boolean b()
    {
        if (d() == null)
        {
            return false;
        }
        long l1;
        long l2;
        if (!d().exists())
        {
            break MISSING_BLOCK_LABEL_46;
        }
        l1 = System.currentTimeMillis();
        l2 = d().lastModified();
        if (l1 - l2 < 16000L)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_46;
        Throwable throwable;
        throwable;
        return false;
    }

    public File c()
    {
        return a.g();
    }

    public File d()
    {
        return a.h();
    }

    public a e()
    {
        return a;
    }

    public net.youmi.android.a.b.g.d.b f()
    {
        return d;
    }

    public net.youmi.android.a.b.g.a.c g()
    {
        return c;
    }

    public int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return super.hashCode();
        }
    }

    public void run()
    {
        try
        {
            a(100);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
