// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class e
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c a;
    private final Context b;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener c;

    e(c c1, Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        a = c1;
        b = context;
        c = socializeclientlistener;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (!TextUtils.isEmpty(bundle.getString("uid")))
        {
            com.umeng.socialize.controller.impl.c.a(a, b, share_media, c);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }
}
