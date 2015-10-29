// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class h
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final UserCenterController a;
    private final UserCenterController.ASYNCListener b;
    private final SnsPlatform c;

    h(UserCenterController usercentercontroller, UserCenterController.ASYNCListener asynclistener, SnsPlatform snsplatform)
    {
        a = usercentercontroller;
        b = asynclistener;
        c = snsplatform;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.a(com.umeng.socom.net.o.a.b);
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
label0:
        {
            if (b != null)
            {
                if (TextUtils.isEmpty(bundle.getString("uid")))
                {
                    break label0;
                }
                c.mOauth = true;
                b.a(com.umeng.socom.net.o.a.a);
            }
            return;
        }
        b.a(com.umeng.socom.net.o.a.b);
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.a(com.umeng.socom.net.o.a.b);
        }
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }
}
