// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;

// Referenced classes of package com.tencent.plus:
//            ImageActivity, m, a

class k
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener
{

    final ImageActivity a;

    k(ImageActivity imageactivity)
    {
        a = imageactivity;
        super();
    }

    public void onGlobalLayout()
    {
        a.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        ImageActivity.a(a, ImageActivity.a(a).a());
        ImageActivity.c(a).a(ImageActivity.b(a));
    }
}
