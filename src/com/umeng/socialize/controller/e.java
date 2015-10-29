// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.widget.Toast;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.controller:
//            CustomHandler

class e
    implements com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener
{

    final CustomHandler a;

    e(CustomHandler customhandler)
    {
        a = customhandler;
        super();
    }

    public void onClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        if (a.isClientInstalled())
        {
            a.handleOnClick(customplatform, socializeentity, snspostlistener);
            return;
        } else
        {
            Toast.makeText(a.mContext, (new StringBuilder("\u8BF7\u5B89\u88C5")).append(a.mPlatform.mShowWord).append("\u5BA2\u6237\u7AEF").toString(), 0).show();
            return;
        }
    }
}
