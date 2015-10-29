// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.view.animation.Animation;
import android.widget.FrameLayout;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            PlatformListPage

class this._cls0
    implements android.view.animation.Listener
{

    final PlatformListPage this$0;

    public void onAnimationEnd(Animation animation)
    {
        PlatformListPage.access$0(PlatformListPage.this).setVisibility(8);
        finish();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ()
    {
        this$0 = PlatformListPage.this;
        super();
    }
}
