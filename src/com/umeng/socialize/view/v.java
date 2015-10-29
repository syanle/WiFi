// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.StatusCode;
import com.umeng.socialize.db.OauthHelper;

// Referenced classes of package com.umeng.socialize.view:
//            u, q

class v extends com.umeng.socialize.controller.listener.SocializeListeners.LoginListener
{

    final u a;

    v(u u1)
    {
        a = u1;
        super();
    }

    public void loginFailed(int i)
    {
        super.loginFailed(i);
        StatusCode.showErrMsg(q.g(u.a(a)), i, "\u7ED1\u5B9A\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u3002");
    }

    public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
    {
        super.loginSuccessed(share_media, flag);
        if (share_media != null && !flag)
        {
            q.a(u.a(a), OauthHelper.getUsid(q.g(u.a(a)), share_media), share_media);
            q.a(u.a(a), share_media);
        }
        u.a(a).dismiss();
        q.j(u.a(a));
    }
}
