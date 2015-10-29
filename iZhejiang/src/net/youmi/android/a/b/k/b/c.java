// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k.b;

import net.youmi.android.a.b.k.a.a;

// Referenced classes of package net.youmi.android.a.b.k.b:
//            a

class c
    implements Runnable
{

    final int a;
    final net.youmi.android.a.b.k.b.a b;

    c(net.youmi.android.a.b.k.b.a a1, int i)
    {
        b = a1;
        a = i;
        super();
    }

    public void run()
    {
        if (net.youmi.android.a.b.k.b.a.a(b) != null)
        {
            net.youmi.android.a.b.k.b.a.a(b).a(a);
        }
    }
}
