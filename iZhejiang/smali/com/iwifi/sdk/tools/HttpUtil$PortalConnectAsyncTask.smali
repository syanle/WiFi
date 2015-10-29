.class Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/tools/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortalConnectAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/tools/HttpUtil;


# direct methods
.method private constructor <init>(Lcom/iwifi/sdk/tools/HttpUtil;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iwifi/sdk/tools/HttpUtil;Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;-><init>(Lcom/iwifi/sdk/tools/HttpUtil;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    iget-object v1, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/iwifi/sdk/tools/HttpUtil;->access$8(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->account:Ljava/lang/String;
    invoke-static {v2}, Lcom/iwifi/sdk/tools/HttpUtil;->access$9(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/iwifi/sdk/tools/HttpUtil;->access$10(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->apZone:Ljava/lang/String;
    invoke-static {v4}, Lcom/iwifi/sdk/tools/HttpUtil;->access$11(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/iwifi/sdk/tools/HttpUtil;->excutePortalConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iwifi/sdk/tools/HttpUtil;->access$12(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 460
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    iget-object v2, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/iwifi/sdk/tools/HttpUtil;->access$5(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    # getter for: Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z
    invoke-static {v3}, Lcom/iwifi/sdk/tools/HttpUtil;->access$6(Lcom/iwifi/sdk/tools/HttpUtil;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iwifi/sdk/tools/HttpUtil;->taskexecute(Ljava/lang/String;Z)V

    .line 463
    iget-object v1, p0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->this$0:Lcom/iwifi/sdk/tools/HttpUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->access$7(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
