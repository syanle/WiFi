// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.widget.Button;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.controller.impl.c;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class br
    implements android.view.View.OnClickListener
{

    final ShareActivity a;

    br(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void onClick(View view)
    {
        int i;
        i = 0;
        ShareActivity.h(a).setClickable(false);
        if (ShareActivity.i(a) == null) goto _L2; else goto _L1
_L1:
        int j;
        view = (com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener[])ShareActivity.i(a).getConfig().getListener(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        j = view.length;
_L6:
        if (i < j) goto _L4; else goto _L3
_L3:
        ShareActivity.i(a).getConfig().cleanListeners();
        a.b();
_L2:
        return;
_L4:
        com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener = view[i];
        if (snspostlistener != null && !snspostlistener.equals(c.b))
        {
            snspostlistener.onComplete(ShareActivity.d(a), 40000, ShareActivity.j(a));
        }
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
