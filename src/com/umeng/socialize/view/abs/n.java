// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import com.umeng.socialize.controller.UMSocialService;

// Referenced classes of package com.umeng.socialize.view.abs:
//            g

class n
    implements android.view.View.OnClickListener
{

    final g a;

    n(g g1)
    {
        a = g1;
        super();
    }

    public void onClick(View view)
    {
        a.b.openComment(a.getContext(), false);
    }
}
