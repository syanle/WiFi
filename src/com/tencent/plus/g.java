// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.view.View;

// Referenced classes of package com.tencent.plus:
//            ImageActivity

class g
    implements android.view.View.OnClickListener
{

    final ImageActivity a;

    g(ImageActivity imageactivity)
    {
        a = imageactivity;
        super();
    }

    public void onClick(View view)
    {
        long l = System.currentTimeMillis();
        long l1 = ImageActivity.i(a);
        a.a("10656", l - l1);
        a.setResult(0);
        ImageActivity.j(a);
    }
}
