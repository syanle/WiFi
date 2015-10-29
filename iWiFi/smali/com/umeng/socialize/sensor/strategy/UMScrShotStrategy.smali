.class public Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;
.super Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;
.source "UMScrShotStrategy.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;-><init>(Landroid/app/Activity;)V

    .line 28
    return-void
.end method


# virtual methods
.method public shakeComplete()V
    .locals 5

    .prologue
    .line 40
    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v3}, Lcom/umeng/scrshot/UMScrShotController;->getScrShotAdapter()Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 47
    new-instance v0, Lcom/umeng/scrshot/adapter/UMAppAdapter;

    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/umeng/scrshot/adapter/UMAppAdapter;-><init>(Landroid/app/Activity;)V

    .line 48
    .local v0, "appAdapter":Lcom/umeng/scrshot/adapter/UMAppAdapter;
    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v3, v0}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 50
    .end local v0    # "appAdapter":Lcom/umeng/scrshot/adapter/UMAppAdapter;
    :cond_2
    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    iget-object v4, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mScreenshotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    invoke-virtual {v3, v4}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotListener(Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 53
    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v3}, Lcom/umeng/scrshot/UMScrShotController;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    iget-object v3, p0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, "screenShotDialog":Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;
    invoke-virtual {v2, v1}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->setScreenBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {v2}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->show()V

    goto :goto_0
.end method
