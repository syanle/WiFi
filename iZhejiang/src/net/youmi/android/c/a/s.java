// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import net.youmi.android.a.b.k.f;

public class s
{

    public static void a(Context context, View view)
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_292;
        }
        float f1 = f.a(context).g();
        view.setPivotX(view.getWidth() / 2);
        view.setPivotY(view.getHeight() / 2);
        context = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            1.0F, 0.8F
        }).setDuration(1L);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, "scaleY", new float[] {
            1.0F, 0.8F
        }).setDuration(1L);
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(view, "alpha", new float[] {
            1.0F, 0.7F
        }).setDuration(1L);
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(view, "X", new float[] {
            -f1, 0.0F
        }).setDuration(800L);
        ObjectAnimator objectanimator3 = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            0.8F, 1.0F
        }).setDuration(400L);
        objectanimator3.setStartDelay(400L);
        ObjectAnimator objectanimator4 = ObjectAnimator.ofFloat(view, "scaleY", new float[] {
            0.8F, 1.0F
        }).setDuration(400L);
        objectanimator4.setStartDelay(400L);
        view = ObjectAnimator.ofFloat(view, "alpha", new float[] {
            0.7F, 1.0F
        }).setDuration(400L);
        view.setStartDelay(400L);
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.playTogether(new Animator[] {
            context, objectanimator, objectanimator1, objectanimator2, objectanimator3, objectanimator4, view
        });
        animatorset.start();
        return;
        context;
        context.printStackTrace();
        return;
    }

    public static void a(Context context, View view, long l)
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        context = ObjectAnimator.ofFloat(view, "leftGlideBack", new float[] {
            1.0F, 0.0F
        }).setDuration(l);
        view = new AnimatorSet();
        view.playTogether(new Animator[] {
            context
        });
        view.start();
        return;
        context;
        context.printStackTrace();
        return;
    }

    public static AnimatorSet b(Context context, View view, long l)
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        context = ObjectAnimator.ofFloat(view, "glideBack", new float[] {
            0.0F, 1.0F
        }).setDuration(l);
        view = new AnimatorSet();
        view.playTogether(new Animator[] {
            context
        });
        view.start();
        return view;
        context;
        context.printStackTrace();
        return null;
    }

    public static void c(Context context, View view, long l)
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        context = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            0.0F, 1.0F
        }).setDuration(l);
        view = ObjectAnimator.ofFloat(view, "scaleY", new float[] {
            0.0F, 1.0F
        }).setDuration(l);
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.playTogether(new Animator[] {
            context, view
        });
        animatorset.start();
        return;
        context;
        context.printStackTrace();
        return;
    }

    public static AnimatorSet d(Context context, View view, long l)
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        AnimatorSet animatorset;
        context = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            1.0F, 0.0F
        }).setDuration(l);
        view = ObjectAnimator.ofFloat(view, "scaleY", new float[] {
            1.0F, 0.0F
        }).setDuration(l);
        animatorset = new AnimatorSet();
        animatorset.playTogether(new Animator[] {
            context, view
        });
        animatorset.start();
        return animatorset;
        context;
        context.printStackTrace();
        return null;
    }
}
