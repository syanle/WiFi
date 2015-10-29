// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dr, bd, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bd bd1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bd1.a);
        dg.a(bd1.b);
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bd)ch);
    }

    public void b(dg dg, bd bd1)
        throws cn
    {
        dg = (dm)dg;
        bd1.a = dg.w();
        bd1.a(true);
        bd1.b = dg.x();
        bd1.b(true);
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bd)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
