.class Lcom/ta/util/download/DownloadManager$handlerQueue;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlerQueue"
.end annotation


# instance fields
.field private handlerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ta/util/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/ta/util/download/DownloadManager;)V
    .locals 1

    .prologue
    .line 521
    iput-object p1, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->this$0:Lcom/ta/util/download/DownloadManager;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    .line 523
    return-void
.end method


# virtual methods
.method public get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    .line 557
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/AsyncHttpResponseHandler;

    goto :goto_0
.end method

.method public offer(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public poll()Lcom/ta/util/http/AsyncHttpResponseHandler;
    .locals 4

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    :goto_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->this$0:Lcom/ta/util/download/DownloadManager;

    # getter for: Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;
    invoke-static {v2}, Lcom/ta/util/download/DownloadManager;->access$0(Lcom/ta/util/download/DownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 536
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    check-cast v1, Lcom/ta/util/http/AsyncHttpResponseHandler;

    .restart local v1    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    if-eqz v1, :cond_0

    .line 546
    return-object v1

    .line 540
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public remove(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-virtual {p0, p1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/ta/util/http/AsyncHttpResponseHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager$handlerQueue;->handlerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
