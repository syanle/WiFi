// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;


// Referenced classes of package net.youmi.android.offers:
//            OffersManager

class a
    implements Runnable
{

    final String a;
    final OffersManager b;

    a(OffersManager offersmanager, String s)
    {
        b = offersmanager;
        a = s;
        super();
    }

    public void run()
    {
        try
        {
            net.youmi.android.a.c.c.a.c(OffersManager.a(b), a);
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }
}
