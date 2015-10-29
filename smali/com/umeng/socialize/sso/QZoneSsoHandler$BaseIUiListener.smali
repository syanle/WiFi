.class Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;
.super Ljava/lang/Object;
.source "QZoneSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sso/QZoneSsoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseIUiListener"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field entity:Lcom/umeng/socialize/bean/SocializeEntity;

.field listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field shareMsg:Lcom/umeng/socialize/bean/UMShareMsg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->activity:Landroid/app/Activity;

    .line 272
    iput-object p3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->shareMsg:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 273
    iput-object p4, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 274
    iput-object p2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 275
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 281
    const v2, 0x9c40

    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 280
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 291
    :cond_0
    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$1()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 293
    const-string v0, "openid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/umeng/socialize/db/OauthHelper;->saveQQAccessToken(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 296
    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$2()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->shareMsg:Lcom/umeng/socialize/bean/UMShareMsg;

    const/4 v3, 0x1

    # invokes: Lcom/umeng/socialize/sso/QZoneSsoHandler;->buildParams(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;
    invoke-static {v2, v3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$3(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->entity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v5, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    # invokes: Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareToQQListener(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$4(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v3

    .line 296
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 298
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 304
    const v2, 0x9c42

    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;->entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 303
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 306
    :cond_0
    return-void
.end method
