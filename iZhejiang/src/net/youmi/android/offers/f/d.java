// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import android.content.Context;
import net.youmi.android.a.a.i.a.b.g;
import net.youmi.android.offers.f.a.b;

// Referenced classes of package net.youmi.android.offers.f:
//            b, a

final class d
    implements Runnable
{

    final Context a;

    d(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        while (g.a().e() || b.c(a)) 
        {
            return;
        }
        b.a(a, b(a), "0", -1L);
        b.a(a, "0", false);
    }
}
