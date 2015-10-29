// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.g;

import java.util.List;
import java.util.TimerTask;

// Referenced classes of package net.youmi.android.a.a.g.g:
//            d, e, b, c

class f extends TimerTask
{

    final e a;

    f(e e1)
    {
        a = e1;
        super();
    }

    public void run()
    {
        try
        {
            if (d.c() != null && d.c().size() > 0)
            {
                b.a(d.a(a.a)).b((c)d.c().get(0));
                d.c().remove(0);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }
}
