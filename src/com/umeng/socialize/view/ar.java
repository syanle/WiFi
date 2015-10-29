// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.view.abs.SocialPopupDialog;

// Referenced classes of package com.umeng.socialize.view:
//            aq, ak

class ar
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final aq a;
    private final SHARE_MEDIA b;

    ar(aq aq1, SHARE_MEDIA share_media)
    {
        a = aq1;
        b = share_media;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        ak.a(aq.a(a)).c();
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (!TextUtils.isEmpty(bundle.getString("uid")))
        {
            ak.a(aq.a(a), b);
            return;
        } else
        {
            ak.a(aq.a(a)).c();
            return;
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        ak.a(aq.a(a)).c();
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        ak.a(aq.a(a)).b();
    }
}
