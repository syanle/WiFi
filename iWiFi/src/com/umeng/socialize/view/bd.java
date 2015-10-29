// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.webkit.WebView;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.view:
//            av

class bd
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final av a;

    bd(av av1)
    {
        a = av1;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        if (i == 200)
        {
            socializeentity = av.a(a, socializeentity, av.h(a));
            av.i(a).loadUrl(socializeentity);
            return;
        }
        if (av.j(a) != null)
        {
            av.j(a).onError(new SocializeException("can`t initlized entity.."), av.h(a));
        }
        av.i(a).loadData("Error:502  Please make sure your network is available.", "text/html", "UTF-8");
    }

    public void onStart()
    {
    }
}
