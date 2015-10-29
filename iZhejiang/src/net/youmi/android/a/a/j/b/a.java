// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;

import android.content.Context;
import android.graphics.Color;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import net.youmi.android.a.a.h.b;
import net.youmi.android.a.b.k.e;

// Referenced classes of package net.youmi.android.a.a.j.b:
//            d, c

public class a extends d
{

    private ImageView a;
    private ImageView b;
    private TextView c;
    private Animation d;
    private Animation e;
    private Animation f;

    public a(Context context)
    {
        super(context);
        e();
        a(context);
    }

    private void a(Context context)
    {
        try
        {
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -2));
            setPadding(0, net.youmi.android.a.b.k.e.a(context, 5F), 0, net.youmi.android.a.b.k.e.a(context, 8F));
            a = new ImageView(context);
            a.setId(2);
            a.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            a.setImageBitmap(net.youmi.android.a.b.k.b.a(net.youmi.android.a.a.h.b.l()));
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(net.youmi.android.a.b.k.e.a(context, 40F), net.youmi.android.a.b.k.e.a(context, 40F));
            layoutparams.addRule(14);
            layoutparams.addRule(10);
            addView(a, layoutparams);
            b = new ImageView(context);
            b.setId(3);
            b.setVisibility(4);
            b.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            b.setImageBitmap(net.youmi.android.a.b.k.b.a(net.youmi.android.a.a.h.b.m()));
            layoutparams = new android.widget.RelativeLayout.LayoutParams(net.youmi.android.a.b.k.e.a(context, 40F), net.youmi.android.a.b.k.e.a(context, 40F));
            layoutparams.addRule(14);
            layoutparams.addRule(10);
            addView(b, layoutparams);
            c = new TextView(context);
            c.setId(4);
            c.setGravity(17);
            c.setTextSize(2, 15F);
            c.setTextColor(Color.parseColor("#999999"));
            context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            context.addRule(14);
            context.addRule(3, 2);
            context.addRule(3, 3);
            addView(c, context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private void a(String s, boolean flag)
    {
        if (c != null)
        {
            c.setText(s);
        }
    }

    private void e()
    {
        try
        {
            d = new RotateAnimation(0.0F, 180F, 1, 0.5F, 1, 0.5F);
            d.setDuration(150L);
            d.setFillAfter(true);
            e = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
            e.setDuration(150L);
            e.setFillAfter(true);
            f = new RotateAnimation(0.0F, 360F, 1, 0.5F, 1, 0.5F);
            f.setDuration(1000L);
            f.setRepeatMode(1);
            f.setRepeatCount(0x7fffffff);
            f.setInterpolator(new LinearInterpolator());
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void a()
    {
        try
        {
            if (a != null)
            {
                a.clearAnimation();
                a.setVisibility(0);
            }
            if (b != null)
            {
                b.clearAnimation();
                b.setVisibility(4);
            }
            a(net.youmi.android.a.a.h.a.y(), false);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void b()
    {
        try
        {
            if (a != null)
            {
                a.setVisibility(0);
                a.clearAnimation();
                if (c.c == getPreState())
                {
                    a.startAnimation(e);
                }
            }
            if (b != null)
            {
                b.clearAnimation();
                b.setVisibility(4);
            }
            a(net.youmi.android.a.a.h.a.y(), false);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void c()
    {
        try
        {
            if (a != null)
            {
                a.clearAnimation();
                a.startAnimation(d);
            }
            if (b != null)
            {
                b.clearAnimation();
                b.setVisibility(4);
            }
            a(net.youmi.android.a.a.h.a.z(), false);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void d()
    {
        try
        {
            if (a != null)
            {
                a.clearAnimation();
                a.setVisibility(4);
            }
            if (b != null)
            {
                b.setVisibility(0);
                b.startAnimation(f);
            }
            a(net.youmi.android.a.a.h.a.x(), true);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
