// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dr, bi, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, bi bi1)
        throws cn
    {
        dg = (dm)dg;
        dg.a(bi1.a);
        dg.a(bi1.b);
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (bi)ch);
    }

    public void b(dg dg, bi bi1)
        throws cn
    {
        dg = (dm)dg;
        bi1.a = dg.w();
        bi1.a(true);
        bi1.b = dg.w();
        bi1.b(true);
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (bi)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
