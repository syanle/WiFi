// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            dq, bn, cn, dg, 
//            db, dj, ap, ao, 
//            ar, bf, am, dc, 
//            bc, bl, ba, az, 
//            an, aq, ch

private static class <init> extends dq
{

    public void a(dg dg1, bn bn1)
        throws cn
    {
        dg1.j();
_L14:
        Object obj;
        obj = dg1.l();
        if (((db) (obj)).b == 0)
        {
            dg1.k();
            bn1.O();
            return;
        }
        ((db) (obj)).c;
        JVM INSTR tableswitch 1 11: default 88
    //                   1 103
    //                   2 150
    //                   3 197
    //                   4 244
    //                   5 291
    //                   6 338
    //                   7 438
    //                   8 538
    //                   9 585
    //                   10 632
    //                   11 679;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L12:
        break MISSING_BLOCK_LABEL_679;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, ((db) (obj)).b);
_L15:
        dg1.m();
        if (true) goto _L14; else goto _L13
_L13:
        if (((db) (obj)).b == 12)
        {
            bn1.a = new ap();
            bn1.a.a(dg1);
            bn1.a(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L3:
        if (((db) (obj)).b == 12)
        {
            bn1.b = new ao();
            bn1.b.a(dg1);
            bn1.b(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L4:
        if (((db) (obj)).b == 12)
        {
            bn1.c = new ar();
            bn1.c.a(dg1);
            bn1.c(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L5:
        if (((db) (obj)).b == 12)
        {
            bn1.d = new bf();
            bn1.d.a(dg1);
            bn1.d(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L6:
        if (((db) (obj)).b == 12)
        {
            bn1.e = new am();
            bn1.e.a(dg1);
            bn1.e(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L7:
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            bn1.f = new ArrayList(((dc) (obj)).b);
            for (int i = 0; i < ((dc) (obj)).b; i++)
            {
                bc bc1 = new bc();
                bc1.a(dg1);
                bn1.f.add(bc1);
            }

            dg1.q();
            bn1.f(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L8:
        if (((db) (obj)).b == 15)
        {
            obj = dg1.p();
            bn1.g = new ArrayList(((dc) (obj)).b);
            for (int j = 0; j < ((dc) (obj)).b; j++)
            {
                bl bl1 = new bl();
                bl1.a(dg1);
                bn1.g.add(bl1);
            }

            dg1.q();
            bn1.g(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L9:
        if (((db) (obj)).b == 12)
        {
            bn1.h = new ba();
            bn1.h.a(dg1);
            bn1.h(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L10:
        if (((db) (obj)).b == 12)
        {
            bn1.i = new az();
            bn1.i.a(dg1);
            bn1.i(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
_L11:
        if (((db) (obj)).b == 12)
        {
            bn1.j = new an();
            bn1.j.a(dg1);
            bn1.j(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
        if (((db) (obj)).b == 12)
        {
            bn1.k = new aq();
            bn1.k.a(dg1);
            bn1.k(true);
        } else
        {
            dj.a(dg1, ((db) (obj)).b);
        }
          goto _L15
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (bn)ch);
    }

    public void b(dg dg1, bn bn1)
        throws cn
    {
        bn1.O();
        dg1.a(bn.P());
        if (bn1.a != null)
        {
            dg1.a(bn.Q());
            bn1.a.b(dg1);
            dg1.c();
        }
        if (bn1.b != null)
        {
            dg1.a(bn.R());
            bn1.b.b(dg1);
            dg1.c();
        }
        if (bn1.c != null)
        {
            dg1.a(bn.S());
            bn1.c.b(dg1);
            dg1.c();
        }
        if (bn1.d != null)
        {
            dg1.a(bn.T());
            bn1.d.b(dg1);
            dg1.c();
        }
        if (bn1.e != null && bn1.r())
        {
            dg1.a(bn.U());
            bn1.e.b(dg1);
            dg1.c();
        }
        if (bn1.f != null && bn1.w())
        {
            dg1.a(bn.V());
            dg1.a(new dc((byte)12, bn1.f.size()));
            for (Iterator iterator = bn1.f.iterator(); iterator.hasNext(); ((bc)iterator.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        if (bn1.g != null && bn1.B())
        {
            dg1.a(bn.W());
            dg1.a(new dc((byte)12, bn1.g.size()));
            for (Iterator iterator1 = bn1.g.iterator(); iterator1.hasNext(); ((bl)iterator1.next()).b(dg1)) { }
            dg1.f();
            dg1.c();
        }
        if (bn1.h != null && bn1.E())
        {
            dg1.a(bn.X());
            bn1.h.b(dg1);
            dg1.c();
        }
        if (bn1.i != null && bn1.H())
        {
            dg1.a(bn.Y());
            bn1.i.b(dg1);
            dg1.c();
        }
        if (bn1.j != null && bn1.K())
        {
            dg1.a(bn.Z());
            bn1.j.b(dg1);
            dg1.c();
        }
        if (bn1.k != null && bn1.N())
        {
            dg1.a(bn.aa());
            bn1.k.b(dg1);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (bn)ch);
    }

    private terator()
    {
    }

    terator(terator terator)
    {
        this();
    }
}
