// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            dr, bn, cn, dm, 
//            ap, ao, ar, bf, 
//            am, bc, bl, ba, 
//            az, an, aq, dc, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bn bn1)
        throws cn
    {
        dg = (dm)dg;
        bn1.a.b(dg);
        bn1.b.b(dg);
        bn1.c.b(dg);
        bn1.d.b(dg);
        BitSet bitset = new BitSet();
        if (bn1.r())
        {
            bitset.set(0);
        }
        if (bn1.w())
        {
            bitset.set(1);
        }
        if (bn1.B())
        {
            bitset.set(2);
        }
        if (bn1.E())
        {
            bitset.set(3);
        }
        if (bn1.H())
        {
            bitset.set(4);
        }
        if (bn1.K())
        {
            bitset.set(5);
        }
        if (bn1.N())
        {
            bitset.set(6);
        }
        dg.a(bitset, 7);
        if (bn1.r())
        {
            bn1.e.b(dg);
        }
        if (bn1.w())
        {
            dg.a(bn1.f.size());
            for (Iterator iterator = bn1.f.iterator(); iterator.hasNext(); ((bc)iterator.next()).b(dg)) { }
        }
        if (bn1.B())
        {
            dg.a(bn1.g.size());
            for (Iterator iterator1 = bn1.g.iterator(); iterator1.hasNext(); ((bl)iterator1.next()).b(dg)) { }
        }
        if (bn1.E())
        {
            bn1.h.b(dg);
        }
        if (bn1.H())
        {
            bn1.i.b(dg);
        }
        if (bn1.K())
        {
            bn1.j.b(dg);
        }
        if (bn1.N())
        {
            bn1.k.b(dg);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bn)ch);
    }

    public void b(dg dg, bn bn1)
        throws cn
    {
        boolean flag = false;
        dg = (dm)dg;
        bn1.a = new ap();
        bn1.a.a(dg);
        bn1.a(true);
        bn1.b = new ao();
        bn1.b.a(dg);
        bn1.b(true);
        bn1.c = new ar();
        bn1.c.a(dg);
        bn1.c(true);
        bn1.d = new bf();
        bn1.d.a(dg);
        bn1.d(true);
        BitSet bitset = dg.b(7);
        if (bitset.get(0))
        {
            bn1.e = new am();
            bn1.e.a(dg);
            bn1.e(true);
        }
        if (bitset.get(1))
        {
            dc dc1 = new dc((byte)12, dg.w());
            bn1.f = new ArrayList(dc1.b);
            for (int i = 0; i < dc1.b; i++)
            {
                bc bc1 = new bc();
                bc1.a(dg);
                bn1.f.add(bc1);
            }

            bn1.f(true);
        }
        if (bitset.get(2))
        {
            dc dc2 = new dc((byte)12, dg.w());
            bn1.g = new ArrayList(dc2.b);
            for (int j = ((flag) ? 1 : 0); j < dc2.b; j++)
            {
                bl bl1 = new bl();
                bl1.a(dg);
                bn1.g.add(bl1);
            }

            bn1.g(true);
        }
        if (bitset.get(3))
        {
            bn1.h = new ba();
            bn1.h.a(dg);
            bn1.h(true);
        }
        if (bitset.get(4))
        {
            bn1.i = new az();
            bn1.i.a(dg);
            bn1.i(true);
        }
        if (bitset.get(5))
        {
            bn1.j = new an();
            bn1.j.a(dg);
            bn1.j(true);
        }
        if (bitset.get(6))
        {
            bn1.k = new aq();
            bn1.k.a(dg);
            bn1.k(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bn)ch);
    }

    private rrayList()
    {
    }

    rrayList(rrayList rraylist)
    {
        this();
    }
}
