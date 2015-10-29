// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dq, as, cn, dg, 
//            db, dh, dj, dd, 
//            ch

private static class <init> extends dq
{

    public void a(dg dg1, as as1)
        throws cn
    {
        dg1.j();
_L7:
        Object obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            String s;
            String s1;
            int i;
            if (!as1.e())
            {
                throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(toString()).toString());
            } else
            {
                as1.t();
                return;
            }
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 5: default 96
    //                   1 111
    //                   2 147
    //                   3 183
    //                   4 284
    //                   5 320;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_320;
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L8:
        dg1.m();
          goto _L7
_L2:
        if (((db) (obj)).b == 10)
        {
            as1.a = dg1.x();
            as1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L3:
        if (((db) (obj)).b == 11)
        {
            as1.b = dg1.z();
            as1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L4:
        if (((db) (obj)).b == 13)
        {
            obj = dg1.n();
            as1.c = new HashMap(((dd) (obj)).c * 2);
            for (i = 0; i < ((dd) (obj)).c; i++)
            {
                s = dg1.z();
                s1 = dg1.z();
                as1.c.put(s, s1);
            }

            dg1.o();
            as1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L5:
        if (((db) (obj)).b == 10)
        {
            as1.d = dg1.x();
            as1.d(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
        if (((db) (obj)).b == 8)
        {
            as1.e = dg1.w();
            as1.e(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (as)ch);
    }

    public void b(dg dg1, as as1)
        throws cn
    {
        as1.t();
        dg1.a(as.u());
        dg1.a(as.v());
        dg1.a(as1.a);
        dg1.c();
        if (as1.b != null)
        {
            dg1.a(as.w());
            dg1.a(as1.b);
            dg1.c();
        }
        if (as1.c != null)
        {
            dg1.a(as.x());
            dg1.a(new dd((byte)11, (byte)11, as1.c.size()));
            java.util.ntry ntry;
            for (Iterator iterator = as1.c.entrySet().iterator(); iterator.hasNext(); dg1.a((String)ntry.getValue()))
            {
                ntry = (java.util.ntry)iterator.next();
                dg1.a((String)ntry.getKey());
            }

            dg1.e();
            dg1.c();
        }
        if (as1.p())
        {
            dg1.a(as.y());
            dg1.a(as1.d);
            dg1.c();
        }
        if (as1.s())
        {
            dg1.a(as.z());
            dg1.a(as1.e);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (as)ch);
    }

    private tring()
    {
    }

    tring(tring tring)
    {
        this();
    }
}
