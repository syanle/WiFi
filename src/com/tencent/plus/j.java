// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;

// Referenced classes of package com.tencent.plus:
//            ImageActivity, l, a

class j
    implements android.view.View.OnClickListener
{

    final ImageActivity a;

    j(ImageActivity imageactivity)
    {
        a = imageactivity;
        super();
    }

    public void onClick(View view)
    {
        ImageActivity.d(a).setVisibility(0);
        ImageActivity.e(a).setEnabled(false);
        ImageActivity.e(a).setTextColor(Color.rgb(21, 21, 21));
        ImageActivity.f(a).setEnabled(false);
        ImageActivity.f(a).setTextColor(Color.rgb(36, 94, 134));
        (new Thread(new l(this))).start();
        if (ImageActivity.h(a))
        {
            a.a("10657", 0L);
        } else
        {
            long l1 = System.currentTimeMillis();
            long l2 = ImageActivity.i(a);
            a.a("10655", l1 - l2);
            if (ImageActivity.c(a).b)
            {
                a.a("10654", 0L);
                return;
            }
        }
    }
}
