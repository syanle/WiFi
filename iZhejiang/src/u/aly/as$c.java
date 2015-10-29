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
//            dr, as, cn, dm, 
//            dd, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, as as1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(as1.a);
        dg.a(as1.b);
        dg.a(as1.c.size());
        java.util.ntry ntry;
        for (Iterator iterator = as1.c.entrySet().iterator(); iterator.hasNext(); dg.a((String)ntry.getValue()))
        {
            ntry = (java.util.ntry)iterator.next();
            dg.a((String)ntry.getKey());
        }

        BitSet bitset = new BitSet();
        if (as1.p())
        {
            bitset.set(0);
        }
        if (as1.s())
        {
            bitset.set(1);
        }
        dg.a(bitset, 2);
        if (as1.p())
        {
            dg.a(as1.d);
        }
        if (as1.s())
        {
            dg.a(as1.e);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (as)ch);
    }

    public void b(dg dg, as as1)
        throws cn
    {
        dg = (dm)dg;
        as1.a = dg.x();
        as1.a(true);
        as1.b = dg.z();
        as1.b(true);
        Object obj = new dd((byte)11, (byte)11, dg.w());
        as1.c = new HashMap(((dd) (obj)).c * 2);
        for (int i = 0; i < ((dd) (obj)).c; i++)
        {
            String s = dg.z();
            String s1 = dg.z();
            as1.c.put(s, s1);
        }

        as1.c(true);
        obj = dg.b(2);
        if (((BitSet) (obj)).get(0))
        {
            as1.d = dg.x();
            as1.d(true);
        }
        if (((BitSet) (obj)).get(1))
        {
            as1.e = dg.w();
            as1.e(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (as)ch);
    }

    private ashMap()
    {
    }

    ashMap(ashMap ashmap)
    {
        this();
    }
}
