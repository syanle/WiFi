// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.b;
import net.youmi.android.a.b.g.d.e;
import net.youmi.android.a.b.g.e.a;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class i extends net.youmi.android.a.b.g.f.a
{

    public i()
    {
        super(105);
    }

    public void a(Context context, d d1, a a1, e e1)
    {
        super.a(context, d1, a1, e1);
        File file;
        b b1;
        boolean flag;
        boolean flag1;
        long l;
        long l1;
        try
        {
            file = d1.c();
            b1 = d1.f();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        e1.d(a1);
        return;
        flag1 = true;
        flag = flag1;
        if (!b1.g_(a1)) goto _L2; else goto _L1
_L1:
        l = file.length();
        l1 = net.youmi.android.a.b.i.i.a(context, a1.a());
        if (a1.e() <= 0L)
        {
            a1.a(l1);
        }
          goto _L3
_L2:
        flag1 = flag;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        flag1 = flag;
        if (!b1.i(a1))
        {
            flag1 = false;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        e1.d(a1);
        return;
        file.delete();
        d1.a(100);
        return;
_L3:
        flag = flag1;
        if (l != l1)
        {
            flag = false;
        }
        if (true) goto _L2; else goto _L4
_L4:
    }
}
