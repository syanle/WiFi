// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.os.Bundle;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.exception.SocializeException;
import java.io.PrintStream;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class ap
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c.a a;

    ap(c.a a1)
    {
        a = a1;
        super();
    }

    private UMToken a(Bundle bundle)
    {
        String s = bundle.getString("access_token");
        String s1 = bundle.getString("uid");
        bundle = bundle.getString("openid");
        Log.i(c.a(), (new StringBuilder("has get ")).append(a.a).append(",local token: ").append(s).append(",usid :  ").append(s1).toString());
        return UMToken.buildToken(new SNSPair(a.a.toString(), s1), s, bundle);
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (a.b != null)
        {
            a.b.onCancel(share_media);
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (bundle != null && bundle.containsKey("access_token") && bundle.containsKey("uid"))
        {
            a.e = bundle;
            bundle = a(bundle);
            c.a.a(a).uploadToken(a.d, bundle, a.a());
        } else
        {
            System.out.println((new StringBuilder("### authorize data is invalid.")).append(share_media.toString()).toString());
            if (a.b != null)
            {
                a.b.onError(new SocializeException("no found access_token"), share_media);
                return;
            }
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        if (a.b != null)
        {
            a.b.onError(socializeexception, share_media);
        }
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }
}
