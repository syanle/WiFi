.class public Lcom/umeng/scrshot/adapter/UMRootedAdapter;
.super Lcom/umeng/scrshot/adapter/UMBaseAdapter;
.source "UMRootedAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMBaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;

    iget-object v1, p0, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->isScrShotImplNotNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMRootedAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    invoke-virtual {v0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
