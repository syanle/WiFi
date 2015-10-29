// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.db.c;
import com.umeng.socialize.view.abs.SocialPopupDialog;

// Referenced classes of package com.umeng.socialize.view:
//            ak

class at
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final ak a;

    at(ak ak1)
    {
        a = ak1;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        ak.a(a).c();
        if (i == 200)
        {
            c.a(com.umeng.socialize.view.ak.c(a), true);
            a.b();
            if (ak.b(a) != null)
            {
                ak.b(a).loginSuccessed(null, false);
            }
        } else
        if (ak.b(a) != null)
        {
            ak.b(a).loginFailed(i);
            return;
        }
    }

    public void onStart()
    {
        ak.a(a).b();
    }
}
