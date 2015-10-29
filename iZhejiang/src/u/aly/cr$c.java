// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dr, cr, cn, dg, 
//            dh, co, ch

private static class <init> extends dr
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
        short word0 = dg1.v();
        cr1.b = cr1.a(dg1, word0);
        if (cr1.b != null)
        {
            cr1.c = cr1.b(word0);
        }
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
            dg1.a(cr1.c.a());
            cr1.d(dg1);
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
