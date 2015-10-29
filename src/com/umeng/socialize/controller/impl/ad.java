// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class ad
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;
    private final Context c;

    ad(c c1, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener, Context context)
    {
        a = c1;
        b = umauthlistener;
        c = context;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onCancel(share_media);
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (TextUtils.isEmpty(bundle.getString("uid")))
        {
            Toast.makeText(c, "\u6388\u6743\u5931\u8D25,\u8BF7\u91CD\u8BD5\uFF01", 1).show();
        }
        if (b != null)
        {
            b.onComplete(bundle, share_media);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        Toast.makeText(c, "\u6388\u6743\u5931\u8D25,\u8BF7\u91CD\u8BD5\uFF01", 1).show();
        if (b != null)
        {
            b.onError(socializeexception, share_media);
        }
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onStart(share_media);
        }
    }
}
