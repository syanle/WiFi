// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, bo, cn, dm, 
//            aw, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bo bo1)
        throws cn
    {
        dg = (dm)dg;
        BitSet bitset = new BitSet();
        if (bo1.e())
        {
            bitset.set(0);
        }
        if (bo1.i())
        {
            bitset.set(1);
        }
        if (bo1.l())
        {
            bitset.set(2);
        }
        if (bo1.o())
        {
            bitset.set(3);
        }
        dg.a(bitset, 4);
        if (bo1.e())
        {
            dg.a(bo1.a.a());
        }
        if (bo1.i())
        {
            dg.a(bo1.b);
        }
        if (bo1.l())
        {
            dg.a(bo1.c);
        }
        if (bo1.o())
        {
            dg.a(bo1.d);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bo)ch);
    }

    public void b(dg dg, bo bo1)
        throws cn
    {
        dg = (dm)dg;
        BitSet bitset = dg.b(4);
        if (bitset.get(0))
        {
            bo1.a = aw.a(dg.w());
            bo1.a(true);
        }
        if (bitset.get(1))
        {
            bo1.b = dg.w();
            bo1.b(true);
        }
        if (bitset.get(2))
        {
            bo1.c = dg.z();
            bo1.c(true);
        }
        if (bitset.get(3))
        {
            bo1.d = dg.z();
            bo1.d(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bo)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
