// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dr, bm, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bm bm1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bm1.a);
        dg.a(bm1.b);
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bm)ch);
    }

    public void b(dg dg, bm bm1)
        throws cn
    {
        dg = (dm)dg;
        bm1.a = dg.w();
        bm1.a(true);
        bm1.b = dg.w();
        bm1.b(true);
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bm)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
