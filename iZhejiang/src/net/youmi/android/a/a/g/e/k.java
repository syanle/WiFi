// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.c.g;

class k
    implements Runnable
{

    private Context a;

    k(Context context)
    {
        if (context == null)
        {
            return;
        }
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
        try
        {
            net.youmi.android.a.a.b.a.a(a).a();
        }
        catch (Throwable throwable5) { }
        try
        {
            net.youmi.android.a.a.b.a.f(a).a();
        }
        catch (Throwable throwable4) { }
        try
        {
            net.youmi.android.a.a.b.a.b(a).a();
        }
        catch (Throwable throwable3) { }
        try
        {
            net.youmi.android.a.a.b.a.c(a).a();
        }
        catch (Throwable throwable2) { }
        try
        {
            net.youmi.android.a.a.b.a.d(a).a();
        }
        catch (Throwable throwable1) { }
        try
        {
            net.youmi.android.a.a.b.a.e(a).a();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
