// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dr, ba, cn, dm, 
//            bb, dd, dg, ch

private static class <init> extends dr
{

    public void a(dg dg, ba ba1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(ba1.a.size());
        java.util.ntry ntry;
        for (Iterator iterator = ba1.a.entrySet().iterator(); iterator.hasNext(); ((bb)ntry.getValue()).b(dg))
        {
            ntry = (java.util.ntry)iterator.next();
            dg.a((String)ntry.getKey());
        }

        dg.a(ba1.b);
        dg.a(ba1.c);
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (ba)ch);
    }

    public void b(dg dg, ba ba1)
        throws cn
    {
        dg = (dm)dg;
        dd dd1 = new dd((byte)11, (byte)12, dg.w());
        ba1.a = new HashMap(dd1.c * 2);
        for (int i = 0; i < dd1.c; i++)
        {
            String s = dg.z();
            bb bb1 = new bb();
            bb1.a(dg);
            ba1.a.put(s, bb1);
        }

        ba1.a(true);
        ba1.b = dg.w();
        ba1.b(true);
        ba1.c = dg.z();
        ba1.c(true);
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (ba)ch);
    }

    private ashMap()
    {
    }

    ashMap(ashMap ashmap)
    {
        this();
    }
}
