// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.os.Handler;
import android.view.View;
import android.widget.RelativeLayout;
import net.youmi.android.a.b.i.k;

// Referenced classes of package net.youmi.android.spot:
//            SplashView, h

class i
    implements android.view.View.OnClickListener
{

    final SplashView a;

    private i(SplashView splashview)
    {
        a = splashview;
        super();
    }

    i(SplashView splashview, h h)
    {
        this(splashview);
    }

    public void onClick(View view)
    {
        if (view != SplashView.a(a)) goto _L2; else goto _L1
_L1:
        if (SplashView.b(a) != 0) goto _L4; else goto _L3
_L3:
        a.handleClick();
_L6:
        return;
_L4:
        if (SplashView.b(a) == 1)
        {
            if (SplashView.c(a) != null)
            {
                SplashView.c(a).setVisibility(0);
                return;
            } else
            {
                a.handleClick();
                return;
            }
        }
        if (SplashView.b(a) == 2)
        {
            if (k.c(SplashView.d(a)).equals("wifi"))
            {
                a.handleClick();
                return;
            }
            if (SplashView.c(a) != null)
            {
                SplashView.c(a).setVisibility(0);
                return;
            } else
            {
                a.handleClick();
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == SplashView.e(a))
        {
            a.handler.postDelayed(a.b, 0L);
            return;
        }
        if (view.getId() == 4)
        {
            a.handleClick();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
