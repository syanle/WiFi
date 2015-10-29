// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, bj, cn, dm, 
//            ba, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bj bj1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bj1.a);
        BitSet bitset = new BitSet();
        if (bj1.i())
        {
            bitset.set(0);
        }
        if (bj1.l())
        {
            bitset.set(1);
        }
        dg.a(bitset, 2);
        if (bj1.i())
        {
            dg.a(bj1.b);
        }
        if (bj1.l())
        {
            bj1.c.b(dg);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bj)ch);
    }

    public void b(dg dg, bj bj1)
        throws cn
    {
        dg = (dm)dg;
        bj1.a = dg.w();
        bj1.a(true);
        BitSet bitset = dg.b(2);
        if (bitset.get(0))
        {
            bj1.b = dg.z();
            bj1.b(true);
        }
        if (bitset.get(1))
        {
            bj1.c = new ba();
            bj1.c.a(dg);
            bj1.c(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bj)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
