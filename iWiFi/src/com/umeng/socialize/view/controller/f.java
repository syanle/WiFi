// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeUser;
import com.umeng.socialize.bean.StatusCode;
import com.umeng.socialize.db.OauthHelper;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view.controller:
//            UserCenterController

class f
    implements com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener
{

    final UserCenterController a;
    private final UserCenterController.ASYNCListener b;

    f(UserCenterController usercentercontroller, UserCenterController.ASYNCListener asynclistener)
    {
        a = usercentercontroller;
        b = asynclistener;
        super();
    }

    public void onComplete(int i, SocializeUser socializeuser)
    {
        Object obj = OauthHelper.getAuthenticatedPlatform(UserCenterController.b(a));
        if (obj == null || ((Map) (obj)).size() <= 0) goto _L2; else goto _L1
_L1:
        Set set;
        Iterator iterator;
        set = ((Map) (obj)).keySet();
        iterator = UserCenterController.c(a).iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        if (i == 200 && socializeuser != null && socializeuser.mAccounts != null)
        {
            if (socializeuser.mLoginAccount != null)
            {
                UserCenterController.a(a, socializeuser.mLoginAccount);
            }
            UserCenterController.a(a, socializeuser);
        } else
        {
            StatusCode.showErrMsg(UserCenterController.b(a), i, null);
        }
        if (b != null)
        {
            obj = b;
            SnsPlatform snsplatform;
            SHARE_MEDIA share_media;
            if (i == 200)
            {
                socializeuser = com.umeng.socom.net.o.a.a;
            } else
            {
                socializeuser = com.umeng.socom.net.o.a.b;
            }
            ((UserCenterController.ASYNCListener) (obj)).a(socializeuser);
        }
        a.a(UserCenterController.a.b);
        return;
_L3:
        snsplatform = (SnsPlatform)iterator.next();
        share_media = SHARE_MEDIA.convertToEmun(snsplatform.mKeyword);
        if (set.contains(share_media))
        {
            snsplatform.mOauth = true;
            snsplatform.mUsid = (String)((Map) (obj)).get(share_media);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onStart()
    {
        a.a(UserCenterController.a.a);
        if (b != null)
        {
            b.a();
        }
    }
}
