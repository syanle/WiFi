// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.app.Activity;
import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            BackwardSupportUtil, AnimationHelperImpl22, AnimationHelperImpl21below

public static class IHelper
{
    public static interface IHelper
    {

        public abstract void cancelAnimation(View view, Animation animation);
    }


    public static void cancelAnimation(View view, Animation animation)
    {
        if (android.os.tUtil.AnimationHelper.IHelper >= 8)
        {
            (new AnimationHelperImpl22()).cancelAnimation(view, animation);
            return;
        } else
        {
            (new AnimationHelperImpl21below()).cancelAnimation(view, animation);
            return;
        }
    }

    public static void overridePendingTransition(Activity activity, int i, int j)
    {
        activity.overridePendingTransition(i, j);
    }

    public IHelper()
    {
    }
}
