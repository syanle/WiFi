// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import android.content.Context;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package net.youmi.android.b:
//            d, e

class j
    implements Runnable
{

    private static ExecutorService a = Executors.newCachedThreadPool();
    private Context b;
    private e c;
    private List d;

    private j(Context context, List list)
    {
        b = context.getApplicationContext();
        d = list;
    }

    public static void a(Context context, List list)
    {
        try
        {
            context = new j(context, list);
            a.execute(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public void run()
    {
        try
        {
            if (c != null)
            {
                net.youmi.android.b.d.a(b, c);
            }
            if (d != null)
            {
                net.youmi.android.b.d.a(b, d);
            }
            net.youmi.android.b.d.a(b);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

}
