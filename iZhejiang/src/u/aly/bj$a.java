// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, bj, cn, dg, 
//            db, dh, dj, ba, 
//            ch

private static class <init> extends dq
{

    public void a(dg dg1, bj bj1)
        throws cn
    {
        dg1.j();
_L5:
        db db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            if (!bj1.e())
            {
                throw new dh((new StringBuilder()).append("Required field 'resp_code' was not found in serialized data! Struct: ").append(toString()).toString());
            } else
            {
                bj1.m();
                return;
            }
        }
        db1.c;
        JVM INSTR tableswitch 1 3: default 88
    //                   1 103
    //                   2 139
    //                   3 175;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_175;
_L1:
        dj.a(dg1, db1.b);
_L6:
        dg1.m();
          goto _L5
_L2:
        if (db1.b == 8)
        {
            bj1.a = dg1.w();
            bj1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L6
_L3:
        if (db1.b == 11)
        {
            bj1.b = dg1.z();
            bj1.b(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L6
        if (db1.b == 12)
        {
            bj1.c = new ba();
            bj1.c.a(dg1);
            bj1.c(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L6
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (bj)ch);
    }

    public void b(dg dg1, bj bj1)
        throws cn
    {
        bj1.m();
        dg1.a(bj.n());
        dg1.a(bj.o());
        dg1.a(bj1.a);
        dg1.c();
        if (bj1.b != null && bj1.i())
        {
            dg1.a(bj.p());
            dg1.a(bj1.b);
            dg1.c();
        }
        if (bj1.c != null && bj1.l())
        {
            dg1.a(bj.q());
            bj1.c.b(dg1);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (bj)ch);
    }

    private bject()
    {
    }

    bject(bject bject)
    {
        this();
    }
}
