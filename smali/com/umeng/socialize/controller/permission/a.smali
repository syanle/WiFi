.class public Lcom/umeng/socialize/controller/permission/a;
.super Ljava/lang/Object;
.source "AnalyticUser.java"

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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public varargs follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntity()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public getUserInfo(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public hasShareContent()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public hasShareImage()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public likeChange(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public openComment(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public varargs openUserCenter(Landroid/content/Context;[I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public varargs postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public postLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public postUnLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public setAppWebSite(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public setGlobalConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public setShareType(Lcom/umeng/socialize/bean/ShareType;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 0
    .annotation runtime Lcom/umeng/socialize/controller/permission/Permit;
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public showPostComment(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
