// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import com.umeng.socialize.view.controller.UserCenterController;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa

class ah
    implements android.view.View.OnClickListener
{

    final aa a;
    private final com.umeng.socialize.view.controller.UserCenterController.ASYNCListener b;

    ah(aa aa1, com.umeng.socialize.view.controller.UserCenterController.ASYNCListener asynclistener)
    {
        a = aa1;
        b = asynclistener;
        super();
    }

    public void onClick(View view)
    {
        aa.a(a).b(b);
    }
}
