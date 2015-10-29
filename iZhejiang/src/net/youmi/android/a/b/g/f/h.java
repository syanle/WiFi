// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.f;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.g.a.c;
import net.youmi.android.a.b.g.a.d;
import net.youmi.android.a.b.g.d.e;
import net.youmi.android.a.b.g.e.a;
import net.youmi.android.a.b.i.i;

// Referenced classes of package net.youmi.android.a.b.g.f:
//            a

public class h extends net.youmi.android.a.b.g.f.a
{

    private long d;
    private int e;
    private boolean f;

    public h()
    {
        super(106);
        d = 0L;
        e = 0;
        f = true;
    }

    public void a(Context context, d d1, a a1, e e1)
    {
        super.a(context, d1, a1, e1);
        File file;
        File file1;
        file = d1.d();
        file1 = d1.c();
_L7:
        boolean flag = f;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        Object obj = d1.g();
        if (obj != null) goto _L2; else goto _L1
_L1:
        try
        {
            f = false;
            d1.a(104);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L3
_L2:
        if (((c) (obj)).a()) goto _L5; else goto _L4
_L4:
        f = false;
        if (((c) (obj)).b())
        {
            d1.a(103);
            return;
        }
          goto _L6
_L3:
        try
        {
            Thread.sleep(1500L);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L7
_L6:
        if (((c) (obj)).c())
        {
            d1.a(107);
            return;
        }
        if (((c) (obj)).d())
        {
            d1.a(104);
            return;
        }
_L5:
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        if (file1.exists())
        {
            d1.a(105);
            return;
        }
        if (!d1.b())
        {
            d1.a(100);
            return;
        }
        long l1 = d1.e().e();
        long l;
        l = l1;
        if (l1 > 0L)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        l = l1;
        if (e < 3)
        {
            l = i.a(context, d1.e().a());
            d1.e().a(l);
            e = e + 1;
        }
        if (file != null) goto _L9; else goto _L8
_L8:
        d1.a(100);
        return;
_L9:
        if (!file.exists()) goto _L3; else goto _L10
_L10:
        l1 = file.length();
        int j;
        j = 0;
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        j = (int)((100L * l1) / l);
        long l2 = ((l1 - d) * 1000L) / 1500L;
        d = l1;
        e1.a(a1, j, l2, l, l1);
          goto _L3
        context;
    }
}
