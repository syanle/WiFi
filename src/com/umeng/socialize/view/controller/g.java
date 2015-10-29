// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class g
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final UserCenterController a;
    private final UserCenterController.ASYNCListener b;
    private final SnsPlatform c;

    g(UserCenterController usercentercontroller, UserCenterController.ASYNCListener asynclistener, SnsPlatform snsplatform)
    {
        a = usercentercontroller;
        b = asynclistener;
        c = snsplatform;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        if (b != null)
        {
            if (i == 200)
            {
                c.mOauth = false;
                b.a(com.umeng.socom.net.o.a.a);
            } else
            {
                b.a(com.umeng.socom.net.o.a.b);
            }
        }
        a.a(UserCenterController.a.b);
    }

    public void onStart()
    {
        a.a(UserCenterController.a.a);
        if (b != null)
        {
            b.a();
        }
    }
}
