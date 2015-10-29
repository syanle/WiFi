// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.widget.Toast;
import com.umeng.socialize.bean.APP_PLATFORM;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.impl.c;

// Referenced classes of package com.umeng.socialize.controller:
//            a

class d
    implements com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener
{

    private final Context a;
    private final String b;

    d(Context context, String s)
    {
        a = context;
        b = s;
        super();
    }

    public void onClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        customplatform = null;
        if (socializeentity != null)
        {
            customplatform = socializeentity.getShareContent();
            snspostlistener = socializeentity.getMedia();
            socializeentity = customplatform;
            customplatform = snspostlistener;
        } else
        {
            socializeentity = null;
        }
        c.g.sendEmptyMessage(0);
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.FACEBOOK);
        snspostlistener = com.umeng.socialize.controller.a.a(a, socializeentity, customplatform);
        snspostlistener.setType("text/plain");
        snspostlistener = com.umeng.socialize.controller.a.a(a, APP_PLATFORM.FACEBOOK, snspostlistener);
        if (snspostlistener != null)
        {
            a.startActivity(snspostlistener);
            SocializeUtils.sendAnalytic(a, b, socializeentity, customplatform, "facebook");
            return;
        } else
        {
            Toast.makeText(a, "sorry, you haven't installed facebook yet.", 0).show();
            return;
        }
    }
}
