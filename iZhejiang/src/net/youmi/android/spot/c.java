// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.animation.Animator;

// Referenced classes of package net.youmi.android.spot:
//            a

class c
    implements android.animation.Animator.AnimatorListener
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public void onAnimationCancel(Animator animator)
    {
        net.youmi.android.spot.a.b(a, false);
        net.youmi.android.spot.a.d(a);
    }

    public void onAnimationEnd(Animator animator)
    {
        net.youmi.android.spot.a.b(a, false);
        net.youmi.android.spot.a.d(a);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }
}
