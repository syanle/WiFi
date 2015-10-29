// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import net.youmi.android.a.a.j.c.b;

// Referenced classes of package net.youmi.android.offers.f:
//            e

class g
    implements Runnable
{

    final String a;
    final e b;

    g(e e1, String s)
    {
        b = e1;
        a = s;
        super();
    }

    public void run()
    {
        (new b(e.a())).a(a, 1);
    }
}
