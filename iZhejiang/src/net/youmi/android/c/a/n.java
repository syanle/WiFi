// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.graphics.BitmapFactory;
import android.os.SystemClock;

// Referenced classes of package net.youmi.android.c.a:
//            k, i, j, l

class n extends Thread
{

    final k a;

    private n(k k1)
    {
        a = k1;
        super();
    }

    n(k k1, l l)
    {
        this(k1);
    }

    public void run()
    {
        if (k.d(a) != null) goto _L2; else goto _L1
_L1:
        j j1;
        return;
_L6:
        if (j1 != null) goto _L4; else goto _L3
_L3:
        SystemClock.sleep(50L);
_L2:
        if (!k.e(a)) goto _L1; else goto _L5
_L5:
        if (k.d(a).b() == 1)
        {
            j1 = k.d(a).d();
            k.a(a, j1.a);
            k.d(a).a();
            k.f(a);
            return;
        }
        if (k.g(a))
        {
            break MISSING_BLOCK_LABEL_181;
        }
        j1 = k.d(a).d();
          goto _L6
_L4:
        long l;
        if (j1.a != null)
        {
            k.a(a, j1.a);
        } else
        if (j1.c != null)
        {
            k.a(a, BitmapFactory.decodeFile(j1.c));
        }
        l = j1.b;
        if (k.h(a) == null) goto _L1; else goto _L7
_L7:
        k.f(a);
        SystemClock.sleep(l);
          goto _L2
        SystemClock.sleep(50L);
          goto _L2
    }
}
