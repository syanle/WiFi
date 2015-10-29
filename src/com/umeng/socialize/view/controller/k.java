// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class k extends com.umeng.socialize.controller.listener.SocializeListeners.LoginListener
{

    final UserCenterController a;
    private final UserCenterController.ASYNCListener b;

    k(UserCenterController usercentercontroller, UserCenterController.ASYNCListener asynclistener)
    {
        a = usercentercontroller;
        b = asynclistener;
        super();
    }

    public void loginFailed(int i)
    {
        super.loginFailed(i);
        if (b != null)
        {
            b.a(com.umeng.socom.net.o.a.b);
        }
    }

    public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
    {
        super.loginSuccessed(share_media, flag);
        if (b != null)
        {
            b.a(com.umeng.socom.net.o.a.a);
        }
    }
}
