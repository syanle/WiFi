// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, bo, cn, dg, 
//            db, dj, aw, ch

private static class <init> extends dq
{

    public void a(dg dg1, bo bo1)
        throws cn
    {
        dg1.j();
_L7:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            bo1.p();
            return;
        }
        db1.c;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 75
    //                   2 114
    //                   3 150
    //                   4 186;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_186;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        dj.a(dg1, db1.b);
_L8:
        dg1.m();
        if (true) goto _L7; else goto _L6
_L6:
        if (db1.b == 8)
        {
            bo1.a = aw.a(dg1.w());
            bo1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L8
_L3:
        if (db1.b == 8)
        {
            bo1.b = dg1.w();
            bo1.b(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L8
_L4:
        if (db1.b == 11)
        {
            bo1.c = dg1.z();
            bo1.c(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L8
        if (db1.b == 11)
        {
            bo1.d = dg1.z();
            bo1.d(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L8
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (bo)ch);
    }

    public void b(dg dg1, bo bo1)
        throws cn
    {
        bo1.p();
        dg1.a(bo.q());
        if (bo1.a != null && bo1.e())
        {
            dg1.a(bo.r());
            dg1.a(bo1.a.a());
            dg1.c();
        }
        if (bo1.i())
        {
            dg1.a(bo.s());
            dg1.a(bo1.b);
            dg1.c();
        }
        if (bo1.c != null && bo1.l())
        {
            dg1.a(bo.t());
            dg1.a(bo1.c);
            dg1.c();
        }
        if (bo1.d != null && bo1.o())
        {
            dg1.a(bo.u());
            dg1.a(bo1.d);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (bo)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
