// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import net.youmi.android.c.a.b;

// Referenced classes of package net.youmi.android.spot:
//            SplashView, f, SpotDialogListener

class h
    implements Runnable
{

    final SplashView a;

    h(SplashView splashview)
    {
        a = splashview;
        super();
    }

    public void run()
    {
        try
        {
            if (!SplashView.f(a))
            {
                f.a(SplashView.d(a), SplashView.g(a), SplashView.h(a), b.a, -1L, 1);
                if (SplashView.i(a) != null)
                {
                    Intent intent = new Intent(SplashView.d(a), SplashView.i(a));
                    SplashView.d(a).startActivity(intent);
                    SplashView.j(a);
                    ((Activity)SplashView.d(a)).finish();
                }
                if (SplashView.k(a) != null)
                {
                    SplashView.k(a).onSpotClosed();
                }
                SplashView.a(a, true);
            }
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.b("ads_", this, throwable);
        }
    }
}
