// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class ac
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final c a;
    private final Context b;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener c;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener d[];

    ac(c c1, Context context, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener aumauthlistener[])
    {
        a = c1;
        b = context;
        c = umauthlistener;
        d = aumauthlistener;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        int i;
        i = 0;
        a.getEntity().addOauthData(b, share_media, 0);
        OauthHelper.remove(b, share_media);
        if (c != null)
        {
            c.onCancel(share_media);
        }
        if (d == null) goto _L2; else goto _L1
_L1:
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener aumauthlistener[];
        int j;
        aumauthlistener = d;
        j = aumauthlistener.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        aumauthlistener[i].onCancel(share_media);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener aumauthlistener[];
        int i;
        i = 0;
        int j;
        if (bundle != null)
        {
            a.getEntity().addOauthData(b, share_media, 1);
            String s = bundle.getString("uid");
            String s1 = bundle.getString("access_key");
            String s2 = bundle.getString("access_secret");
            if (!TextUtils.isEmpty(s1) && !TextUtils.isEmpty(s2))
            {
                OauthHelper.saveAccessToken(b, share_media, s1, s2);
            }
            if (!TextUtils.isEmpty(s))
            {
                OauthHelper.setUsid(b, share_media, s);
            }
        } else
        {
            a.getEntity().addOauthData(b, share_media, 0);
        }
        if (c != null)
        {
            c.onComplete(bundle, share_media);
        }
        if (d == null) goto _L2; else goto _L1
_L1:
        aumauthlistener = d;
        j = aumauthlistener.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        aumauthlistener[i].onComplete(bundle, share_media);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        int i;
        i = 0;
        a.getEntity().addOauthData(b, share_media, 0);
        OauthHelper.remove(b, share_media);
        if (c != null)
        {
            c.onError(socializeexception, share_media);
        }
        if (d == null) goto _L2; else goto _L1
_L1:
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener aumauthlistener[];
        int j;
        aumauthlistener = d;
        j = aumauthlistener.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        aumauthlistener[i].onError(socializeexception, share_media);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        if (c != null)
        {
            c.onStart(share_media);
        }
        if (d == null) goto _L2; else goto _L1
_L1:
        com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener aumauthlistener[];
        int i;
        int j;
        aumauthlistener = d;
        j = aumauthlistener.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        aumauthlistener[i].onStart(share_media);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
