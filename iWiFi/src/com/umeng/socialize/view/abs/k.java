// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.os.Handler;
import android.view.View;
import com.umeng.socialize.controller.UMSocialService;

// Referenced classes of package com.umeng.socialize.view.abs:
//            l, g

class k
    implements android.view.View.OnClickListener
{

    final g a;
    private final Handler b;

    k(g g1, Handler handler)
    {
        a = g1;
        b = handler;
        super();
    }

    static g a(k k1)
    {
        return k1.a;
    }

    public void onClick(View view)
    {
        b.postDelayed(new l(this), 1000L);
        a.b.openShare(g.e(a), false);
    }
}
