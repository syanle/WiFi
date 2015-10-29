// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dq, az, cn, dg, 
//            db, dj, dd, ay, 
//            dc, ax, ch

private static class <init> extends dq
{

    public void a(dg dg1, az az1)
        throws cn
    {
        dg1.j();
_L6:
        Object obj;
        obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            az1.p();
            return;
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 71
    //                   2 181
    //                   3 281;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_281;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L7:
        dg1.m();
        if (true) goto _L6; else goto _L5
_L5:
        if (((db) (obj)).b == 13)
        {
            obj = dg1.n();
            az1.a = new HashMap(((dd) (obj)).c * 2);
            for (int i = 0; i < ((dd) (obj)).c; i++)
            {
                String s = dg1.z();
                ay ay1 = new ay();
                ay1.a(dg1);
                az1.a.put(s, ay1);
            }

            dg1.o();
            az1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L7
_L3:
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            az1.b = new ArrayList(((dc) (obj)).b);
            for (int j = 0; j < ((dc) (obj)).b; j++)
            {
                ax ax1 = new ax();
                ax1.a(dg1);
                az1.b.add(ax1);
            }

            dg1.q();
            az1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L7
        if (((db) (obj)).b == 11)
        {
            az1.c = dg1.z();
            az1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L7
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (az)ch);
    }

    public void b(dg dg1, az az1)
        throws cn
    {
        az1.p();
        dg1.a(az.q());
        if (az1.a != null)
        {
            dg1.a(az.r());
            dg1.a(new dd((byte)11, (byte)12, az1.a.size()));
            java.util.ntry ntry;
            for (Iterator iterator = az1.a.entrySet().iterator(); iterator.hasNext(); ((ay)ntry.getValue()).b(dg1))
            {
                ntry = (java.util.ntry)iterator.next();
                dg1.a((String)ntry.getKey());
            }

            dg1.e();
            dg1.c();
        }
        if (az1.b != null && az1.l())
        {
            dg1.a(az.s());
            dg1.a(new dc((byte)12, az1.b.size()));
            for (Iterator iterator1 = az1.b.iterator(); iterator1.hasNext(); ((ax)iterator1.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        if (az1.c != null && az1.o())
        {
            dg1.a(az.t());
            dg1.a(az1.c);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (az)ch);
    }

    private tring()
    {
    }

    tring(tring tring)
    {
        this();
    }
}
