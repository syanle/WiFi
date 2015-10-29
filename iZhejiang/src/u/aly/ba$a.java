// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dq, ba, cn, dg, 
//            db, dh, dj, dd, 
//            bb, ch

private static class <init> extends dq
{

    public void a(dg dg1, ba ba1)
        throws cn
    {
        dg1.j();
_L5:
        Object obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            String s;
            bb bb1;
            int i;
            if (!ba1.j())
            {
                throw new dh((new StringBuilder()).append("Required field 'version' was not found in serialized data! Struct: ").append(toString()).toString());
            } else
            {
                ba1.n();
                return;
            }
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 3: default 88
    //                   1 103
    //                   2 213
    //                   3 249;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_249;
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L6:
        dg1.m();
          goto _L5
_L2:
        if (((db) (obj)).b == 13)
        {
            obj = dg1.n();
            ba1.a = new HashMap(((dd) (obj)).c * 2);
            for (i = 0; i < ((dd) (obj)).c; i++)
            {
                s = dg1.z();
                bb1 = new bb();
                bb1.a(dg1);
                ba1.a.put(s, bb1);
            }

            dg1.o();
            ba1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L6
_L3:
        if (((db) (obj)).b == 8)
        {
            ba1.b = dg1.w();
            ba1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L6
        if (((db) (obj)).b == 11)
        {
            ba1.c = dg1.z();
            ba1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L6
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (ba)ch);
    }

    public void b(dg dg1, ba ba1)
        throws cn
    {
        ba1.n();
        dg1.a(ba.o());
        if (ba1.a != null)
        {
            dg1.a(ba.p());
            dg1.a(new dd((byte)11, (byte)12, ba1.a.size()));
            java.util.ntry ntry;
            for (Iterator iterator = ba1.a.entrySet().iterator(); iterator.hasNext(); ((bb)ntry.getValue()).b(dg1))
            {
                ntry = (java.util.ntry)iterator.next();
                dg1.a((String)ntry.getKey());
            }

            dg1.e();
            dg1.c();
        }
        dg1.a(ba.q());
        dg1.a(ba1.b);
        dg1.c();
        if (ba1.c != null)
        {
            dg1.a(ba.r());
            dg1.a(ba1.c);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (ba)ch);
    }

    private tring()
    {
    }

    tring(tring tring)
    {
        this();
    }
}
