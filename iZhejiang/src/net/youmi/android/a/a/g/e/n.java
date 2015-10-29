// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import net.youmi.android.a.a.b;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.c.c.a;
import net.youmi.android.b.k;

public class n
    implements Runnable
{

    private Context a;

    public n(Context context)
    {
        try
        {
            a = context.getApplicationContext();
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
        if (!f.a(a, b.a(a), false))
        {
            break MISSING_BLOCK_LABEL_78;
        }
        String s;
        Throwable throwable;
        String s1;
        int i;
        try
        {
            Thread.sleep(1000L);
        }
        catch (InterruptedException interruptedexception) { }
        s = net.youmi.android.a.c.c.a.a(a);
        s1 = (new net.youmi.android.a.c.c.b(a)).a();
        i = net.youmi.android.a.c.c.a.f(a);
        (new k(a, s, s1, "a_app", String.valueOf(i))).a(1);
        return;
        throwable;
        net.youmi.android.a.c.b.a.a(throwable);
        return;
    }
}
