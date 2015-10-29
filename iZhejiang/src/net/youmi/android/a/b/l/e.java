// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.l;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import net.youmi.android.a.b.k.k;
import net.youmi.android.a.b.k.o;

public class e
    implements android.view.animation.Animation.AnimationListener
{

    private WindowManager a;
    private android.view.WindowManager.LayoutParams b;
    private LinearLayout c;
    private View d;

    public e(Context context, View view, int i)
    {
        a = o.d(context);
        b = new android.view.WindowManager.LayoutParams();
        b.flags = 40;
        b.gravity = i;
        b.x = 0;
        b.y = 0;
        b.format = -2;
        if (k.i(context))
        {
            b.type = 2003;
        } else
        {
            b.type = 2005;
        }
        b.height = -2;
        b.width = -2;
        c = new LinearLayout(context);
        d = view;
        c.addView(d);
    }

    public void a(Animation animation)
    {
        if (animation == null)
        {
            return;
        }
        try
        {
            a();
            animation.setAnimationListener(this);
            d.startAnimation(animation);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Animation animation)
        {
            return;
        }
    }

    public boolean a()
    {
        try
        {
            a.addView(c, b);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    public boolean b()
    {
        try
        {
            a.removeView(c);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    public void onAnimationEnd(Animation animation)
    {
        try
        {
            b();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Animation animation)
        {
            return;
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
