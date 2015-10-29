.class public Lcom/ta/util/bitmap/TABitmapCacheWork;
.super Lcom/ta/util/cache/TAFileCacheWork;
.source "TABitmapCacheWork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/util/cache/TAFileCacheWork",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TABitmapCacheWork"


# instance fields
.field private mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

.field private mContext:Landroid/content/Context;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ta/util/cache/TAFileCacheWork;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TABitmapCacheWork;->mResources:Landroid/content/res/Resources;

    .line 36
    iput-object p1, p0, Lcom/ta/util/bitmap/TABitmapCacheWork;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ta/util/cache/TAFileCacheWork;->clearCacheInternal()V

    .line 84
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 85
    .local v0, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->clearCacheInternal()V

    .line 89
    :cond_0
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ta/util/cache/TAFileCacheWork;->closeCacheInternal()V

    .line 104
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 105
    .local v0, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->closeCacheInternal()V

    .line 109
    :cond_0
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/ta/util/cache/TAFileCacheWork;->flushCacheInternal()V

    .line 94
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 95
    .local v0, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->flushCacheInternal()V

    .line 99
    :cond_0
    return-void
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 74
    .local v0, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    invoke-super {p0}, Lcom/ta/util/cache/TAFileCacheWork;->initDiskCacheInternal()V

    .line 75
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->initDiskCacheInternal()V

    .line 79
    :cond_0
    return-void
.end method

.method public loadFormCache(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "responseObject"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getCallBackHandler()Lcom/ta/util/cache/TACallBackHandler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;

    invoke-direct {v0}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;-><init>()V

    .line 46
    .local v0, "callBackHanlder":Lcom/ta/util/bitmap/TABitmapCallBackHanlder;
    invoke-virtual {p0, v0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setCallBackHandler(Lcom/ta/util/cache/TACallBackHandler;)V

    .line 48
    .end local v0    # "callBackHanlder":Lcom/ta/util/bitmap/TABitmapCallBackHanlder;
    :cond_0
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->getProcessDataHandler()Lcom/ta/util/cache/TAProcessDataHandler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 50
    new-instance v1, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 51
    iget-object v2, p0, Lcom/ta/util/bitmap/TABitmapCacheWork;->mContext:Landroid/content/Context;

    const/16 v3, 0x64

    .line 50
    invoke-direct {v1, v2, v3}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;-><init>(Landroid/content/Context;I)V

    .line 52
    .local v1, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    invoke-virtual {p0, v1}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setProcessDataHandler(Lcom/ta/util/cache/TAProcessDataHandler;)V

    .line 54
    .end local v1    # "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ta/util/cache/TAFileCacheWork;->loadFormCache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public bridge synthetic loadFormCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/ta/util/bitmap/TABitmapCacheWork;->loadFormCache(Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setBitmapCache(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/ta/util/cache/TAFileCache$TACacheParams;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ta/util/bitmap/TABitmapCacheWork;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    .line 66
    new-instance v0, Lcom/ta/util/cache/TAFileCache;

    invoke-direct {v0, p1}, Lcom/ta/util/cache/TAFileCache;-><init>(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V

    invoke-virtual {p0, v0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setFileCache(Lcom/ta/util/cache/TAFileCache;)V

    .line 67
    return-void
.end method
