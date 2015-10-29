// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k.b;

import net.youmi.android.a.b.k.a.a;

// Referenced classes of package net.youmi.android.a.b.k.b:
//            a

class d
    implements Runnable
{

    final int a;
    final int b;
    final net.youmi.android.a.b.k.b.a c;

    d(net.youmi.android.a.b.k.b.a a1, int i, int j)
    {
        c = a1;
        a = i;
        b = j;
        super();
    }

    public void run()
    {
        if (net.youmi.android.a.b.k.b.a.a(c) != null)
        {
            net.youmi.android.a.b.k.b.a.a(c).a(a, b);
        }
    }
}
