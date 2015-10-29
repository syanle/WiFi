// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.db.OauthHelper;

// Referenced classes of package com.umeng.socialize.view.controller:
//            c

class d
    implements com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener b;

    d(c c1, com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener directsharelistener)
    {
        a = c1;
        b = directsharelistener;
        super();
    }

    public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        if (share_media != null)
        {
            b.onAuthenticated(share_media);
            socializeentity = "";
            if (c.a(a) != null)
            {
                socializeentity = OauthHelper.getUsid(c.a(a), share_media);
            }
            b.onOauthComplete(socializeentity, share_media);
        }
    }

    public void onStart()
    {
    }
}
