.class public Lcom/ta/util/cache/TAFileCacheWork;
.super Ljava/lang/Object;
.source "TAFileCacheWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;,
        Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseObject:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final MESSAGE_CLEAR:I = 0x0

.field protected static final MESSAGE_CLOSE:I = 0x3

.field protected static final MESSAGE_FLUSH:I = 0x2

.field protected static final MESSAGE_INIT_DISK_CACHE:I = 0x1


# instance fields
.field private mCacheEntityHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ta/util/cache/TACacheEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ta/util/cache/TACallBackHandler",
            "<TResponseObject;>;"
        }
    .end annotation
.end field

.field private mExitTasksEarly:Z

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field private mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;

.field private mTAFileCache:Lcom/ta/util/cache/TAFileCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z

    .line 36
    iput-boolean v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWork:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ta/util/cache/TAFileCacheWork;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAFileCache;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ta/util/cache/TAFileCacheWork;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$3(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TAProcessDataHandler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ta/util/cache/TAFileCacheWork;)Lcom/ta/util/cache/TACallBackHandler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ta/util/cache/TAFileCacheWork;Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/ta/util/cache/TAFileCacheWork;->getBufferWorkerTask(Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method private getBufferWorkerTask(Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;
    .locals 2
    .param p1, "cacheEntity"    # Lcom/ta/util/cache/TACacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ta/util/cache/TACacheEntity;",
            ")",
            "Lcom/ta/util/cache/TAFileCacheWork",
            "<TResponseObject;>.BufferWorkerTask;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/ta/util/cache/TACacheEntity;->getAsyncEntity()Lcom/ta/util/cache/TAAsyncEntity;

    move-result-object v0

    .line 200
    .local v0, "asyncEntity":Lcom/ta/util/cache/TAAsyncEntity;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/ta/util/cache/TAAsyncEntity;->getBufferWorkerTask()Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    move-result-object v1

    .line 205
    .end local v0    # "asyncEntity":Lcom/ta/util/cache/TAAsyncEntity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelPotentialWork(Ljava/lang/Object;Lcom/ta/util/cache/TACacheEntity;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "cacheEntity"    # Lcom/ta/util/cache/TACacheEntity;

    .prologue
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    const/4 v2, 0x1

    .line 177
    invoke-direct {p0, p2}, Lcom/ta/util/cache/TAFileCacheWork;->getBufferWorkerTask(Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    move-result-object v1

    .line 179
    .local v1, "responseWorkerTask":Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>.BufferWorkerTask;"
    if-eqz v1, :cond_1

    .line 181
    # getter for: Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->access$3(Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    :cond_0
    invoke-virtual {v1, v2}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->cancel(Z)Z

    .line 191
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 188
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelWork(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseObject;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    .local p1, "responseObject":Ljava/lang/Object;, "TResponseObject;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "string":Ljava/lang/String;
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    new-instance v1, Lcom/ta/util/cache/TACacheEntity;

    invoke-direct {v1}, Lcom/ta/util/cache/TACacheEntity;-><init>()V

    .line 162
    .local v1, "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    invoke-virtual {v1, p1}, Lcom/ta/util/cache/TACacheEntity;->setT(Ljava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_0
    invoke-direct {p0, v1}, Lcom/ta/util/cache/TAFileCacheWork;->getBufferWorkerTask(Lcom/ta/util/cache/TACacheEntity;)Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    move-result-object v0

    .line 169
    .local v0, "bufferWorkerTask":Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>.BufferWorkerTask;"
    if-eqz v0, :cond_0

    .line 171
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->cancel(Z)Z

    .line 173
    :cond_0
    return-void

    .line 166
    .end local v0    # "bufferWorkerTask":Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>.BufferWorkerTask;"
    .end local v1    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    :cond_1
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/cache/TACacheEntity;

    .restart local v1    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    goto :goto_0
.end method

.method public clearCache()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    const/4 v3, 0x0

    .line 287
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    .line 288
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCache;->clearCache()V

    .line 234
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 311
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    .line 312
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCache;->close()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    .line 251
    :cond_0
    return-void
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 303
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    .line 304
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCache;->flush()V

    .line 242
    :cond_0
    return-void
.end method

.method public getCallBackHandler()Lcom/ta/util/cache/TACallBackHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ta/util/cache/TACallBackHandler",
            "<TResponseObject;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    return-object v0
.end method

.method public getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;

    return-object v0
.end method

.method public initCache()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    const/4 v3, 0x1

    .line 295
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    .line 296
    return-void
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCache;->initDiskCache()V

    .line 226
    :cond_0
    return-void
.end method

.method public loadFormCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TResponseObject;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    .local p2, "responseObject":Ljava/lang/Object;, "TResponseObject;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 61
    new-instance v2, Lcom/ta/util/cache/TACacheEntity;

    invoke-direct {v2}, Lcom/ta/util/cache/TACacheEntity;-><init>()V

    .line 62
    .local v2, "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    invoke-virtual {v2, p2}, Lcom/ta/util/cache/TACacheEntity;->setT(Ljava/lang/Object;)V

    .line 63
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_0
    if-nez p1, :cond_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 74
    .local v1, "buffer":[B
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ta/util/cache/TAFileCache;->getBufferFromMemCache(Ljava/lang/String;)[B

    move-result-object v1

    .line 78
    :cond_1
    if-eqz v1, :cond_4

    .line 81
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    if-eqz v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    invoke-virtual {v5, p2, p1, v1}, Lcom/ta/util/cache/TACallBackHandler;->onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V

    .line 98
    :cond_2
    :goto_1
    return-void

    .line 66
    .end local v1    # "buffer":[B
    .end local v2    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    :cond_3
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCacheEntityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ta/util/cache/TACacheEntity;

    .restart local v2    # "cacheEntity":Lcom/ta/util/cache/TACacheEntity;
    goto :goto_0

    .line 87
    .restart local v1    # "buffer":[B
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/ta/util/cache/TAFileCacheWork;->cancelPotentialWork(Ljava/lang/Object;Lcom/ta/util/cache/TACacheEntity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    new-instance v4, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    invoke-direct {v4, p0, v2}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;Lcom/ta/util/cache/TACacheEntity;)V

    .line 90
    .local v4, "task":Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>.BufferWorkerTask;"
    new-instance v0, Lcom/ta/util/cache/TAAsyncEntity;

    invoke-direct {v0, v4}, Lcom/ta/util/cache/TAAsyncEntity;-><init>(Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;)V

    .line 91
    .local v0, "asyncEntity":Lcom/ta/util/cache/TAAsyncEntity;
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    if-eqz v5, :cond_5

    .line 93
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    invoke-virtual {v5, p2, p1}, Lcom/ta/util/cache/TACallBackHandler;->onStart(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    :cond_5
    invoke-virtual {v2, v0}, Lcom/ta/util/cache/TACacheEntity;->setAsyncEntity(Lcom/ta/util/cache/TAAsyncEntity;)V

    .line 96
    sget-object v5, Lcom/ta/common/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    goto :goto_1
.end method

.method public setCallBackHandler(Lcom/ta/util/cache/TACallBackHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ta/util/cache/TACallBackHandler",
            "<TResponseObject;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    .local p1, "callBackHandler":Lcom/ta/util/cache/TACallBackHandler;, "Lcom/ta/util/cache/TACallBackHandler<TResponseObject;>;"
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mCallBackHandler:Lcom/ta/util/cache/TACallBackHandler;

    .line 125
    return-void
.end method

.method public setExitTasksEarly(Z)V
    .locals 1
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 144
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iput-boolean p1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mExitTasksEarly:Z

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ta/util/cache/TAFileCacheWork;->setPauseWork(Z)V

    .line 146
    return-void
.end method

.method public setFileCache(Lcom/ta/util/cache/TAFileCache;)V
    .locals 4
    .param p1, "fileCache"    # Lcom/ta/util/cache/TAFileCache;

    .prologue
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    const/4 v3, 0x1

    .line 107
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mTAFileCache:Lcom/ta/util/cache/TAFileCache;

    .line 108
    new-instance v0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;-><init>(Lcom/ta/util/cache/TAFileCacheWork;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    .line 109
    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2
    .param p1, "pauseWork"    # Z

    .prologue
    .line 210
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iput-boolean p1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWork:Z

    .line 213
    iget-boolean v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWork:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 210
    :cond_0
    monitor-exit v1

    .line 218
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProcessDataHandler(Lcom/ta/util/cache/TAProcessDataHandler;)V
    .locals 0
    .param p1, "processDataHandler"    # Lcom/ta/util/cache/TAProcessDataHandler;

    .prologue
    .line 129
    .local p0, "this":Lcom/ta/util/cache/TAFileCacheWork;, "Lcom/ta/util/cache/TAFileCacheWork<TResponseObject;>;"
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCacheWork;->mProcessDataHandler:Lcom/ta/util/cache/TAProcessDataHandler;

    .line 130
    return-void
.end method
