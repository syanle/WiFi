// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import android.content.Context;
import net.youmi.android.a.a.j.c.b;
import net.youmi.android.a.b.k.f;

// Referenced classes of package net.youmi.android.a.a.e.c.a:
//            h

class i
    implements Runnable
{

    final Context a;
    final String b;
    final h c;

    i(h h, Context context, String s)
    {
        c = h;
        a = context;
        b = s;
        super();
    }

    public void run()
    {
        b b1;
        int j;
        int k;
        try
        {
            b1 = new b(a);
        }
        catch (Throwable throwable)
        {
            return;
        }
        j = 0;
        k = f.a(a).b();
        j = (int)((double)k * 0.90000000000000002D);
_L2:
        b1.a(b, 1, j);
        return;
        Throwable throwable1;
        throwable1;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
