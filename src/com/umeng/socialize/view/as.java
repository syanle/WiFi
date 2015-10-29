// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.view.abs.SocialPopupDialog;

// Referenced classes of package com.umeng.socialize.view:
//            ak

class as
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final ak a;
    private final SHARE_MEDIA b;

    as(ak ak1, SHARE_MEDIA share_media)
    {
        a = ak1;
        b = share_media;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        ak.a(a).c();
        if (i == 200)
        {
            a.b();
            if (ak.b(a) != null)
            {
                ak.b(a).loginSuccessed(b, false);
            }
        } else
        if (ak.b(a) != null)
        {
            ak.b(a).loginFailed(i);
            return;
        }
    }

    public void onStart()
    {
        if (ak.a(a) != null && !ak.a(a).isShowing())
        {
            ak.a(a).b();
        }
    }
}
