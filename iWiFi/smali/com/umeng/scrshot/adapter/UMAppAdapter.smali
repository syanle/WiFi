.class public Lcom/umeng/scrshot/adapter/UMAppAdapter;
.super Lcom/umeng/scrshot/adapter/UMBaseAdapter;
.source "UMAppAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMBaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMAppAdapter;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMAppAdapter;->mActivity:Landroid/app/Activity;

    .line 35
    new-instance v0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;

    iget-object v1, p0, Lcom/umeng/scrshot/adapter/UMAppAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMAppAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    .line 36
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/umeng/scrshot/adapter/UMAppAdapter;->isScrShotImplNotNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMAppAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    invoke-virtual {v0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
