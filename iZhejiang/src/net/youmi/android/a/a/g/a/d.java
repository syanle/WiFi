// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import net.youmi.android.a.a.j.c.b;
import net.youmi.android.a.b.k.f;

// Referenced classes of package net.youmi.android.a.a.g.a:
//            c

class d
    implements Runnable
{

    final String a;
    final c b;

    d(c c1, String s)
    {
        b = c1;
        a = s;
        super();
    }

    public void run()
    {
        b b1;
        int i;
        int j;
        try
        {
            b1 = new b(c.a(b));
        }
        catch (Throwable throwable)
        {
            return;
        }
        i = 0;
        j = f.a(c.a(b)).b();
        i = (int)((double)j * 0.90000000000000002D);
_L2:
        b1.a(a, 1, i);
        return;
        Throwable throwable1;
        throwable1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
