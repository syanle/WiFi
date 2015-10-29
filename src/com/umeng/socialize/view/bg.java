// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.media.UMRichMedia;

// Referenced classes of package com.umeng.socialize.view:
//            bf, ShareActivity

class bg
    implements com.umeng.socialize.media.UMRichMedia.OnRichMediaDataListener
{

    final bf a;
    private final UMShareMsg b;

    bg(bf bf1, UMShareMsg umsharemsg)
    {
        a = bf1;
        b = umsharemsg;
        super();
    }

    public void onComplete(UMRichMedia umrichmedia)
    {
        if (umrichmedia != null)
        {
            b.setMediaData(umrichmedia);
        }
        b.mLocation = UMLocation.build(ShareActivity.t(bf.a(a)));
        ShareActivity.i(bf.a(a)).getEntity().setShareMsg(b);
        ShareActivity.i(bf.a(a)).directShare(ShareActivity.q(bf.a(a)), ShareActivity.d(bf.a(a)), ShareActivity.u(bf.a(a)));
    }
}
