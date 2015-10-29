// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            dq, av, cn, dg, 
//            db, dh, dj, dd, 
//            bh, ch

private static class <init> extends dq
{

    public void a(dg dg1, av av1)
        throws cn
    {
        dg1.j();
_L7:
        Object obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            String s;
            bh bh1;
            int i;
            if (!av1.s())
            {
                throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(toString()).toString());
            } else
            {
                av1.t();
                return;
            }
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 5: default 96
    //                   1 111
    //                   2 147
    //                   3 257
    //                   4 293
    //                   5 329;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_329;
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L8:
        dg1.m();
          goto _L7
_L2:
        if (((db) (obj)).b == 11)
        {
            av1.a = dg1.z();
            av1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L3:
        if (((db) (obj)).b == 13)
        {
            obj = dg1.n();
            av1.b = new HashMap(((dd) (obj)).c * 2);
            for (i = 0; i < ((dd) (obj)).c; i++)
            {
                s = dg1.z();
                bh1 = new bh();
                bh1.a(dg1);
                av1.b.put(s, bh1);
            }

            dg1.o();
            av1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L4:
        if (((db) (obj)).b == 10)
        {
            av1.c = dg1.x();
            av1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
_L5:
        if (((db) (obj)).b == 8)
        {
            av1.d = dg1.w();
            av1.d(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
        if (((db) (obj)).b == 10)
        {
            av1.e = dg1.x();
            av1.e(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L8
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (av)ch);
    }

    public void b(dg dg1, av av1)
        throws cn
    {
        av1.t();
        dg1.a(av.u());
        if (av1.a != null)
        {
            dg1.a(av.v());
            dg1.a(av1.a);
            dg1.c();
        }
        if (av1.b != null)
        {
            dg1.a(av.w());
            dg1.a(new dd((byte)11, (byte)12, av1.b.size()));
            java.util.ntry ntry;
            for (Iterator iterator = av1.b.entrySet().iterator(); iterator.hasNext(); ((bh)ntry.getValue()).b(dg1))
            {
                ntry = (java.util.ntry)iterator.next();
                dg1.a((String)ntry.getKey());
            }

            dg1.e();
            dg1.c();
        }
        if (av1.m())
        {
            dg1.a(av.x());
            dg1.a(av1.c);
            dg1.c();
        }
        if (av1.p())
        {
            dg1.a(av.y());
            dg1.a(av1.d);
            dg1.c();
        }
        dg1.a(av.z());
        dg1.a(av1.e);
        dg1.c();
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (av)ch);
    }

    private tring()
    {
    }

    tring(tring tring)
    {
        this();
    }
}
