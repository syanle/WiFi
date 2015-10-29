// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, aq, cn, dm, 
//            bd, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, aq aq1)
        throws cn
    {
        dg = (dm)dg;
        BitSet bitset = new BitSet();
        if (aq1.e())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (aq1.e())
        {
            aq1.a.b(dg);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (aq)ch);
    }

    public void b(dg dg, aq aq1)
        throws cn
    {
        dg = (dm)dg;
        if (dg.b(1).get(0))
        {
            aq1.a = new bd();
            aq1.a.a(dg);
            aq1.a(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (aq)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
