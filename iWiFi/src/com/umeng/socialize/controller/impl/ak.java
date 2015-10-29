// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.db.OauthHelper;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class ak
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;
    private final UMToken c;
    private final Context d;

    ak(c c1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener, UMToken umtoken, Context context)
    {
        a = c1;
        b = socializeclientlistener;
        c = umtoken;
        d = context;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        if (i == 200 && c != null)
        {
            String s = c.getToken();
            SHARE_MEDIA share_media = SHARE_MEDIA.convertToEmun(c.mPaltform);
            socializeentity.addStatisticsData(d, share_media, 13);
            if (share_media != null && !TextUtils.isEmpty(s))
            {
                OauthHelper.saveAccessToken(d, share_media, s, "null");
                OauthHelper.setUsid(d, share_media, c.mUsid);
            }
        }
        if (b != null)
        {
            b.onComplete(i, socializeentity);
        }
    }

    public void onStart()
    {
        if (b != null)
        {
            b.onStart();
        }
    }
}
