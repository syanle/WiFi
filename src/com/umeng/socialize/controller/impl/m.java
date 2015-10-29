// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.ProgressDialog;
import android.content.Context;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class m
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener
{

    final c a;
    private final Context b;
    private final SHARE_MEDIA c;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener d;

    m(c c1, Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        a = c1;
        b = context;
        c = share_media;
        d = snspostlistener;
        super();
    }

    public void onComplete(int i, Map map)
    {
        if (c.c != null && c.c.isShowing())
        {
            c.c.dismiss();
        }
        if (i == 200)
        {
            com.umeng.socialize.controller.impl.c.a(a, b, c, d);
            return;
        } else
        {
            Log.i(com.umeng.socialize.controller.impl.c.a(), "\u65E0\u6CD5\u83B7\u53D6AppId");
            return;
        }
    }

    public void onStart()
    {
        c.c = com.umeng.socialize.controller.impl.c.a(a, b, c, "", false);
        c.c.show();
    }
}
