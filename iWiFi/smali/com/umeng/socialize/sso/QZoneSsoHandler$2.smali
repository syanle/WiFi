.class Lcom/umeng/socialize/sso/QZoneSsoHandler$2;
.super Ljava/lang/Object;
.source "QZoneSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

.field private final synthetic val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SocializeEntity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    iput-object p3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$activity:Landroid/app/Activity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 352
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 354
    iget-object v2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 353
    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 356
    :cond_0
    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$1()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 357
    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 356
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 358
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    .line 359
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    # invokes: Lcom/umeng/socialize/sso/QZoneSsoHandler;->sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$5(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 360
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 336
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 338
    iget-object v2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 337
    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 340
    :cond_0
    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$1()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 341
    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 340
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 342
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    .line 343
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    # invokes: Lcom/umeng/socialize/sso/QZoneSsoHandler;->sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$5(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 344
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 5

    .prologue
    const v4, 0x9c42

    .line 324
    const-string v0, "IUiListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    const-string v2, "       error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 328
    iget-object v2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 327
    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 330
    :cond_0
    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$1()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 331
    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;->val$entity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 330
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 332
    return-void
.end method
