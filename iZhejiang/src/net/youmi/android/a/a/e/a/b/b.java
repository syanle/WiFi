// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import net.youmi.android.a.a.i.a.b.a;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            a

class b
    implements Runnable
{

    final net.youmi.android.a.a.e.a.b.a a;

    b(net.youmi.android.a.a.e.a.b.a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        try
        {
            a.c.m();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
