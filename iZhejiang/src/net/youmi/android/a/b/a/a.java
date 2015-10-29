// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.a;

import android.content.Context;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

public class a
{

    public static Animation a(Context context, int i)
    {
        context = new TranslateAnimation(2, 0.0F, 2, 0.0F, 2, -1F, 2, 0.0F);
        context.setDuration(i);
        return context;
    }

    public static AnimationSet a(Context context, int i, int j, int k)
    {
        AnimationSet animationset = new AnimationSet(false);
        animationset.setInterpolator(AnimationUtils.loadInterpolator(context, 0x10a0004));
        AlphaAnimation alphaanimation = new AlphaAnimation(0.5F, 1.0F);
        alphaanimation.setDuration(i);
        alphaanimation.setFillAfter(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.8F, 1.0F, 0.8F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(i);
        scaleanimation.setFillAfter(true);
        context = b(context, k);
        context.setFillAfter(true);
        context.setStartOffset(j + i);
        animationset.addAnimation(alphaanimation);
        animationset.addAnimation(scaleanimation);
        animationset.addAnimation(context);
        return animationset;
    }

    public static Animation b(Context context, int i)
    {
        context = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
        context.setDuration(i);
        return context;
    }
}
