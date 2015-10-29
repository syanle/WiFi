// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.db.OauthHelper;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.sso:
//            QZoneSsoHandler

private static class entity
    implements IUiListener
{

    Activity activity;
    SocializeEntity entity;
    com.umeng.socialize.controller.listener.er listener;
    UMShareMsg shareMsg;

    public void onCancel()
    {
        if (listener != null)
        {
            listener.onComplete(SHARE_MEDIA.QZONE, 40000, entity);
        }
    }

    public void onComplete(JSONObject jsonobject)
    {
        if (listener != null)
        {
            listener.onStart();
        }
        QZoneSsoHandler.access$1().fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        String s = jsonobject.optString("openid", "");
        OauthHelper.setUsid(activity, SHARE_MEDIA.QQ, s);
        OauthHelper.saveQQAccessToken(activity, jsonobject);
        QZoneSsoHandler.access$2().shareToQQ(activity, QZoneSsoHandler.access$3(shareMsg, true), QZoneSsoHandler.access$4(activity, entity, listener));
    }

    public void onError(UiError uierror)
    {
        if (listener != null)
        {
            listener.onComplete(SHARE_MEDIA.QZONE, 40002, entity);
        }
    }

    public rs.SnsPostListener(Activity activity1, SocializeEntity socializeentity, UMShareMsg umsharemsg, com.umeng.socialize.controller.listener.er er)
    {
        activity = activity1;
        shareMsg = umsharemsg;
        listener = er;
        entity = socializeentity;
    }
}
