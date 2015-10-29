.class Lcom/umeng/socialize/controller/UMQQSsoHandler$7;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    const-string v0, "UMQQSsoHandler"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 469
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 472
    :cond_0
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$20()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 475
    invoke-static {v3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$12(Z)V

    .line 477
    :cond_1
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 433
    const-string v0, "UMQQSsoHandler"

    const-string v1, "QQ SSO \u6388\u6743\u6210\u529f!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->buildUmToken(Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMToken;
    invoke-static {v2, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$21(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v2

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$22(Lcom/umeng/socialize/controller/UMQQSsoHandler;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    .line 437
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/umeng/socialize/db/OauthHelper;->saveQQAccessToken(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 438
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 440
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 441
    const-string v2, "openid"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v1, v0, v2}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 443
    :cond_0
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$20()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 444
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$20()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 446
    const/4 v3, 0x1

    .line 445
    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 447
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$12(Z)V

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "access_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    const-string v1, "openid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    const-string v2, "expires_in"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 457
    const-string v4, "uid"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "expires_in"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 461
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v3, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 463
    :cond_2
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6388\u6743\u5931\u8d25! ==> errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    const-string v2, ", errorMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 420
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    .line 422
    iget-object v3, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 421
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 424
    :cond_0
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$20()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1, v2, v4}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 427
    invoke-static {v4}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$12(Z)V

    .line 429
    :cond_1
    return-void
.end method
