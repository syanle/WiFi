// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.Context;
import android.content.Intent;
import net.youmi.android.AdBrowser;
import net.youmi.android.a.a.a.a.d;
import net.youmi.android.a.a.a.a.g;
import net.youmi.android.a.a.e.g.a;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.b.k.h;
import net.youmi.android.a.b.k.j;
import net.youmi.android.c.a.t;

// Referenced classes of package net.youmi.android.spot:
//            g

public class f
{

    public static void a(Context context, int i, String s)
    {
        if (i == 0)
        {
            c c1 = new c(2, 500);
            c1.e(s);
            c1.b(1);
            s = new Intent(context, net/youmi/android/AdBrowser);
            s.putExtra("aca5522945c72310f9f22b333c68f2b3", c1);
            s.setFlags(0x10000000);
            context.startActivity(s);
            return;
        } else
        {
            t.a(context, s);
            return;
        }
    }

    public static void a(Context context, int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, int k)
    {
        if (j.a(context, s1))
        {
            h.b(context, s1);
            return;
        } else
        {
            a a1 = new a();
            a1.b(true);
            a1.a(true);
            a1.b(s5);
            a1.c(s6);
            s5 = new net.youmi.android.a.a.a.a.a(i, 2);
            s6 = new d();
            s6.a(s4);
            s5.a(s6);
            a1.a(s5);
            s4 = new g();
            s4.b(s1);
            s4.a(s);
            s5.a(s4);
            s = new b();
            s.b(s2);
            s.a(net.youmi.android.c.a.b.c);
            s.c(s3);
            s.d(net.youmi.android.a.b.d.j.a(new String((new StringBuilder()).append("entc=").append(k).toString())));
            a1.a(s);
            net.youmi.android.a.a.g.c.a.a(context).a(a1, null);
            return;
        }
    }

    public static void a(Context context, String s, String s1, String s2, long l, int i)
    {
        try
        {
            net.youmi.android.a.c.a.a(new net.youmi.android.spot.g(s, s2, s1, i, l, context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
