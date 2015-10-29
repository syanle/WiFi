.class public abstract Lcom/umeng/scrshot/adapter/UMBaseAdapter;
.super Ljava/lang/Object;
.source "UMBaseAdapter.java"

# interfaces
.implements Lcom/umeng/scrshot/adapter/UMAdapter;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getScrShotImpl()Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    return-object v0
.end method

.method protected isScrShotImplNotNull()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrShotImpl(Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;)V
    .locals 0
    .param p1, "scrShotImpl"    # Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    .line 64
    return-void
.end method
