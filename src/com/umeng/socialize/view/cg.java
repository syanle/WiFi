// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.view:
//            cf, ce, aj

class cg
    implements com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener
{

    final cf a;

    cg(cf cf1)
    {
        a = cf1;
        super();
    }

    public void onAuthenticated(SHARE_MEDIA share_media)
    {
        cf.a(a).dismiss();
        if (ce.a() == null || !ce.a().isShowing())
        {
            break MISSING_BLOCK_LABEL_31;
        }
        ce.a().dismiss();
        return;
        share_media;
        share_media.printStackTrace();
        return;
    }

    public void onOauthComplete(String s, SHARE_MEDIA share_media)
    {
        cf.a(a).dismiss();
        if (ce.a() == null || !ce.a().isShowing())
        {
            break MISSING_BLOCK_LABEL_31;
        }
        ce.a().dismiss();
        return;
        s;
        s.printStackTrace();
        return;
    }
}
