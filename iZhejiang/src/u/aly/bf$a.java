// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, bf, cn, dg, 
//            db, dj, al, ch

private static class <init> extends dq
{

    public void a(dg dg1, bf bf1)
        throws cn
    {
        dg1.j();
_L13:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            bf1.H();
            return;
        }
        db1.c;
        JVM INSTR tableswitch 1 10: default 84
    //                   1 99
    //                   2 135
    //                   3 171
    //                   4 207
    //                   5 242
    //                   6 277
    //                   7 313
    //                   8 349
    //                   9 385
    //                   10 424;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_424;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, db1.b);
_L14:
        dg1.m();
        if (true) goto _L13; else goto _L12
_L12:
        if (db1.b == 8)
        {
            bf1.a = dg1.w();
            bf1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L3:
        if (db1.b == 11)
        {
            bf1.b = dg1.z();
            bf1.b(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L4:
        if (db1.b == 11)
        {
            bf1.c = dg1.z();
            bf1.c(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L5:
        if (db1.b == 4)
        {
            bf1.d = dg1.y();
            bf1.d(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L6:
        if (db1.b == 4)
        {
            bf1.e = dg1.y();
            bf1.e(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L7:
        if (db1.b == 11)
        {
            bf1.f = dg1.z();
            bf1.f(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L8:
        if (db1.b == 8)
        {
            bf1.g = dg1.w();
            bf1.g(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L9:
        if (db1.b == 11)
        {
            bf1.h = dg1.z();
            bf1.h(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L10:
        if (db1.b == 8)
        {
            bf1.i = al.a(dg1.w());
            bf1.i(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
        if (db1.b == 11)
        {
            bf1.j = dg1.z();
            bf1.j(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (bf)ch);
    }

    public void b(dg dg1, bf bf1)
        throws cn
    {
        bf1.H();
        dg1.a(bf.I());
        if (bf1.e())
        {
            dg1.a(bf.J());
            dg1.a(bf1.a);
            dg1.c();
        }
        if (bf1.b != null && bf1.i())
        {
            dg1.a(bf.K());
            dg1.a(bf1.b);
            dg1.c();
        }
        if (bf1.c != null && bf1.l())
        {
            dg1.a(bf.L());
            dg1.a(bf1.c);
            dg1.c();
        }
        if (bf1.o())
        {
            dg1.a(bf.M());
            dg1.a(bf1.d);
            dg1.c();
        }
        if (bf1.r())
        {
            dg1.a(bf.N());
            dg1.a(bf1.e);
            dg1.c();
        }
        if (bf1.f != null && bf1.u())
        {
            dg1.a(bf.O());
            dg1.a(bf1.f);
            dg1.c();
        }
        if (bf1.x())
        {
            dg1.a(bf.P());
            dg1.a(bf1.g);
            dg1.c();
        }
        if (bf1.h != null && bf1.A())
        {
            dg1.a(bf.Q());
            dg1.a(bf1.h);
            dg1.c();
        }
        if (bf1.i != null && bf1.D())
        {
            dg1.a(bf.R());
            dg1.a(bf1.i.a());
            dg1.c();
        }
        if (bf1.j != null && bf1.G())
        {
            dg1.a(bf.S());
            dg1.a(bf1.j);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (bf)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
