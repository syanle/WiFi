// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, ao, cn, dm, 
//            bk, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, ao ao1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(ao1.a);
        dg.a(ao1.e.a());
        dg.a(ao1.f);
        dg.a(ao1.g);
        BitSet bitset = new BitSet();
        if (ao1.i())
        {
            bitset.set(0);
        }
        if (ao1.l())
        {
            bitset.set(1);
        }
        if (ao1.o())
        {
            bitset.set(2);
        }
        if (ao1.A())
        {
            bitset.set(3);
        }
        if (ao1.D())
        {
            bitset.set(4);
        }
        if (ao1.G())
        {
            bitset.set(5);
        }
        dg.a(bitset, 6);
        if (ao1.i())
        {
            dg.a(ao1.b);
        }
        if (ao1.l())
        {
            dg.a(ao1.c);
        }
        if (ao1.o())
        {
            dg.a(ao1.d);
        }
        if (ao1.A())
        {
            dg.a(ao1.h);
        }
        if (ao1.D())
        {
            dg.a(ao1.i);
        }
        if (ao1.G())
        {
            dg.a(ao1.j);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (ao)ch);
    }

    public void b(dg dg, ao ao1)
        throws cn
    {
        dg = (dm)dg;
        ao1.a = dg.z();
        ao1.a(true);
        ao1.e = bk.a(dg.w());
        ao1.e(true);
        ao1.f = dg.z();
        ao1.f(true);
        ao1.g = dg.z();
        ao1.g(true);
        BitSet bitset = dg.b(6);
        if (bitset.get(0))
        {
            ao1.b = dg.z();
            ao1.b(true);
        }
        if (bitset.get(1))
        {
            ao1.c = dg.w();
            ao1.c(true);
        }
        if (bitset.get(2))
        {
            ao1.d = dg.z();
            ao1.d(true);
        }
        if (bitset.get(3))
        {
            ao1.h = dg.z();
            ao1.h(true);
        }
        if (bitset.get(4))
        {
            ao1.i = dg.z();
            ao1.i(true);
        }
        if (bitset.get(5))
        {
            ao1.j = dg.w();
            ao1.j(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (ao)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
