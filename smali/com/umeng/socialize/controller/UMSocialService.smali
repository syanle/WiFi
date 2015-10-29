.class public interface abstract Lcom/umeng/socialize/controller/UMSocialService;
.super Ljava/lang/Object;
.source "UMSocialService.java"


# virtual methods
.method public abstract deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end method

.method public abstract doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
.end method

.method public varargs abstract follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V
.end method

.method public abstract getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
.end method

.method public abstract getConfig()Lcom/umeng/socialize/bean/SocializeConfig;
.end method

.method public abstract getEntity()Lcom/umeng/socialize/bean/SocializeEntity;
.end method

.method public abstract getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end method

.method public abstract getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end method

.method public abstract getUserInfo(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;)V
.end method

.method public abstract hasShareContent()Z
.end method

.method public abstract hasShareImage()Z
.end method

.method public abstract initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract likeChange(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract login(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract openComment(Landroid/content/Context;Z)V
.end method

.method public abstract openShare(Landroid/app/Activity;Z)V
.end method

.method public varargs abstract openUserCenter(Landroid/content/Context;[I)V
.end method

.method public varargs abstract postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end method

.method public abstract postLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end method

.method public abstract postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end method

.method public abstract postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end method

.method public abstract postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end method

.method public varargs abstract postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end method

.method public abstract postUnLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method

.method public abstract registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation
.end method

.method public abstract setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
.end method

.method public abstract setAppWebSite(Ljava/lang/String;)V
.end method

.method public abstract setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
.end method

.method public abstract setCustomId(Ljava/lang/String;)V
.end method

.method public abstract setEntityName(Ljava/lang/String;)V
.end method

.method public abstract setGlobalConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
.end method

.method public abstract setShareContent(Ljava/lang/String;)V
.end method

.method public abstract setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z
.end method

.method public abstract setShareType(Lcom/umeng/socialize/bean/ShareType;)V
.end method

.method public abstract shareEmail(Landroid/content/Context;)V
.end method

.method public abstract shareSms(Landroid/content/Context;)V
.end method

.method public abstract shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
.end method

.method public abstract shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
.end method

.method public abstract showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
.end method

.method public abstract showPostComment(Landroid/content/Context;)V
.end method

.method public abstract unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
.end method

.method public abstract uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end method
