// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocializeBaseView

class z
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final SocializeBaseView a;
    private final SocializeBaseView.SocializeInitListener b;

    z(SocializeBaseView socializebaseview, SocializeBaseView.SocializeInitListener socializeinitlistener)
    {
        a = socializebaseview;
        b = socializeinitlistener;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        if (socializeentity != null && a.b != null && socializeentity == a.b.getEntity())
        {
            if (i == 200)
            {
                b.a(a.getActivity(), a.b);
                return;
            } else
            {
                b.a(new SocializeException(i, ""));
                return;
            }
        } else
        {
            Log.c("com.umeng.view.SocialView", "actionbar descriptor has changed.no resp");
            return;
        }
    }

    public void onStart()
    {
    }
}
