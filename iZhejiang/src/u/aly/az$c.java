// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dr, az, cn, dm, 
//            ay, ax, dd, dc, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, az az1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(az1.a.size());
        java.util.ntry ntry;
        for (Iterator iterator = az1.a.entrySet().iterator(); iterator.hasNext(); ((ay)ntry.getValue()).b(dg))
        {
            ntry = (java.util.ntry)iterator.next();
            dg.a((String)ntry.getKey());
        }

        BitSet bitset = new BitSet();
        if (az1.l())
        {
            bitset.set(0);
        }
        if (az1.o())
        {
            bitset.set(1);
        }
        dg.a(bitset, 2);
        if (az1.l())
        {
            dg.a(az1.b.size());
            for (Iterator iterator1 = az1.b.iterator(); iterator1.hasNext(); ((ax)iterator1.next()).b(dg)) { }
        }
        if (az1.o())
        {
            dg.a(az1.c);
        }
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (az)ch);
    }

    public void b(dg dg, az az1)
        throws cn
    {
        boolean flag = false;
        dg = (dm)dg;
        Object obj = new dd((byte)11, (byte)12, dg.w());
        az1.a = new HashMap(((dd) (obj)).c * 2);
        for (int i = 0; i < ((dd) (obj)).c; i++)
        {
            String s = dg.z();
            ay ay1 = new ay();
            ay1.a(dg);
            az1.a.put(s, ay1);
        }

        az1.a(true);
        obj = dg.b(2);
        if (((BitSet) (obj)).get(0))
        {
            dc dc1 = new dc((byte)12, dg.w());
            az1.b = new ArrayList(dc1.b);
            for (int j = ((flag) ? 1 : 0); j < dc1.b; j++)
            {
                ax ax1 = new ax();
                ax1.a(dg);
                az1.b.add(ax1);
            }

            az1.b(true);
        }
        if (((BitSet) (obj)).get(1))
        {
            az1.c = dg.z();
            az1.c(true);
        }
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (az)ch);
    }

    private rrayList()
    {
    }

    rrayList(rrayList rraylist)
    {
        this();
    }
}
