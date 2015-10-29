// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            ai, aw, q, c

class a
    implements Runnable
{

    final ai a;

    public void run()
    {
        ai._mthif(a, false);
        while (!ai._mthdo(a) || !aw._mthdo()._mthint()) 
        {
            return;
        }
        q.x().A();
        ai._mthif(a).postDelayed(this, c.aj);
        ai._mthif(a, true);
    }

    (ai ai1)
    {
        a = ai1;
        super();
    }
}
