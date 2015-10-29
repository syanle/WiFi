// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class r extends UMAsyncTask
{

    final c a;
    private final b b;
    private final Context c;

    r(c c1, b b1, Context context)
    {
        a = c1;
        b = b1;
        c = context;
        super();
    }

    protected Void a()
    {
        if (b.h(c) == 200)
        {
            a.getEntity().cleanStatisticsData(c, true);
        }
        return null;
    }

    protected Object doInBackground()
    {
        return a();
    }
}
