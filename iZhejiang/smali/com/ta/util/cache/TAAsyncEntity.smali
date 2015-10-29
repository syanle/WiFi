.class public Lcom/ta/util/cache/TAAsyncEntity;
.super Ljava/lang/Object;
.source "TAAsyncEntity.java"


# instance fields
.field private final bufferWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;)V
    .locals 1
    .param p1, "inpputWorkerTask"    # Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    iput-object v0, p0, Lcom/ta/util/cache/TAAsyncEntity;->bufferWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method


# virtual methods
.method public getBufferWorkerTask()Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ta/util/cache/TAAsyncEntity;->bufferWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/cache/TAFileCacheWork$BufferWorkerTask;

    return-object v0
.end method
