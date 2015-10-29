.class Lcom/umeng/socialize/sso/QZoneSsoHandler$1;
.super Ljava/lang/Object;
.source "QZoneSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/QZoneSsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "### Tencent Sso Authorize --> onCancel"

    const-string v1, "Authorize Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 149
    const-string v0, "### "

    const-string v1, "### Tencent Sso Authorize --> onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getAuthorizedData(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v0, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    .prologue
    .line 140
    const-string v0, "Tencent SSo Authorize --> onError:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/QZoneSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    .line 143
    iget-object v3, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 142
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 145
    :cond_0
    return-void
.end method
