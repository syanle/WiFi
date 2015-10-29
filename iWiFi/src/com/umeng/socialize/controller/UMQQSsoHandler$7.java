// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Bundle;
import android.util.Log;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.exception.SocializeException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class Listener
    implements IUiListener
{

    final UMQQSsoHandler this$0;
    private final com.umeng.socialize.controller.listener.s.UMAuthListener val$authListener;

    public void onCancel()
    {
        Log.d("UMQQSsoHandler", "cancel");
        UMQQSsoHandler.access$3();
        if (val$authListener != null)
        {
            val$authListener.onCancel(SHARE_MEDIA.QQ);
        }
        if (UMQQSsoHandler.access$20() && UMQQSsoHandler.access$7(UMQQSsoHandler.this) != null)
        {
            UMQQSsoHandler.access$7(UMQQSsoHandler.this).addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 0);
            UMQQSsoHandler.access$12(false);
        }
    }

    public void onComplete(JSONObject jsonobject)
    {
        Log.d("UMQQSsoHandler", "QQ SSO \u6388\u6743\u6210\u529F!");
        UMQQSsoHandler.access$22(UMQQSsoHandler.this, UMQQSsoHandler.mActivity, UMQQSsoHandler.access$21(UMQQSsoHandler.this, jsonobject));
        OauthHelper.saveQQAccessToken(UMQQSsoHandler.mActivity, jsonobject);
        SHARE_MEDIA share_media = SocializeConfig.getSelectedPlatfrom();
        if (share_media != null && share_media == SHARE_MEDIA.QQ)
        {
            OauthHelper.setUsid(UMQQSsoHandler.mActivity, share_media, jsonobject.optString("openid", ""));
        }
        if (UMQQSsoHandler.access$20() && UMQQSsoHandler.access$7(UMQQSsoHandler.this) != null && UMQQSsoHandler.access$20() && UMQQSsoHandler.access$7(UMQQSsoHandler.this) != null)
        {
            UMQQSsoHandler.access$7(UMQQSsoHandler.this).addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 1);
            UMQQSsoHandler.access$12(false);
        }
        if (val$authListener != null)
        {
            String s = jsonobject.optString("access_token", "");
            String s1 = jsonobject.optString("openid", "");
            jsonobject = jsonobject.optString("expires_in", "");
            Bundle bundle = new Bundle();
            bundle.putString("uid", s1);
            bundle.putString("access_token", s);
            bundle.putString("expires_in", jsonobject);
            UMQQSsoHandler.access$3();
            val$authListener.onComplete(bundle, SHARE_MEDIA.QQ);
        }
    }

    public void onError(UiError uierror)
    {
        Log.d("UMQQSsoHandler", (new StringBuilder("\u6388\u6743\u5931\u8D25! ==> errorCode = ")).append(uierror.errorCode).append(", errorMsg = ").append(uierror.errorMessage).append(", detail = ").append(uierror.errorDetail).toString());
        UMQQSsoHandler.access$3();
        if (val$authListener != null)
        {
            val$authListener.onError(new SocializeException(uierror.errorCode, uierror.errorDetail), SHARE_MEDIA.QQ);
        }
        if (UMQQSsoHandler.access$20() && UMQQSsoHandler.access$7(UMQQSsoHandler.this) != null)
        {
            UMQQSsoHandler.access$7(UMQQSsoHandler.this).addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 0);
            UMQQSsoHandler.access$12(false);
        }
    }

    Listener()
    {
        this$0 = final_umqqssohandler;
        val$authListener = com.umeng.socialize.controller.listener.s.UMAuthListener.this;
        super();
    }
}
