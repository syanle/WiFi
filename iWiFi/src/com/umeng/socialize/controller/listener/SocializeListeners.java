// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import android.os.Bundle;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.SocializeUser;
import com.umeng.socialize.exception.SocializeException;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public abstract class SocializeListeners
{
    public static interface DirectShareListener
    {

        public abstract void onAuthenticated(SHARE_MEDIA share_media);

        public abstract void onOauthComplete(String s, SHARE_MEDIA share_media);
    }

    public static interface FetchCommetsListener
    {

        public abstract void onComplete(int i, List list, SocializeEntity socializeentity);

        public abstract void onStart();
    }

    public static interface FetchFriendsListener
    {

        public abstract void onComplete(int i, List list);

        public abstract void onStart();
    }

    public static interface FetchUserListener
    {

        public abstract void onComplete(int i, SocializeUser socializeuser);

        public abstract void onStart();
    }

    public static abstract class LoginListener
    {

        public void dissmiss()
        {
        }

        public void loginFailed(int i)
        {
        }

        public void loginSuccessed(SHARE_MEDIA share_media, boolean flag)
        {
        }

        public LoginListener()
        {
        }
    }

    public static interface MulStatusListener
        extends com.umeng.socialize.bean.CallbackConfig.ICallbackListener
    {

        public abstract void onComplete(MultiStatus multistatus, int i, SocializeEntity socializeentity);

        public abstract void onStart();
    }

    public static interface OnCustomPlatformClickListener
    {

        public abstract void onClick(CustomPlatform customplatform, SocializeEntity socializeentity, SnsPostListener snspostlistener);
    }

    public static interface SnsPostListener
        extends com.umeng.socialize.bean.CallbackConfig.ICallbackListener
    {

        public abstract void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity);

        public abstract void onStart();
    }

    public static interface SocializeClientListener
        extends com.umeng.socialize.bean.CallbackConfig.ICallbackListener
    {

        public abstract void onComplete(int i, SocializeEntity socializeentity);

        public abstract void onStart();
    }

    public static interface UMAuthListener
        extends com.umeng.socialize.bean.CallbackConfig.ICallbackListener
    {

        public abstract void onCancel(SHARE_MEDIA share_media);

        public abstract void onComplete(Bundle bundle, SHARE_MEDIA share_media);

        public abstract void onError(SocializeException socializeexception, SHARE_MEDIA share_media);

        public abstract void onStart(SHARE_MEDIA share_media);
    }

    public static interface UMDataListener
    {

        public abstract void onComplete(int i, Map map);

        public abstract void onStart();
    }

    public static interface UMSsoListener
    {

        public abstract void onCancel();

        public abstract void onComplete(JSONObject jsonobject);

        public abstract void onError(UiError uierror);
    }


    private SocializeListeners()
    {
    }
}
