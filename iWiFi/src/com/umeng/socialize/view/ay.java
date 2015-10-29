// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view:
//            av, az, ba

class ay extends FrameLayout
{

    final av a;
    private final View b;
    private final View c;
    private final int d;

    ay(av av1, Context context, View view, View view1, int i)
    {
        a = av1;
        b = view;
        c = view1;
        d = i;
        super(context);
    }

    static av a(ay ay1)
    {
        return ay1.a;
    }

    private void a(View view, View view1, int i, int j)
    {
        if (view1.getVisibility() == 0 && j < i)
        {
            av.e(a).post(new az(this, view1, view));
        } else
        if (view1.getVisibility() != 0 && j >= i)
        {
            av.e(a).post(new ba(this, view1, view));
            return;
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (!SocializeUtils.isFloatWindowStyle(av.c(a)))
        {
            a(b, c, d, j);
        }
    }
}
