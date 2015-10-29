// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            dr, am, cn, dm, 
//            dg, ch

private static class <init> extends dr
{

    public void a(dg dg, am am1)
        throws cn
    {
        ((dm)dg).a(am1.a);
    }

    public volatile void a(dg dg, ch ch)
        throws cn
    {
        a(dg, (am)ch);
    }

    public void b(dg dg, am am1)
        throws cn
    {
        am1.a = ((dm)dg).x();
        am1.a(true);
    }

    public volatile void b(dg dg, ch ch)
        throws cn
    {
        b(dg, (am)ch);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
