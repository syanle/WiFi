// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, ao, cn, dg, 
//            db, dj, bk, ch

private static class <init> extends dq
{

    public void a(dg dg1, ao ao1)
        throws cn
    {
        dg1.j();
_L13:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            ao1.H();
            return;
        }
        db1.c;
        JVM INSTR tableswitch 1 10: default 84
    //                   1 99
    //                   2 135
    //                   3 171
    //                   4 207
    //                   5 243
    //                   6 282
    //                   7 318
    //                   8 354
    //                   9 390
    //                   10 426;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_426;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, db1.b);
_L14:
        dg1.m();
        if (true) goto _L13; else goto _L12
_L12:
        if (db1.b == 11)
        {
            ao1.a = dg1.z();
            ao1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L3:
        if (db1.b == 11)
        {
            ao1.b = dg1.z();
            ao1.b(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L4:
        if (db1.b == 8)
        {
            ao1.c = dg1.w();
            ao1.c(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L5:
        if (db1.b == 11)
        {
            ao1.d = dg1.z();
            ao1.d(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L6:
        if (db1.b == 8)
        {
            ao1.e = bk.a(dg1.w());
            ao1.e(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L7:
        if (db1.b == 11)
        {
            ao1.f = dg1.z();
            ao1.f(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L8:
        if (db1.b == 11)
        {
            ao1.g = dg1.z();
            ao1.g(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L9:
        if (db1.b == 11)
        {
            ao1.h = dg1.z();
            ao1.h(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
_L10:
        if (db1.b == 11)
        {
            ao1.i = dg1.z();
            ao1.i(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
        if (db1.b == 8)
        {
            ao1.j = dg1.w();
            ao1.j(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L14
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (ao)ch);
    }

    public void b(dg dg1, ao ao1)
        throws cn
    {
        ao1.H();
        dg1.a(ao.I());
        if (ao1.a != null)
        {
            dg1.a(ao.J());
            dg1.a(ao1.a);
            dg1.c();
        }
        if (ao1.b != null && ao1.i())
        {
            dg1.a(ao.K());
            dg1.a(ao1.b);
            dg1.c();
        }
        if (ao1.l())
        {
            dg1.a(ao.L());
            dg1.a(ao1.c);
            dg1.c();
        }
        if (ao1.d != null && ao1.o())
        {
            dg1.a(ao.M());
            dg1.a(ao1.d);
            dg1.c();
        }
        if (ao1.e != null)
        {
            dg1.a(ao.N());
            dg1.a(ao1.e.a());
            dg1.c();
        }
        if (ao1.f != null)
        {
            dg1.a(ao.O());
            dg1.a(ao1.f);
            dg1.c();
        }
        if (ao1.g != null)
        {
            dg1.a(ao.P());
            dg1.a(ao1.g);
            dg1.c();
        }
        if (ao1.h != null && ao1.A())
        {
            dg1.a(ao.Q());
            dg1.a(ao1.h);
            dg1.c();
        }
        if (ao1.i != null && ao1.D())
        {
            dg1.a(ao.R());
            dg1.a(ao1.i);
            dg1.c();
        }
        if (ao1.G())
        {
            dg1.a(ao.S());
            dg1.a(ao1.j);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (ao)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
