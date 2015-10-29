// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.Context;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.b.d.j;
import net.youmi.android.c.a.v;

final class g extends v
{

    final String a;
    final String b;
    final String c;
    final int d;
    final long e;
    final Context f;

    g(String s, String s1, String s2, int i, long l, Context context)
    {
        a = s;
        b = s1;
        c = s2;
        d = i;
        e = l;
        f = context;
        super();
    }

    public void run()
    {
        b b1 = new b();
        b1.b(a);
        b1.a(b);
        b1.c(c);
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("entc=").append(d).toString());
        if (e != -1L)
        {
            stringbuilder.append((new StringBuilder()).append("&ct=").append(e).toString());
        }
        b1.d(j.a(stringbuilder.toString()));
        net.youmi.android.c.a.b.a(f, b1);
    }
}
