// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c, af

class ae
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;
    private final Activity c;

    ae(c c1, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener, Activity activity)
    {
        a = c1;
        b = umauthlistener;
        c = activity;
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
        if (b != null)
        {
            b.onComplete(bundle, share_media);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        Log.e("com.umeng.socialize", (new StringBuilder("do auth by sso failed.")).append(socializeexception.toString()).toString());
        Log.e(com.umeng.socialize.controller.impl.c.a(), "", socializeexception);
        socializeexception = new af(this, b);
        com.umeng.socialize.controller.impl.c.a(a, c, share_media, socializeexception);
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onStart(share_media);
        }
    }
}
