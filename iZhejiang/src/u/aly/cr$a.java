// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dq, cr, cn, dg, 
//            db, dh, ch

private static class <init> extends dq
{

    public void a(dg dg1, ch ch)
        throws cn
    {
        b(dg1, (cr)ch);
    }

    public void a(dg dg1, cr cr1)
        throws cn
    {
        cr1.c = null;
        cr1.b = null;
        dg1.j();
        db db1 = dg1.l();
        cr1.b = cr1.a(dg1, db1);
        if (cr1.b != null)
        {
            cr1.c = cr1.b(db1.c);
        }
        dg1.m();
        dg1.l();
        dg1.k();
    }

    public void b(dg dg1, ch ch)
        throws cn
    {
        a(dg1, (cr)ch);
    }

    public void b(dg dg1, cr cr1)
        throws cn
    {
        if (cr1.i() == null || cr1.j() == null)
        {
            throw new dh("Cannot write a TUnion with no set value!");
        } else
        {
            dg1.a(cr1.c());
            dg1.a(cr1.a(cr1.c));
            cr1.c(dg1);
            dg1.c();
            dg1.d();
            dg1.b();
            return;
        }
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
