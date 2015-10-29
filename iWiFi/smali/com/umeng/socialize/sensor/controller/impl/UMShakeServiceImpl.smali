.class public Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;
.super Ljava/lang/Object;
.source "UMShakeServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/sensor/controller/UMShakeService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isAsyncToTakeScrShot:Z

.field private mShakeContent:Ljava/lang/String;

.field private mShakeSpeedShreshold:I

.field private mSocialController:Lcom/umeng/socialize/controller/UMSocialService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeContent:Ljava/lang/String;

    .line 50
    const/16 v0, 0x708

    iput v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->isAsyncToTakeScrShot:Z

    .line 66
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 65
    invoke-static {p1, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 67
    sget-boolean v0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method private addShakeOP(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 440
    .local v0, "entity":Lcom/umeng/socialize/bean/SocializeEntity;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->addShakeStatisticsData(Landroid/content/Context;)V

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public getShakeSpeedShreshold()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    return v0
.end method

.method public getShareContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeContent:Ljava/lang/String;

    return-object v0
.end method

.method public isAsyncTakeScrShot()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->isAsyncToTakeScrShot:Z

    return v0
.end method

.method public openShare(Landroid/app/Activity;ZLcom/umeng/scrshot/adapter/UMBaseAdapter;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "forceLogin"    # Z
    .param p3, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    .prologue
    .line 374
    if-eqz p3, :cond_0

    .line 375
    invoke-static {}, Lcom/umeng/scrshot/UMScrShotController;->getInstance()Lcom/umeng/scrshot/UMScrShotController;

    move-result-object v0

    .line 376
    .local v0, "controller":Lcom/umeng/scrshot/UMScrShotController;
    invoke-virtual {v0, p3}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 377
    invoke-virtual {v0}, Lcom/umeng/scrshot/UMScrShotController;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 378
    .local v1, "scrShotBmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v3, Lcom/umeng/socialize/media/UMImage;

    .line 380
    invoke-direct {v3, p1, v1}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 379
    invoke-interface {v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 383
    .end local v0    # "controller":Lcom/umeng/scrshot/UMScrShotController;
    .end local v1    # "scrShotBmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2, p1, p2}, Lcom/umeng/socialize/controller/UMSocialService;->openShare(Landroid/app/Activity;Z)V

    .line 386
    :cond_1
    return-void
.end method

.method public registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "speedThreshold"    # I
    .param p4, "sound"    # Z
    .param p6, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/umeng/scrshot/adapter/UMBaseAdapter;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;",
            "Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p5, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->addShakeOP(Landroid/content/Context;)V

    .line 138
    iput p3, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    .line 140
    invoke-static {p1, p3}, Lcom/umeng/socialize/sensor/UMSensorManager;->getShakeSensor(Landroid/app/Activity;I)Lcom/umeng/socialize/sensor/UMSensor;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 142
    .local v0, "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    if-nez v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "#### \u4f20\u611f\u5668\u5b9e\u4f8b\u5316\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {v0, p4}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSoundEnable(Z)V

    .line 150
    new-instance v1, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    invoke-direct {v1, p1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;-><init>(Landroid/app/Activity;)V

    .line 151
    .local v1, "strategy":Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;
    invoke-virtual {v1, p5}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->setSharePlatforms(Ljava/util/List;)V

    .line 153
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 155
    invoke-virtual {v1, p0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->setShakeController(Lcom/umeng/socialize/sensor/controller/UMShakeService;)V

    .line 156
    invoke-virtual {v1, p2}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 157
    invoke-virtual {v1, p6}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSensorStrategy(Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;)V

    .line 160
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v2, :cond_1

    .line 162
    invoke-static {v0, p6}, Lcom/umeng/socialize/sensor/UMSensorManager;->registerSensor(Lcom/umeng/socialize/sensor/UMSensor;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "### mSocialController == null, \u8bf7\u8bbe\u7f6eshare controller"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Ljava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p4, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/umeng/scrshot/adapter/UMBaseAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;",
            "Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 89
    return-void
.end method

.method public registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "sound"    # Z
    .param p5, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/umeng/scrshot/adapter/UMBaseAdapter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;",
            "Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .line 112
    .local p4, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    iget v3, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 113
    return-void
.end method

.method public registerShakeToOpenShare(Landroid/app/Activity;IZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "speed"    # I
    .param p3, "sound"    # Z

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->addShakeOP(Landroid/content/Context;)V

    .line 311
    iput p2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    .line 312
    invoke-static {p1, p2}, Lcom/umeng/socialize/sensor/UMSensorManager;->getShakeSensor(Landroid/app/Activity;I)Lcom/umeng/socialize/sensor/UMSensor;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 314
    .local v1, "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    if-nez v1, :cond_0

    .line 315
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "####\u4f20\u611f\u5668\u5b9e\u4f8b\u5316\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {v1, p3}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSoundEnable(Z)V

    .line 320
    new-instance v0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;-><init>(Landroid/app/Activity;)V

    .line 322
    .local v0, "openShareStrategy":Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 323
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSensorStrategy(Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;)V

    .line 325
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/socialize/sensor/UMSensorManager;->registerSensor(Lcom/umeng/socialize/sensor/UMSensor;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    goto :goto_0
.end method

.method public registerShakeToOpenShare(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sound"    # Z

    .prologue
    .line 291
    iget v0, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeToOpenShare(Landroid/app/Activity;IZ)V

    .line 293
    return-void
.end method

.method public registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ILcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "speedThreshold"    # I
    .param p4, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 235
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 237
    return-void
.end method

.method public registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "speedThreshold"    # I
    .param p4, "sound"    # Z
    .param p5, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->addShakeOP(Landroid/content/Context;)V

    .line 259
    iput p3, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    .line 261
    invoke-static {p1, p3}, Lcom/umeng/socialize/sensor/UMSensorManager;->getShakeSensor(Landroid/app/Activity;I)Lcom/umeng/socialize/sensor/UMSensor;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 263
    .local v1, "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    if-nez v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "####\u4f20\u611f\u5668\u5b9e\u4f8b\u5316\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;-><init>(Landroid/app/Activity;)V

    .line 270
    .local v0, "scrShotStrategy":Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;
    invoke-virtual {v0, p5}, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->setScreenshotListener(Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 271
    invoke-virtual {v0, p2}, Lcom/umeng/socialize/sensor/strategy/UMScrShotStrategy;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 273
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSensorStrategy(Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;)V

    .line 274
    invoke-virtual {v1, p4}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSoundEnable(Z)V

    .line 276
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/socialize/sensor/UMSensorManager;->registerSensor(Lcom/umeng/socialize/sensor/UMSensor;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    goto :goto_0
.end method

.method public registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 196
    return-void
.end method

.method public registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "sound"    # Z
    .param p4, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 214
    .line 215
    iget v3, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 214
    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 216
    return-void
.end method

.method public setAsyncTakeScrShot(Z)V
    .locals 0
    .param p1, "isAsync"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->isAsyncToTakeScrShot:Z

    .line 420
    return-void
.end method

.method public setShakeSpeedShreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeSpeedShreshold:I

    .line 452
    return-void
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareText"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mShakeContent:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setSocialController(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0
    .param p1, "controller"    # Lcom/umeng/socialize/controller/UMSocialService;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;->mSocialController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 358
    return-void
.end method

.method public takeScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .param p3, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 344
    invoke-static {}, Lcom/umeng/scrshot/UMScrShotController;->getInstance()Lcom/umeng/scrshot/UMScrShotController;

    move-result-object v0

    .line 345
    .local v0, "controller":Lcom/umeng/scrshot/UMScrShotController;
    invoke-virtual {v0, p2}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 346
    invoke-virtual {v0, p3}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotListener(Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V

    .line 347
    invoke-virtual {v0}, Lcom/umeng/scrshot/UMScrShotController;->takeScreenShot()Landroid/graphics/Bitmap;

    .line 348
    return-void
.end method

.method public unregisterShakeListener(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/umeng/socialize/sensor/UMSensorManager;->unregisterSensor(Landroid/app/Activity;)V

    .line 179
    return-void
.end method
