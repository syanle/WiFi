.class public Lcom/umeng/socialize/controller/permission/b;
.super Ljava/lang/Object;
.source "FeatureUser.java"

# interfaces
.implements Lcom/umeng/socialize/controller/UMSocialService;


# annotations
.annotation runtime Lcom/umeng/socialize/controller/permission/Implement;
    a = Lcom/umeng/socialize/controller/impl/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public varargs follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public getConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntity()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 127
    return-void
.end method

.method public getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method public getUserInfo(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public hasShareContent()Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public hasShareImage()Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public likeChange(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public openComment(Landroid/content/Context;Z)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 181
    return-void
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 186
    return-void
.end method

.method public varargs openUserCenter(Landroid/content/Context;[I)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public varargs postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public postLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public postUnLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 310
    return-void
.end method

.method public setAppWebSite(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 305
    return-void
.end method

.method public setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 158
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public setGlobalConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 148
    return-void
.end method

.method public setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setShareType(Lcom/umeng/socialize/bean/ShareType;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 300
    return-void
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public showPostComment(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method public unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 289
    return-void
.end method
