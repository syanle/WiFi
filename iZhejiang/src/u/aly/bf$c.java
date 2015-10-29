// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, bf, cn, dm, 
//            al, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bf bf1)
        throws cn
    {
        dg = (dm)dg;
        BitSet bitset = new BitSet();
        if (bf1.e())
        {
            bitset.set(0);
        }
        if (bf1.i())
        {
            bitset.set(1);
        }
        if (bf1.l())
        {
            bitset.set(2);
        }
        if (bf1.o())
        {
            bitset.set(3);
        }
        if (bf1.r())
        {
            bitset.set(4);
        }
        if (bf1.u())
        {
            bitset.set(5);
        }
        if (bf1.x())
        {
            bitset.set(6);
        }
        if (bf1.A())
        {
            bitset.set(7);
        }
        if (bf1.D())
        {
            bitset.set(8);
        }
        if (bf1.G())
        {
            bitset.set(9);
        }
        dg.a(bitset, 10);
        if (bf1.e())
        {
            dg.a(bf1.a);
        }
        if (bf1.i())
        {
            dg.a(bf1.b);
        }
        if (bf1.l())
        {
            dg.a(bf1.c);
        }
        if (bf1.o())
        {
            dg.a(bf1.d);
        }
        if (bf1.r())
        {
            dg.a(bf1.e);
        }
        if (bf1.u())
        {
            dg.a(bf1.f);
        }
        if (bf1.x())
        {
            dg.a(bf1.g);
        }
        if (bf1.A())
        {
            dg.a(bf1.h);
        }
        if (bf1.D())
        {
            dg.a(bf1.i.a());
        }
        if (bf1.G())
        {
            dg.a(bf1.j);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bf)ch);
    }

    public void b(dg dg, bf bf1)
        throws cn
    {
        dg = (dm)dg;
        BitSet bitset = dg.b(10);
        if (bitset.get(0))
        {
            bf1.a = dg.w();
            bf1.a(true);
        }
        if (bitset.get(1))
        {
            bf1.b = dg.z();
            bf1.b(true);
        }
        if (bitset.get(2))
        {
            bf1.c = dg.z();
            bf1.c(true);
        }
        if (bitset.get(3))
        {
            bf1.d = dg.y();
            bf1.d(true);
        }
        if (bitset.get(4))
        {
            bf1.e = dg.y();
            bf1.e(true);
        }
        if (bitset.get(5))
        {
            bf1.f = dg.z();
            bf1.f(true);
        }
        if (bitset.get(6))
        {
            bf1.g = dg.w();
            bf1.g(true);
        }
        if (bitset.get(7))
        {
            bf1.h = dg.z();
            bf1.h(true);
        }
        if (bitset.get(8))
        {
            bf1.i = al.a(dg.w());
            bf1.i(true);
        }
        if (bitset.get(9))
        {
            bf1.j = dg.z();
            bf1.j(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bf)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
