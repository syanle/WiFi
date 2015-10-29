// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.view.ck;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class aa extends com.umeng.socialize.controller.listener.SocializeListeners.LoginListener
{

    final c a;
    private final ck b;
    private final Context c;

    aa(c c1, ck ck1, Context context)
    {
        a = c1;
        b = ck1;
        c = context;
        super();
    }

    public void loginFailed(int i)
    {
        String s = c.getResources().getString(ResContainer.getResourceId(c, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_tip_loginfailed"));
        Toast.makeText(c, s, 0).show();
    }

    public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
    {
        b.show();
    }
}
