// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.view.View;
import android.view.animation.Animation;

class AnimationHelperImpl22
    implements BackwardSupportUtil.AnimationHelper.IHelper
{

    AnimationHelperImpl22()
    {
    }

    public void cancelAnimation(View view, Animation animation)
    {
        animation.cancel();
    }
}
