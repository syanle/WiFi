// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g;

import android.content.Context;

// Referenced classes of package net.youmi.android.a.b.g:
//            d

public abstract class a extends d
{

    public a(Context context)
    {
        super(context);
    }

    protected void a(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        f((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected volatile void a(Object obj, net.youmi.android.a.b.g.e.a a1, long l1, long l2, int i, 
            long l3)
    {
        a((net.youmi.android.a.b.g.d.a)obj, a1, l1, l2, i, l3);
    }

    protected void a(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.a(a2);
    }

    protected void a(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2, long l1, long l2, int i, 
            long l3)
    {
        a1.a(a2, l1, l2, i, l3);
    }

    protected abstract void a_(net.youmi.android.a.b.g.e.a a1);

    protected void b(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        e((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected void b(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.b(a2);
    }

    protected abstract void b(net.youmi.android.a.b.g.e.a a1);

    protected boolean b(String s)
    {
        boolean flag;
        try
        {
            flag = s.trim().toLowerCase().endsWith(".apk");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    protected abstract void b_(net.youmi.android.a.b.g.e.a a1);

    protected void c(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        d((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected void c(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.c(a2);
    }

    protected abstract void c_(net.youmi.android.a.b.g.e.a a1);

    protected void d(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        c((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected void d(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.d(a2);
    }

    protected abstract void d_(net.youmi.android.a.b.g.e.a a1);

    protected void e(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        b((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected void e(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.e(a2);
    }

    protected abstract void e_(net.youmi.android.a.b.g.e.a a1);

    protected void f(Object obj, net.youmi.android.a.b.g.e.a a1)
    {
        a((net.youmi.android.a.b.g.d.a)obj, a1);
    }

    protected void f(net.youmi.android.a.b.g.d.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a1.c(a2);
    }

    protected final void k(net.youmi.android.a.b.g.e.a a1)
    {
        a_(a1);
    }

    protected final void l(net.youmi.android.a.b.g.e.a a1)
    {
        b(a1);
    }

    protected final void m(net.youmi.android.a.b.g.e.a a1)
    {
        b_(a1);
    }

    protected final void n(net.youmi.android.a.b.g.e.a a1)
    {
        c_(a1);
    }

    protected final void o(net.youmi.android.a.b.g.e.a a1)
    {
        d_(a1);
    }

    protected final void p(net.youmi.android.a.b.g.e.a a1)
    {
        e_(a1);
    }
}
