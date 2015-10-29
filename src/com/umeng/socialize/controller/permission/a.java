// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.permission;

import android.app.Activity;
import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;

public class a
    implements UMSocialService
{

    public a()
    {
    }

    public void deleteOauth(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void directShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
    }

    public void doOauthVerify(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
    }

    public transient void follow(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, String as[])
    {
    }

    public void getComments(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener fetchcommetslistener, long l)
    {
    }

    public SocializeConfig getConfig()
    {
        return null;
    }

    public SocializeEntity getEntity()
    {
        return null;
    }

    public void getFriends(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener fetchfriendslistener, SHARE_MEDIA share_media)
    {
    }

    public void getPlatformInfo(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener)
    {
    }

    public void getUserInfo(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener fetchuserlistener)
    {
    }

    public boolean hasShareContent()
    {
        return false;
    }

    public boolean hasShareImage()
    {
        return false;
    }

    public void initEntity(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void likeChange(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void login(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void login(Context context, SnsAccount snsaccount, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void loginout(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void openComment(Context context, boolean flag)
    {
    }

    public void openShare(Activity activity, boolean flag)
    {
    }

    public transient void openUserCenter(Context context, int ai[])
    {
    }

    public transient void postComment(Context context, UMComment umcomment, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[])
    {
    }

    public void postLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public void postShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
    }

    public void postShare(Context context, String s, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
    }

    public void postShareByCustomPlatform(Context context, String s, String s1, UMShareMsg umsharemsg, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
    }

    public void postShareByID(Context context, String s, String s1, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
    }

    public transient void postShareMulti(Context context, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[])
    {
    }

    public void postUnLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }

    public boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener)
        throws SocializeException
    {
        return false;
    }

    public boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener, int i)
        throws SocializeException
    {
        return false;
    }

    public void setAppWebSite(SHARE_MEDIA share_media, String s)
    {
    }

    public void setAppWebSite(String s)
    {
    }

    public void setConfig(SocializeConfig socializeconfig)
    {
    }

    public void setCustomId(String s)
    {
    }

    public void setEntityName(String s)
    {
    }

    public void setGlobalConfig(SocializeConfig socializeconfig)
    {
    }

    public void setShareContent(String s)
    {
    }

    public void setShareImage(UMImage umimage)
    {
    }

    public boolean setShareMedia(UMediaObject umediaobject)
    {
        return false;
    }

    public void setShareType(ShareType sharetype)
    {
    }

    public void shareEmail(Context context)
    {
    }

    public void shareSms(Context context)
    {
    }

    public void shareTo(Activity activity, SHARE_MEDIA share_media, String s, byte abyte0[])
    {
    }

    public void shareTo(Activity activity, String s, byte abyte0[])
    {
    }

    public void showLoginDialog(Context context, com.umeng.socialize.controller.listener.SocializeListeners.LoginListener loginlistener)
    {
    }

    public void showPostComment(Context context)
    {
    }

    public boolean unregisterListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener)
    {
        return false;
    }

    public void uploadToken(Context context, UMToken umtoken, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
    }
}
