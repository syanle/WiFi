// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            dr, bl, cn, dm, 
//            bg, be, bm, dc, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bl bl1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bl1.a);
        dg.a(bl1.b);
        dg.a(bl1.c);
        dg.a(bl1.d);
        BitSet bitset = new BitSet();
        if (bl1.t())
        {
            bitset.set(0);
        }
        if (bl1.y())
        {
            bitset.set(1);
        }
        if (bl1.B())
        {
            bitset.set(2);
        }
        dg.a(bitset, 3);
        if (bl1.t())
        {
            dg.a(bl1.e.size());
            for (Iterator iterator = bl1.e.iterator(); iterator.hasNext(); ((bg)iterator.next()).b(dg)) { }
        }
        if (bl1.y())
        {
            dg.a(bl1.f.size());
            for (Iterator iterator1 = bl1.f.iterator(); iterator1.hasNext(); ((be)iterator1.next()).b(dg)) { }
        }
        if (bl1.B())
        {
            bl1.g.b(dg);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bl)ch);
    }

    public void b(dg dg, bl bl1)
        throws cn
    {
        boolean flag = false;
        dg = (dm)dg;
        bl1.a = dg.z();
        bl1.a(true);
        bl1.b = dg.x();
        bl1.b(true);
        bl1.c = dg.x();
        bl1.c(true);
        bl1.d = dg.x();
        bl1.d(true);
        BitSet bitset = dg.b(3);
        if (bitset.get(0))
        {
            dc dc1 = new dc((byte)12, dg.w());
            bl1.e = new ArrayList(dc1.b);
            for (int i = 0; i < dc1.b; i++)
            {
                bg bg1 = new bg();
                bg1.a(dg);
                bl1.e.add(bg1);
            }

            bl1.e(true);
        }
        if (bitset.get(1))
        {
            dc dc2 = new dc((byte)12, dg.w());
            bl1.f = new ArrayList(dc2.b);
            for (int j = ((flag) ? 1 : 0); j < dc2.b; j++)
            {
                be be1 = new be();
                be1.a(dg);
                bl1.f.add(be1);
            }

            bl1.f(true);
        }
        if (bitset.get(2))
        {
            bl1.g = new bm();
            bl1.g.a(dg);
            bl1.g(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bl)ch);
    }

    private rrayList()
    {
    }

    rrayList(rrayList rraylist)
    {
        this();
    }
}
