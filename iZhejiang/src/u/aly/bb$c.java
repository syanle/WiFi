// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, bb, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bb bb1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bb1.b);
        dg.a(bb1.c);
        BitSet bitset = new BitSet();
        if (bb1.e())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (bb1.e())
        {
            dg.a(bb1.a);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bb)ch);
    }

    public void b(dg dg, bb bb1)
        throws cn
    {
        dg = (dm)dg;
        bb1.b = dg.x();
        bb1.b(true);
        bb1.c = dg.z();
        bb1.c(true);
        if (dg.b(1).get(0))
        {
            bb1.a = dg.z();
            bb1.a(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bb)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
