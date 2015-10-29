// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, ap, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, ap ap1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(ap1.a);
        dg.a(ap1.b);
        BitSet bitset = new BitSet();
        if (ap1.l())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (ap1.l())
        {
            dg.a(ap1.c);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (ap)ch);
    }

    public void b(dg dg, ap ap1)
        throws cn
    {
        dg = (dm)dg;
        ap1.a = dg.w();
        ap1.a(true);
        ap1.b = dg.w();
        ap1.b(true);
        if (dg.b(1).get(0))
        {
            ap1.c = dg.w();
            ap1.c(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (ap)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
