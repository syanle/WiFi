// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, aq, cn, dg, 
//            db, dj, bd, ch

private static class <init> extends dq
{

    public void a(dg dg1, aq aq1)
        throws cn
    {
        dg1.j();
_L2:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            aq1.f();
            return;
        }
        switch (db1.c)
        {
        default:
            dj.a(dg1, db1.b);
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */
        }
_L3:
        dg1.m();
        if (true) goto _L2; else goto _L1
_L1:
        if (db1.b == 12)
        {
            aq1.a = new bd();
            aq1.a.a(dg1);
            aq1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (aq)ch);
    }

    public void b(dg dg1, aq aq1)
        throws cn
    {
        aq1.f();
        dg1.a(aq.h());
        if (aq1.a != null && aq1.e())
        {
            dg1.a(aq.i());
            aq1.a.b(dg1);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (aq)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
