// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            dr, ax, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, ax ax1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(ax1.a);
        dg.a(ax1.c);
        dg.a(ax1.d);
        BitSet bitset = new BitSet();
        if (ax1.i())
        {
            bitset.set(0);
        }
        dg.a(bitset, 1);
        if (ax1.i())
        {
            dg.a(ax1.b);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (ax)ch);
    }

    public void b(dg dg, ax ax1)
        throws cn
    {
        dg = (dm)dg;
        ax1.a = dg.z();
        ax1.a(true);
        ax1.c = dg.z();
        ax1.c(true);
        ax1.d = dg.x();
        ax1.d(true);
        if (dg.b(1).get(0))
        {
            ax1.b = dg.z();
            ax1.b(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (ax)ch);
    }

    private itSet()
    {
    }

    itSet(itSet itset)
    {
        this();
    }
}
