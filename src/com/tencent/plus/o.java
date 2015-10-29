// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.widget.Button;
import android.widget.ProgressBar;

// Referenced classes of package com.tencent.plus:
//            i, ImageActivity

class o
    implements Runnable
{

    final i a;

    o(i j)
    {
        a = j;
        super();
    }

    public void run()
    {
        ImageActivity.e(a.a).setEnabled(true);
        ImageActivity.e(a.a).setTextColor(-1);
        ImageActivity.f(a.a).setEnabled(true);
        ImageActivity.f(a.a).setTextColor(-1);
        ImageActivity.f(a.a).setText("\u91CD\u8BD5");
        ImageActivity.d(a.a).setVisibility(8);
        ImageActivity.a(a.a, true);
    }
}
