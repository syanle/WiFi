// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.a.i.a.b.a;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            a

class d
    implements Runnable
{

    final net.youmi.android.a.a.e.a.b.a a;

    d(net.youmi.android.a.a.e.a.b.a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        try
        {
            a.c.b(a.d.o());
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
