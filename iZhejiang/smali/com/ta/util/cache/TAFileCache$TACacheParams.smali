.class public Lcom/ta/util/cache/TAFileCache$TACacheParams;
.super Ljava/lang/Object;
.source "TAFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/cache/TAFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TACacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memCacheSize:I

    .line 449
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheSize:I

    .line 451
    const/16 v0, 0x46

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->compressQuality:I

    .line 452
    iput-boolean v2, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memoryCacheEnabled:Z

    .line 453
    iput-boolean v2, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheEnabled:Z

    .line 454
    iput-boolean v1, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->clearDiskCacheOnStart:Z

    .line 455
    iput-boolean v1, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->initDiskCacheOnCreate:Z

    .line 467
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-static {p1, p2}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheDir:Ljava/io/File;

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p1, p2}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "diskCacheDir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memCacheSize:I

    .line 449
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheSize:I

    .line 451
    const/16 v0, 0x46

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->compressQuality:I

    .line 452
    iput-boolean v2, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memoryCacheEnabled:Z

    .line 453
    iput-boolean v2, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheEnabled:Z

    .line 454
    iput-boolean v1, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->clearDiskCacheOnStart:Z

    .line 455
    iput-boolean v1, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->initDiskCacheOnCreate:Z

    .line 486
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheDir:Ljava/io/File;

    .line 487
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {p0}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "percent"    # F

    .prologue
    const/high16 v1, 0x44800000    # 1024.0f

    .line 500
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 503
    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-static {p1}, Lcom/ta/util/cache/TAFileCache$TACacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    .line 507
    mul-float/2addr v0, v1

    .line 506
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memCacheSize:I

    .line 508
    return-void
.end method
