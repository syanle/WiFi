// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import net.youmi.android.a.a.j.c.b;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            i

class j
    implements Runnable
{

    final String a;
    final int b;
    final i c;

    j(i k, String s, int l)
    {
        c = k;
        a = s;
        b = l;
        super();
    }

    public void run()
    {
        (new b(i.a(c))).a(a, 1, b);
    }
}
