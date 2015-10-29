// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import net.youmi.android.a.b.g.d.a;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            a

class b
    implements Runnable
{

    final a a;
    final int b;
    final net.youmi.android.a.a.g.c.a c;

    b(net.youmi.android.a.a.g.c.a a1, a a2, int i)
    {
        c = a1;
        a = a2;
        b = i;
        super();
    }

    public void run()
    {
        a.a(b);
    }
}
