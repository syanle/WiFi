.class public Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;
.super Lcom/ta/common/AsyncTask;
.source "TAFileCacheWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/cache/TAFileCacheWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/common/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/cache/TAFileCacheWork;


# direct methods
.method public constructor <init>(Lcom/ta/util/cache/TAFileCacheWork;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    .line 255
    invoke-direct {p0}, Lcom/ta/common/AsyncTask;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 263
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCacheWork;->clearCacheInternal()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCacheWork;->initDiskCacheInternal()V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCacheWork;->flushCacheInternal()V

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCacheWork$CacheAsyncTask;->this$0:Lcom/ta/util/cache/TAFileCacheWork;

    invoke-virtual {v0}, Lcom/ta/util/cache/TAFileCacheWork;->closeCacheInternal()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
