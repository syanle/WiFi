// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.db.OauthHelper;

// Referenced classes of package com.umeng.socialize.view:
//            ak, ar

class aq
    implements android.view.View.OnClickListener
{

    final ak a;
    private final SnsPlatform b;

    aq(ak ak1, SnsPlatform snsplatform)
    {
        a = ak1;
        b = snsplatform;
        super();
    }

    static ak a(aq aq1)
    {
        return aq1.a;
    }

    public void onClick(View view)
    {
        view = SHARE_MEDIA.convertToEmun(b.mKeyword);
        if (OauthHelper.isAuthenticated(ak.c(a), view))
        {
            ak.a(a, view);
            return;
        } else
        {
            ak.d(a).doOauthVerify(ak.c(a), view, new ar(this, view));
            return;
        }
    }
}
