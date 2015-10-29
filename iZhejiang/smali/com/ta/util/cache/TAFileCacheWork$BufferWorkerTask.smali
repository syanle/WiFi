.class public Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;
.super Lcom/ta/common/AsyncTask;
.source "TAFileCacheWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/cache/TAFileCacheWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/common/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final cacheEntityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ta/util/cache/TACacheEntity;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/Object;

.field final synthetic this$0:Lcom/ta/util/cache/TAFileCacheWork;


# direct methods
.method public constructor <init>(Lcom/ta/util/cache/TAFileCacheWork;Lcom/ta/util/cache/TACacheEntity;)V
    .locals 1
    .param p2, "cacheEntity"    # Lcom/ta/util/cache/TACacheEntity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    .line 319
    invoke-direct {p0}, Lcom/ta/common/AsyncTask;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 322
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 321
    iput-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->cacheEntityReference:Ljava/lang/ref/WeakReference;

    .line 323
    return-void
.end method

.method static synthetic access$3(Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedCacheEntity()Lcom/ta/util/cache/TACacheEntity;
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->cacheEntityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/cache/TACacheEntity;

    .line 398
    .local v1, "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # invokes: Lcom/ta/util/cache/TAFileCacheWork;->getBufferWorkerTask(Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;
    invoke-static {v2, v1}, Lcom/ta/util/cache/TAFileCacheWork;->access$5(Lcom/ta/util/cache/TAFileCacheWork;Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    move-result-object v0

    .line 400
    .local v0, "bufferWorkerTask":Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>.BufferWorkerTask;"
    if-ne p0, v0, :cond_0

    .line 405
    .end local v1    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    :goto_0
    return-object v1

    .restart local v1    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->doInBackground([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[B
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 335
    aget-object v2, p1, v4

    iput-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->data:Ljava/lang/Object;

    .line 336
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 340
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$0(Lcom/ta/util/cache/TAFileCacheWork;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 342
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    iget-boolean v2, v2, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWork:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$1(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAFileCache;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->getAttachedCacheEntity()Lcom/ta/util/cache/TACacheEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$2(Lcom/ta/util/cache/TAFileCacheWork;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$1(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAFileCache;

    move-result-object v2

    .line 356
    invoke-virtual {v2, v1}, Lcom/ta/util/cache/TAFileCache;->getBufferFromDiskCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 358
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->getAttachedCacheEntity()Lcom/ta/util/cache/TACacheEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$2(Lcom/ta/util/cache/TAFileCacheWork;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$3(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$3(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lcom/ta/util/cache/TAProcessDataHandler;->processData(Ljava/lang/Object;)[B

    move-result-object v0

    .line 366
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$1(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAFileCache;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$1(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAFileCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ta/util/cache/TAFileCache;->addBufferToCache(Ljava/lang/String;[B)V

    .line 370
    :cond_3
    return-object v0

    .line 346
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCacheWork;->access$0(Lcom/ta/util/cache/TAFileCacheWork;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->onCancelled([B)V

    return-void
.end method

.method protected onCancelled([B)V
    .locals 2
    .param p1, "inputStream"    # [B

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/ta/common/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/util/cache/TAFileCacheWork;->access$0(Lcom/ta/util/cache/TAFileCacheWork;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/util/cache/TAFileCacheWork;->access$0(Lcom/ta/util/cache/TAFileCacheWork;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 412
    monitor-exit v1

    .line 416
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z
    invoke-static {v1}, Lcom/ta/util/cache/TAFileCacheWork;->access$2(Lcom/ta/util/cache/TAFileCacheWork;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    const/4 p1, 0x0

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->getAttachedCacheEntity()Lcom/ta/util/cache/TACacheEntity;

    move-result-object v0

    .line 387
    .local v0, "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;
    invoke-static {v1}, Lcom/ta/util/cache/TAFileCacheWork;->access$4(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TACallBackHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 389
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    # getter for: Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;
    invoke-static {v1}, Lcom/ta/util/cache/TAFileCacheWork;->access$4(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TACallBackHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ta/util/cache/TACacheEntity;->getT()Ljava/lang/Object;

    move-result-object v2

    .line 390
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->data:Ljava/lang/Object;

    .line 389
    invoke-virtual {v1, v2, v3, p1}, Lcom/ta/util/cache/TACallBackHandler;->onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V

    .line 393
    :cond_2
    return-void
.end method
