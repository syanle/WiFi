// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import com.umeng.socialize.db.c;
import com.umeng.socialize.view.controller.UserCenterController;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa

class ac
    implements com.umeng.socialize.view.controller.UserCenterController.ASYNCListener
{

    final aa a;

    ac(aa aa1)
    {
        a = aa1;
        super();
    }

    public void a()
    {
    }

    public void a(com.umeng.socom.net.o.a a1)
    {
        if (a1 == com.umeng.socom.net.o.a.b)
        {
            aa.f(a).setVisibility(8);
            aa.g(a).setVisibility(0);
        } else
        if (aa.a(a).b() == null)
        {
            c.a(a.getContext());
            aa.f(a).setVisibility(aa.h(a));
            return;
        }
    }
}
