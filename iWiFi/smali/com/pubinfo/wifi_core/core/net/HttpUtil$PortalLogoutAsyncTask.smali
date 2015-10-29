.class public Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PortalLogoutAsyncTask"
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
.method public constructor <init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->excutePortalLogout()V

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$5(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    # getter for: Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z
    invoke-static {v3}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$6(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->taskexecute(Ljava/lang/String;Z)V

    .line 192
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->this$0:Lcom/pubinfo/wifi_core/core/net/HttpUtil;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->access$7(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
