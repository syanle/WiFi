.class public Lcom/umeng/scrshot/impl/UMAppScrShotImpl;
.super Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;
.source "UMAppScrShotImpl.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 62
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    :cond_0
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->TAG:Ljava/lang/String;

    const-string v9, "takeScreenShot(Activity act)\u7684act\u53c2\u6570\u4e3a\u7a7a."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v3, 0x0

    .line 94
    :goto_0
    return-object v3

    .line 66
    :cond_1
    iget-object v9, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    monitor-enter v9

    .line 68
    :try_start_0
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "scrView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 70
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v5, "statuBarRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 77
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 78
    .local v6, "statusBarHeight":I
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 79
    .local v7, "width":I
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 80
    .local v2, "height":I
    const/4 v3, 0x0

    .line 83
    .local v3, "scrBmp":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 84
    sub-int v10, v2, v6

    .line 83
    :try_start_1
    invoke-static {v0, v8, v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 92
    :goto_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v4, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 94
    monitor-exit v9

    goto :goto_0

    .line 66
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "scrBmp":Landroid/graphics/Bitmap;
    .end local v4    # "scrView":Landroid/view/View;
    .end local v5    # "statuBarRect":Landroid/graphics/Rect;
    .end local v6    # "statusBarHeight":I
    .end local v7    # "width":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 85
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v3    # "scrBmp":Landroid/graphics/Bitmap;
    .restart local v4    # "scrView":Landroid/view/View;
    .restart local v5    # "statuBarRect":Landroid/graphics/Rect;
    .restart local v6    # "statusBarHeight":I
    .restart local v7    # "width":I
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 87
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 89
    :cond_2
    iget-object v8, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->TAG:Ljava/lang/String;

    const-string v10, "#### \u65cb\u8f6c\u5c4f\u5e55\u5bfc\u81f4\u53bb\u6389\u72b6\u6001\u680f\u5931\u8d25"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMAppScrShotImpl;->mActivity:Landroid/app/Activity;

    .line 50
    return-void
.end method
