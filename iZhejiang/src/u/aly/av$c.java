// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dr, av, cn, dm, 
//            bh, dd, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, av av1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(av1.a);
        dg.a(av1.b.size());
        java.util.ntry ntry;
        for (Iterator iterator = av1.b.entrySet().iterator(); iterator.hasNext(); ((bh)ntry.getValue()).b(dg))
        {
            ntry = (java.util.ntry)iterator.next();
            dg.a((String)ntry.getKey());
        }

        dg.a(av1.e);
        BitSet bitset = new BitSet();
        if (av1.m())
        {
            bitset.set(0);
        }
        if (av1.p())
        {
            bitset.set(1);
        }
        dg.a(bitset, 2);
        if (av1.m())
        {
            dg.a(av1.c);
        }
        if (av1.p())
        {
            dg.a(av1.d);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (av)ch);
    }

    public void b(dg dg, av av1)
        throws cn
    {
        dg = (dm)dg;
        av1.a = dg.z();
        av1.a(true);
        Object obj = new dd((byte)11, (byte)12, dg.w());
        av1.b = new HashMap(((dd) (obj)).c * 2);
        for (int i = 0; i < ((dd) (obj)).c; i++)
        {
            String s = dg.z();
            bh bh1 = new bh();
            bh1.a(dg);
            av1.b.put(s, bh1);
        }

        av1.b(true);
        av1.e = dg.x();
        av1.e(true);
        obj = dg.b(2);
        if (((BitSet) (obj)).get(0))
        {
            av1.c = dg.x();
            av1.c(true);
        }
        if (((BitSet) (obj)).get(1))
        {
            av1.d = dg.w();
            av1.d(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (av)ch);
    }

    private ashMap()
    {
    }

    ashMap(ashMap ashmap)
    {
        this();
    }
}
