// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.umeng.socialize.view.wigets.a;
import com.umeng.socialize.view.wigets.h;
import com.umeng.socom.Log;

public class am extends RelativeLayout
{

    private static final int a = 150;
    private Context b;
    private h c;
    private Animation d;
    private View e;

    public am(Context context)
    {
        super(context);
        b = context;
        b();
    }

    public am(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public am(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void b()
    {
        c = new h(b);
        Object obj = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(12);
        c.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        d = new TranslateAnimation(0.0F, 0.0F, 80F, 0.0F);
        d.setDuration(150L);
        addView(c);
        e = new View(b);
        obj = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        e.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        e.setBackgroundColor(Color.argb(50, 0, 0, 0));
        obj = new AlphaAnimation(0.0F, 1.0F);
        ((AlphaAnimation) (obj)).setDuration(1500L);
        e.setAnimation(((Animation) (obj)));
        addView(e);
    }

    public void a()
    {
        c.startAnimation(d);
    }

    public void a(android.view.View.OnClickListener onclicklistener)
    {
        e.setOnClickListener(onclicklistener);
    }

    public void a(a a1)
    {
        c.a(a1);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        Log.c("onMeasure", (new StringBuilder("ActionBoard, width = ")).append(i).append(", height = ").append(j).toString());
        android.view.ViewGroup.LayoutParams layoutparams = c.getLayoutParams();
        layoutparams.height = c.e(i);
        layoutparams.width = i;
        android.view.ViewGroup.LayoutParams layoutparams1 = e.getLayoutParams();
        layoutparams1.height = j - layoutparams.height;
        layoutparams1.width = i;
    }
}
