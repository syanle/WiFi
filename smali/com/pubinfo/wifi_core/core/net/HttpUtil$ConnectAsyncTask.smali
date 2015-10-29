.class Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectAsyncTask"
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
.field final synthetic this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;


# direct methods
.method private constructor <init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;-><init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$0(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrMethodName:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$1(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$2(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mListParams:Ljava/util/List;
    invoke-static {v4}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$3(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$4(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$5(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z
    invoke-static {v3}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$6(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->taskexecute(Ljava/lang/String;Z)V

    .line 115
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$7(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
