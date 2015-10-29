// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.view.controller.UMBroadcastManager;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bv
    implements com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener
{

    final ShareActivity a;

    bv(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        SocializeUtils.safeDismissDialog(ShareActivity.o(a));
        if (i == 200)
        {
            ShareActivity.p(a);
            socializeentity.incrementSc();
            UMBroadcastManager.sendEntityChange(ShareActivity.q(a), socializeentity.mDescriptor);
            if (ShareActivity.i(a).getConfig().isSendBlock())
            {
                a.b();
            }
        }
    }

    public void onStart()
    {
        if (ShareActivity.i(a).getConfig().isSendBlock())
        {
            SocializeUtils.safeShowDialog(ShareActivity.o(a), false);
            return;
        } else
        {
            a.b();
            return;
        }
    }
}
