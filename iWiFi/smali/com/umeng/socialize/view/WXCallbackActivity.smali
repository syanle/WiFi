.class public abstract Lcom/umeng/socialize/view/WXCallbackActivity;
.super Landroid/app/Activity;
.source "WXCallbackActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-class v0, Lcom/umeng/socialize/view/WXCallbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/WXCallbackActivity;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private a()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/WXCallbackActivity;->a:Ljava/lang/String;

    const-string v1, "### WXCallbackActivity   handleIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0}, Lcom/umeng/socialize/view/WXCallbackActivity;->a()Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/umeng/socialize/view/WXCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/WXCallbackActivity;->a:Ljava/lang/String;

    const-string v1, "### WXCallbackActivity   wxApi == null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/umeng/socialize/view/WXCallbackActivity;->a:Ljava/lang/String;

    const-string v1, "### WXCallbackActivity   onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/umeng/socialize/view/WXCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/WXCallbackActivity;->a(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/umeng/socialize/view/WXCallbackActivity;->a:Ljava/lang/String;

    const-string v1, "### WXCallbackActivity   onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/WXCallbackActivity;->setIntent(Landroid/content/Intent;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/WXCallbackActivity;->a(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V

    .line 72
    invoke-virtual {p0}, Lcom/umeng/socialize/view/WXCallbackActivity;->finish()V

    .line 73
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V

    .line 63
    invoke-virtual {p0}, Lcom/umeng/socialize/view/WXCallbackActivity;->finish()V

    .line 64
    return-void
.end method
