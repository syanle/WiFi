// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import net.youmi.android.a.b.g.a.c;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.e;
import net.youmi.android.a.b.g.e.a;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class f extends net.youmi.android.a.b.g.f.a
{

    long d;
    private long e;
    private boolean f;

    public f()
    {
        super(102);
        e = 0L;
        f = true;
    }

    public void a(Context context, d d1, a a1, e e1)
    {
        super.a(context, d1, a1, e1);
_L2:
        long l;
        long l1;
        boolean flag;
        try
        {
            flag = f;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        context = d1.g();
        if (context == null)
        {
            try
            {
                f = false;
                d1.a(104);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            continue; /* Loop/switch isn't completed */
        }
        if (context.a())
        {
            break MISSING_BLOCK_LABEL_95;
        }
        f = false;
        if (context.b())
        {
            d1.a(103);
            return;
        }
        if (context.c())
        {
            d1.a(107);
            return;
        }
        if (context.d())
        {
            d1.a(104);
            return;
        }
        if (System.currentTimeMillis() - d >= 1500L)
        {
            l = context.e();
            l1 = context.f();
            e1.a(a1, context.g(), ((l1 - e) * 1000L) / 1500L, l, l1);
            e = l1;
            d = System.currentTimeMillis();
        }
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
    }
}
