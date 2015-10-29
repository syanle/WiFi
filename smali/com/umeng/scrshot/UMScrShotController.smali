.class public Lcom/umeng/scrshot/UMScrShotController;
.super Ljava/lang/Object;
.source "UMScrShotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;
    }
.end annotation


# static fields
.field private static mController:Lcom/umeng/scrshot/UMScrShotController;


# instance fields
.field private mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

.field private mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/umeng/scrshot/UMScrShotController;

    invoke-direct {v0}, Lcom/umeng/scrshot/UMScrShotController;-><init>()V

    sput-object v0, Lcom/umeng/scrshot/UMScrShotController;->mController:Lcom/umeng/scrshot/UMScrShotController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/umeng/scrshot/UMScrShotController;->mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    .line 30
    iput-object v0, p0, Lcom/umeng/scrshot/UMScrShotController;->mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/umeng/scrshot/UMScrShotController;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/umeng/scrshot/UMScrShotController;->mController:Lcom/umeng/scrshot/UMScrShotController;

    return-object v0
.end method


# virtual methods
.method public getScrShotAdapter()Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/scrshot/UMScrShotController;->mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    return-object v0
.end method

.method public getScrShotListener()Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/scrshot/UMScrShotController;->mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    return-object v0
.end method

.method public setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/scrshot/UMScrShotController;->mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    .line 66
    return-void
.end method

.method public setScrShotListener(Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/umeng/scrshot/UMScrShotController;->mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .line 84
    return-void
.end method

.method public takeScreenShot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "scrBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/umeng/scrshot/UMScrShotController;->mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/umeng/scrshot/UMScrShotController;->mAdapter:Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    invoke-virtual {v1}, Lcom/umeng/scrshot/adapter/UMBaseAdapter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/umeng/scrshot/UMScrShotController;->mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/umeng/scrshot/UMScrShotController;->mScrShotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    invoke-interface {v1, v0}, Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 100
    :cond_1
    return-object v0
.end method
