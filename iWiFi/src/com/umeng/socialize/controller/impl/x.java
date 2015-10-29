// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.Activity;
import android.content.res.Resources;
import android.view.Window;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.view.ce;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class x extends com.umeng.socialize.controller.listener.SocializeListeners.LoginListener
{

    final c a;
    private final Activity b;

    x(c c1, Activity activity)
    {
        a = c1;
        b = activity;
        super();
    }

    public void loginFailed(int i)
    {
        String s = b.getResources().getString(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_tip_loginfailed"));
        Toast.makeText(b, s, 0).show();
    }

    public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
    {
        if (flag)
        {
            c.d(a).showAtLocation(b.getWindow().getDecorView(), 80, 0, 0);
            return;
        }
        if (share_media != null)
        {
            a.postShare(b, share_media, null);
            return;
        } else
        {
            c.d(a).showAtLocation(b.getWindow().getDecorView(), 80, 0, 0);
            return;
        }
    }
}
