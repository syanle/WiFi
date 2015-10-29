// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.g.a.c;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.b;
import net.youmi.android.a.b.g.e.a;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class e extends net.youmi.android.a.b.g.f.a
{

    public e()
    {
        super(103);
    }

    public void a(Context context, d d1, a a1, net.youmi.android.a.b.g.d.e e1)
    {
        super.a(context, d1, a1, e1);
        try
        {
            context = d1.c();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        d1.a(104);
        return;
        if (!context.exists())
        {
            d1.a(104);
            return;
        }
        b b1;
        try
        {
            if (a1.e() <= 0L)
            {
                a1.a(d1.g().e());
            }
        }
        catch (Throwable throwable) { }
        b1 = d1.f();
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        e1.b(a1);
        return;
        if (b1.i(a1))
        {
            e1.b(a1);
            return;
        }
        context.delete();
        d1.a(104);
        return;
    }
}
