// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import com.umeng.socialize.controller.UMSocialService;

// Referenced classes of package com.umeng.socialize.view.abs:
//            i, g

class j
    implements Runnable
{

    final i a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;

    j(i k, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        a = k;
        b = socializeclientlistener;
        super();
    }

    public void run()
    {
        i.a(a).b.likeChange(i.a(a).getContext(), b);
    }
}
