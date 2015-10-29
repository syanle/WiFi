// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import android.content.Context;
import net.youmi.android.a.a.e.f.c;
import net.youmi.android.a.a.e.g.h;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            p

class q
    implements Runnable
{

    final Context a;
    final h b;
    final p c;

    q(p p, Context context, h h)
    {
        c = p;
        a = context;
        b = h;
        super();
    }

    public void run()
    {
        try
        {
            net.youmi.android.a.a.e.f.c.a(a).a(b);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
