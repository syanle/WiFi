// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

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
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;

public interface UMSocialService
{

    public abstract void deleteOauth(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void directShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener);

    public abstract void doOauthVerify(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener);

    public transient abstract void follow(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, String as[]);

    public abstract void getComments(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener fetchcommetslistener, long l);

    public abstract SocializeConfig getConfig();

    public abstract SocializeEntity getEntity();

    public abstract void getFriends(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener fetchfriendslistener, SHARE_MEDIA share_media);

    public abstract void getPlatformInfo(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener);

    public abstract void getUserInfo(Context context, com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener fetchuserlistener);

    public abstract boolean hasShareContent();

    public abstract boolean hasShareImage();

    public abstract void initEntity(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void likeChange(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void login(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void login(Context context, SnsAccount snsaccount, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void loginout(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void openComment(Context context, boolean flag);

    public abstract void openShare(Activity activity, boolean flag);

    public transient abstract void openUserCenter(Context context, int ai[]);

    public transient abstract void postComment(Context context, UMComment umcomment, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[]);

    public abstract void postLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract void postShare(Context context, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener);

    public abstract void postShare(Context context, String s, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener);

    public abstract void postShareByCustomPlatform(Context context, String s, String s1, UMShareMsg umsharemsg, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener);

    public abstract void postShareByID(Context context, String s, String s1, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener);

    public transient abstract void postShareMulti(Context context, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, SHARE_MEDIA ashare_media[]);

    public abstract void postUnLike(Context context, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);

    public abstract boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener)
        throws SocializeException;

    public abstract boolean registerListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener, int i)
        throws SocializeException;

    public abstract void setAppWebSite(SHARE_MEDIA share_media, String s);

    public abstract void setAppWebSite(String s);

    public abstract void setConfig(SocializeConfig socializeconfig);

    public abstract void setCustomId(String s);

    public abstract void setEntityName(String s);

    public abstract void setGlobalConfig(SocializeConfig socializeconfig);

    public abstract void setShareContent(String s);

    public abstract void setShareImage(UMImage umimage);

    public abstract boolean setShareMedia(UMediaObject umediaobject);

    public abstract void setShareType(ShareType sharetype);

    public abstract void shareEmail(Context context);

    public abstract void shareSms(Context context);

    public abstract void shareTo(Activity activity, SHARE_MEDIA share_media, String s, byte abyte0[]);

    public abstract void shareTo(Activity activity, String s, byte abyte0[]);

    public abstract void showLoginDialog(Context context, com.umeng.socialize.controller.listener.SocializeListeners.LoginListener loginlistener);

    public abstract void showPostComment(Context context);

    public abstract boolean unregisterListener(com.umeng.socialize.bean.CallbackConfig.ICallbackListener icallbacklistener);

    public abstract void uploadToken(Context context, UMToken umtoken, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener);
}
