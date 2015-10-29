// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.StatusCode;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.sso.QZoneSsoHandler;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class ai
    implements com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener
{

    final c a;
    private final Context b;

    ai(c c1, Context context)
    {
        a = c1;
        b = context;
        super();
    }

    public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        if (i != 200 || !a.getConfig().isShowToast() || !QZoneSsoHandler.isShowToast) goto _L2; else goto _L1
_L1:
        Toast.makeText(b, "\u53D1\u9001\u6210\u529F", 0).show();
_L4:
        QZoneSsoHandler.isShowToast = true;
        return;
_L2:
        if (i == 5027 || i == 5028)
        {
            if (a.getConfig().isShowToast())
            {
                StatusCode.showErrMsg(b, i, "\u6388\u6743\u5DF2\u8FC7\u671F\uFF0C\u8BF7\u91CD\u65B0\u6388\u6743...");
            }
        } else
        if (a.getConfig().isShowToast())
        {
            StatusCode.showErrMsg(b, i, "\u53D1\u9001\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5...");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onStart()
    {
        if (a.getConfig().isShowToast() && QZoneSsoHandler.isShowToast)
        {
            Toast.makeText(b, b.getResources().getString(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_share")), 0).show();
        }
    }
}
