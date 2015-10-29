// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.e;
import net.youmi.android.a.b.g.e.a;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class c extends net.youmi.android.a.b.g.f.a
{

    public c()
    {
        super(101);
    }

    public void a(Context context, d d1, a a1, e e1)
    {
        super.a(context, d1, a1, e1);
        try
        {
            if (d1.a())
            {
                e1.a(a1);
                d1.a(102);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        d1.a(104);
        return;
    }
}
