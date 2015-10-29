.class Lcom/ta/util/download/DownloadManager$1;
.super Lcom/ta/util/http/FileHttpResponseHandler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/util/download/DownloadManager;->newAsyncHttpResponseHandler(Ljava/lang/String;)Lcom/ta/util/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/ta/util/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    .line 458
    invoke-direct {p0, p2, p3, p4}, Lcom/ta/util/http/FileHttpResponseHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    const-string v1, "Throwable"

    invoke-static {v0, v1}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    if-eqz p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager$1;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v0, v1, v2}, Lcom/ta/util/download/DownLoadCallback;->sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/ta/util/download/DownloadManager;->completehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 487
    return-void
.end method

.method public onProgress(JJJ)V
    .locals 8
    .param p1, "totalSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "speed"    # J

    .prologue
    .line 466
    invoke-super/range {p0 .. p6}, Lcom/ta/util/http/FileHttpResponseHandler;->onProgress(JJJ)V

    .line 467
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager$1;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ta/util/download/DownLoadCallback;->sendLoadMessage(Ljava/lang/String;JJJ)V

    .line 472
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$0(Lcom/ta/util/download/DownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 492
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager$1;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {v0, v1}, Lcom/ta/util/download/DownLoadConfigUtil;->storeURL(ILjava/lang/String;)V

    .line 493
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$1;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;
    invoke-static {v0}, Lcom/ta/util/download/DownloadManager;->access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager$1;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownLoadCallback;->sendSuccessMessage(Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method
