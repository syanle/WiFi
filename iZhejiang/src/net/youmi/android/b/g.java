// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import android.content.Context;
import net.youmi.android.b.a.a;

// Referenced classes of package net.youmi.android.b:
//            h, k, i, b, 
//            f

public class g
    implements Runnable
{

    private k a;
    private Context b;
    private int c;

    public g(Context context, k k1, int j)
    {
        b = context.getApplicationContext();
        a = k1;
        c = j;
    }

    public void run()
    {
        long l2 = 0L;
        i j;
        h h1;
        i l;
        long l1;
        long l3;
        try
        {
            h1 = net.youmi.android.b.h.a(b);
            j = h1.a(3, a.a());
            l3 = System.currentTimeMillis();
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (j == null) goto _L2; else goto _L1
_L1:
        l1 = j.c();
        if (l3 - l1 < 30000L)
        {
            return;
        }
        if (c == 1 && net.youmi.android.b.a.a.a(l3, l1)) goto _L4; else goto _L3
_L3:
        l = h1.a(1, a.a());
        if (l == null) goto _L6; else goto _L5
_L5:
        l1 = l.c();
_L7:
        l = h1.a(2, a.a());
        if (l == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        l2 = l.c();
        j.a(l3);
        h1.a(j);
        a.a(net.youmi.android.b.b.a().a(l1).b(l2).d()).b();
        return;
_L2:
        j = new i();
        j.a(a.a());
        j.b(3);
        continue; /* Loop/switch isn't completed */
_L6:
        l1 = 0L;
          goto _L7
_L4:
        return;
        if (true) goto _L3; else goto _L8
_L8:
    }
}
