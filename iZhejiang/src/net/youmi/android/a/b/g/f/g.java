// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.e;
import net.youmi.android.a.b.g.e.a;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class g extends net.youmi.android.a.b.g.f.a
{

    public g()
    {
        super(100);
    }

    public void a(Context context, d d1, a a1, e e1)
    {
        super.a(context, d1, a1, e1);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        if (a1.d())
        {
            break MISSING_BLOCK_LABEL_27;
        }
        d1.a(104);
        return;
        File file;
        try
        {
            context = d1.c();
            file = d1.d();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (context != null || file != null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        d1.a(104);
        return;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (context.exists())
        {
            d1.a(105);
            return;
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (file.exists() && d1.b())
        {
            e1.f(a1);
            d1.a(106);
            return;
        }
        d1.a(101);
        return;
    }
}
