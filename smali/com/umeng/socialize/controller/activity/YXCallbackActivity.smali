.class public abstract Lcom/umeng/socialize/controller/activity/YXCallbackActivity;
.super Lim/yixin/sdk/api/BaseYXEntryActivity;
.source "YXCallbackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected getIYXAPI()Lim/yixin/sdk/api/IYXAPI;
    .locals 2

    .prologue
    .line 35
    const-string v0, ""

    const-string v1, "#### get \u6613\u4fe1 API"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->getYXApi()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    return-object v0
.end method

.method public onReq(Lim/yixin/sdk/api/BaseReq;)V
    .locals 1
    .param p1, "req"    # Lim/yixin/sdk/api/BaseReq;

    .prologue
    .line 21
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->getCallbackHandler()Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onReq(Lim/yixin/sdk/api/BaseReq;)V

    .line 22
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/activity/YXCallbackActivity;->finish()V

    .line 23
    return-void
.end method

.method public onResp(Lim/yixin/sdk/api/BaseResp;)V
    .locals 2
    .param p1, "resp"    # Lim/yixin/sdk/api/BaseResp;

    .prologue
    .line 27
    const-string v0, ""

    const-string v1, "#### \u6613\u4fe1 onResp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->getCallbackHandler()Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/yixin/sdk/api/IYXAPICallbackEventHandler;->onResp(Lim/yixin/sdk/api/BaseResp;)V

    .line 30
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/activity/YXCallbackActivity;->finish()V

    .line 31
    return-void
.end method
