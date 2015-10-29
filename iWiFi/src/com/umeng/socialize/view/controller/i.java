// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.SnsPlatform;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class i
    implements UserCenterController.ASYNCListener
{

    final UserCenterController a;
    private final UserCenterController.ASYNCListener b;
    private final SnsPlatform c;

    i(UserCenterController usercentercontroller, UserCenterController.ASYNCListener asynclistener, SnsPlatform snsplatform)
    {
        a = usercentercontroller;
        b = asynclistener;
        c = snsplatform;
        super();
    }

    public void a()
    {
        if (b != null)
        {
            b.a();
        }
    }

    public void a(com.umeng.socom.net.o.a a1)
    {
        if (a1 == com.umeng.socom.net.o.a.a)
        {
            c.mOauth = false;
        }
        if (b != null)
        {
            b.a(a1);
        }
    }
}
