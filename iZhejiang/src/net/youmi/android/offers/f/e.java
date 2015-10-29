// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.d.a.b;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.g.c;
import net.youmi.android.a.b.g.e.a;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.b.k.p;

// Referenced classes of package net.youmi.android.offers.f:
//            a, g, f

public class e extends c
{

    private static e a;
    private static Context b;
    private int c;
    private String d;

    public e(Context context, net.youmi.android.a.b.g.c.a a1)
    {
        super(context, a1);
        c = 0;
        b = context.getApplicationContext();
    }

    static Context a()
    {
        return b;
    }

    public static e a(Context context)
    {
        net/youmi/android/offers/f/e;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            context = context.getApplicationContext();
            a = new e(context, net.youmi.android.a.a.d.a.b.b(context, 1));
        }
        context = a;
        net/youmi/android/offers/f/e;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    static void a(e e1, String s)
    {
        e1.c(s);
    }

    private boolean a(File file)
    {
        while (net.youmi.android.offers.f.a.b || !net.youmi.android.a.b.b.e.a(d) && g.a(file, d)) 
        {
            return true;
        }
        d("ow md5 error, please contact us");
        net.youmi.android.a.a.i.a.b.g.a().c();
        return false;
    }

    private void c(String s)
    {
        if (c != 0)
        {
            net.youmi.android.offers.f.a.b.a(b, net.youmi.android.offers.f.a.b(b), Integer.toString(c), -1L);
        }
        if (!net.youmi.android.a.b.b.e.a(d))
        {
            net.youmi.android.offers.f.a.b.a(b, net.youmi.android.offers.f.a.c(b), d, -1L);
        }
        if (!net.youmi.android.a.b.b.e.a(s))
        {
            net.youmi.android.offers.f.a.b.a(b, net.youmi.android.offers.f.a.d(b), s, -1L);
        }
    }

    private void d(String s)
    {
        try
        {
            net.youmi.android.a.b.k.m.a().a(new net.youmi.android.offers.f.g(this, s));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    private void o(a a1)
    {
        this;
        JVM INSTR monitorenter ;
        File file;
        File file1;
        boolean flag;
        file1 = a1.g();
        System.currentTimeMillis();
        file = new File(b.getFilesDir(), file1.getName());
        if (file.exists())
        {
            file.delete();
        }
        System.currentTimeMillis();
        flag = net.youmi.android.a.b.k.g.a(file1, file);
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (net.youmi.android.offers.f.a.b)
        {
            file1.delete();
        }
        file1 = new File((new StringBuilder()).append(file.getPath()).append(".zip").toString());
        if (file1.exists() && file1.isFile())
        {
            file1.delete();
        }
        System.currentTimeMillis();
        if (!file.renameTo(file1));
        long l1 = System.currentTimeMillis();
        p.a(file1, net.youmi.android.offers.f.a.f(b), new f(this, l1, file1, a1));
        if (true) goto _L1; else goto _L3
_L3:
        a1;
        throw a1;
    }

    public void a(int i)
    {
        c = i;
    }

    protected void a(a a1)
    {
    }

    public void b(String s)
    {
        d = s;
    }

    protected void b(a a1)
    {
    }

    protected void b(a a1, long l1, long l2, int i, long l3)
    {
    }

    protected void k(a a1)
    {
        if (a(a1.g()))
        {
            o(a1);
        }
    }

    protected void l(a a1)
    {
        net.youmi.android.a.a.i.a.b.g.a().c();
    }

    protected void m(a a1)
    {
        if (a(a1.g()))
        {
            o(a1);
        }
    }

    protected void n(a a1)
    {
    }
}
