// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.app.AlarmManager;
import android.content.Context;
import net.youmi.android.a.b.k.o;

// Referenced classes of package net.youmi.android.offers.d.b:
//            k, h

final class i
    implements Runnable
{

    final Context a;

    i(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        try
        {
            Context context = a.getApplicationContext();
            k.a(context);
            o.e(context).setInexactRepeating(1, System.currentTimeMillis() + 60000L, 60000L, h.d(context));
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
