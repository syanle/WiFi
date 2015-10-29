// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            n

class o
    implements Runnable
{

    final f a;
    final n b;

    o(n n, f f1)
    {
        b = n;
        a = f1;
        super();
    }

    public void run()
    {
        try
        {
            a.f();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
