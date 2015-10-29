// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import android.util.Log;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.sso:
//            QZoneSsoHandler

class val.activity
    implements IUiListener
{

    private final Activity val$activity;
    private final SocializeEntity val$entity;
    private final com.umeng.socialize.controller.listener..SnsPostListener val$listener;

    public void onCancel()
    {
        if (val$listener != null)
        {
            val$listener.onComplete(SHARE_MEDIA.QZONE, 200, val$entity);
        }
        QZoneSsoHandler.access$1().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, val$entity);
        QZoneSsoHandler.isShowToast = false;
        QZoneSsoHandler.access$5(val$activity, val$entity);
    }

    public void onComplete(JSONObject jsonobject)
    {
        if (val$listener != null)
        {
            val$listener.onComplete(SHARE_MEDIA.QZONE, 200, val$entity);
        }
        QZoneSsoHandler.access$1().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, val$entity);
        QZoneSsoHandler.isShowToast = false;
        QZoneSsoHandler.access$5(val$activity, val$entity);
    }

    public void onError(UiError uierror)
    {
        Log.e("IUiListener", (new StringBuilder("error code : ")).append(uierror.errorCode).append("       error message:").append(uierror.errorMessage).toString());
        if (val$listener != null)
        {
            val$listener.onComplete(SHARE_MEDIA.QZONE, 40002, val$entity);
        }
        QZoneSsoHandler.access$1().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 40002, val$entity);
    }

    nsPostListener()
    {
        val$listener = snspostlistener;
        val$entity = socializeentity;
        val$activity = activity1;
        super();
    }
}
