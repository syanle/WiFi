// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, an, cn, dg, 
//            db, dj, ch

private static class <init> extends dq
{

    public void a(dg dg1, an an1)
        throws cn
    {
        dg1.j();
_L2:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            an1.j();
            return;
        }
        switch (db1.c)
        {
        default:
            dj.a(dg1, db1.b);
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_103;
        }
_L3:
        dg1.m();
        if (true) goto _L2; else goto _L1
_L1:
        if (db1.b == 11)
        {
            an1.a = dg1.z();
            an1.a(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L3
        if (db1.b == 11)
        {
            an1.b = dg1.z();
            an1.b(true);
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L3
    }

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (an)ch);
    }

    public void b(dg dg1, an an1)
        throws cn
    {
        an1.j();
        dg1.a(an.k());
        if (an1.a != null)
        {
            dg1.a(an.l());
            dg1.a(an1.a);
            dg1.c();
        }
        if (an1.b != null)
        {
            dg1.a(an.m());
            dg1.a(an1.b);
            dg1.c();
        }
        dg1.d();
        dg1.b();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (an)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
