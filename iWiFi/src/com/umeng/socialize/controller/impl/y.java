// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class y extends com.umeng.socialize.controller.listener.SocializeListeners.LoginListener
{

    final c a;
    private final Context b;
    private final Intent c;

    y(c c1, Context context, Intent intent)
    {
        a = c1;
        b = context;
        c = intent;
        super();
    }

    public void loginFailed(int i)
    {
        String s = b.getResources().getString(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_tip_loginfailed"));
        Toast.makeText(b, s, 0).show();
    }

    public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
    {
        b.startActivity(c);
    }
}
