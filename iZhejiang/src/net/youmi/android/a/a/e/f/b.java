// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import net.youmi.android.a.a.e.d.a;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            a

class b
    implements Runnable
{

    final a a;
    final String b;
    final String c;
    final net.youmi.android.a.a.e.f.a d;

    b(net.youmi.android.a.a.e.f.a a1, a a2, String s, String s1)
    {
        d = a1;
        a = a2;
        b = s;
        c = s1;
        super();
    }

    public void run()
    {
        try
        {
            a.a(b, c);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
