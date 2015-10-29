// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, bp, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bp bp1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bp1.a);
        dg.a(bp1.b);
        dg.a(bp1.c);
        dg.a(bp1.d);
        dg.a(bp1.e);
        dg.a(bp1.f);
        dg.a(bp1.g);
        dg.a(bp1.h);
        dg.a(bp1.i);
        BitSet bitset = new BitSet();
        if (bp1.H())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (bp1.H())
        {
            dg.a(bp1.j);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bp)ch);
    }

    public void b(dg dg, bp bp1)
        throws cn
    {
        dg = (dm)dg;
        bp1.a = dg.z();
        bp1.a(true);
        bp1.b = dg.z();
        bp1.b(true);
        bp1.c = dg.z();
        bp1.c(true);
        bp1.d = dg.w();
        bp1.d(true);
        bp1.e = dg.w();
        bp1.e(true);
        bp1.f = dg.w();
        bp1.f(true);
        bp1.g = dg.A();
        bp1.g(true);
        bp1.h = dg.z();
        bp1.h(true);
        bp1.i = dg.z();
        bp1.i(true);
        if (dg.b(1).get(0))
        {
            bp1.j = dg.w();
            bp1.j(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bp)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
