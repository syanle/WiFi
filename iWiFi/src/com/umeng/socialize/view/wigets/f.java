// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.view.animation.Animation;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            SwitchImageView

class f
    implements android.view.animation.Animation.AnimationListener
{

    final SwitchImageView a;

    f(SwitchImageView switchimageview)
    {
        a = switchimageview;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        animation = a.a();
        if (animation != null)
        {
            boolean flag;
            if (a.b)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            animation.a(flag);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
