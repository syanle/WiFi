// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import android.content.Context;
import net.youmi.android.offers.f.a.b;

// Referenced classes of package net.youmi.android.offers.f:
//            a, b

final class c
    implements Runnable
{

    final Context a;

    c(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        String s = b.a(a, b(a), "0");
        b.a(a, s, true);
    }
}
