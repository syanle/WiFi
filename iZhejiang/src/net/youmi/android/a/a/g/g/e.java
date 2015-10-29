// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.g;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import net.youmi.android.a.a.j.c.b;

// Referenced classes of package net.youmi.android.a.a.g.g:
//            d, c, f

class e
    implements Runnable
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public void run()
    {
        int i;
        int j;
        try
        {
            if (d.c() == null)
            {
                return;
            }
        }
        catch (Exception exception)
        {
            break; /* Loop/switch isn't completed */
        }
        if (d.c().size() <= 0) goto _L2; else goto _L1
_L1:
        if (d.d() == null)
        {
            d.a(new ArrayList(d.c().size()));
        }
        if (d.e() == null)
        {
            d.a(new Timer());
        }
        j = d.c().size();
        i = 0;
_L3:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = new b(d.a(a));
        ((b) (obj)).b(((c)d.c().get(i)).b(), 0);
        d.d().add(obj);
        obj = new f(this);
        d.e().schedule(((java.util.TimerTask) (obj)), (i + 1) * 3500);
        i++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L3; else goto _L2
_L2:
    }
}
