// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class p
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c a;
    private final Context b;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener c;
    private final Intent d;

    p(c c1, Context context, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener, Intent intent)
    {
        a = c1;
        b = context;
        c = snspostlistener;
        d = intent;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (c.c != null && c.c.isShowing())
        {
            c.c.dismiss();
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
label0:
        {
            if (c.c != null && c.c.isShowing())
            {
                c.c.dismiss();
            }
            bundle = bundle.getString("uid");
            if (!TextUtils.isEmpty(bundle))
            {
                OauthHelper.setUsid(b, share_media, bundle);
                Log.d(com.umeng.socialize.controller.impl.c.a(), (new StringBuilder("do oauth successed ")).append(share_media).toString());
                if (!com.umeng.socialize.controller.impl.c.b(a))
                {
                    break label0;
                }
                com.umeng.socialize.controller.impl.c.a(a, false);
                a.postShare(b, bundle, share_media, c);
            }
            return;
        }
        if (c != null)
        {
            a.getConfig().registerListener(c);
        }
        b.startActivity(d);
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        if (c.c != null && c.c.isShowing())
        {
            c.c.dismiss();
        }
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        if (c.c != null)
        {
            c.c.show();
        }
    }
}
