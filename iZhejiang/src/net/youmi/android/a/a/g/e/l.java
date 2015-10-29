// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import net.youmi.android.a.a.b;
import net.youmi.android.a.b.c.f;

public class l
    implements Runnable
{

    private Context a;
    private boolean b;

    public l(Context context, boolean flag)
    {
        try
        {
            a = context.getApplicationContext();
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        b = flag;
    }

    public void run()
    {
        if (!f.a(a, net.youmi.android.a.a.b.a(a), b, -1L));
    }
}
