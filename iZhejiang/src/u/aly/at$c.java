// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, at, cn, dm, 
//            au, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, at at1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(at1.a);
        dg.a(at1.b);
        BitSet bitset = new BitSet();
        if (at1.l())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (at1.l())
        {
            dg.a(at1.c.a());
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (at)ch);
    }

    public void b(dg dg, at at1)
        throws cn
    {
        dg = (dm)dg;
        at1.a = dg.x();
        at1.b(true);
        at1.b = dg.z();
        at1.c(true);
        if (dg.b(1).get(0))
        {
            at1.c = au.a(dg.w());
            at1.d(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (at)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
