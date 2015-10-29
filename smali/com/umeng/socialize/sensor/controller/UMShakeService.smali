.class public interface abstract Lcom/umeng/socialize/sensor/controller/UMShakeService;
.super Ljava/lang/Object;
.source "UMShakeService.java"


# virtual methods
.method public abstract getShakeSpeedShreshold()I
.end method

.method public abstract getShareContent()Ljava/lang/String;
.end method

.method public abstract isAsyncTakeScrShot()Z
.end method

.method public abstract openShare(Landroid/app/Activity;ZLcom/umeng/scrshot/adapter/UMBaseAdapter;)V
.end method

.method public abstract registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
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
.end method

.method public abstract registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Ljava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
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
.end method

.method public abstract registerShakeListender(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLjava/util/List;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
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
.end method

.method public abstract registerShakeToOpenShare(Landroid/app/Activity;IZ)V
.end method

.method public abstract registerShakeToOpenShare(Landroid/app/Activity;Z)V
.end method

.method public abstract registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ILcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
.end method

.method public abstract registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;IZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
.end method

.method public abstract registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
.end method

.method public abstract registerShakeToScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;ZLcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
.end method

.method public abstract setAsyncTakeScrShot(Z)V
.end method

.method public abstract setShakeSpeedShreshold(I)V
.end method

.method public abstract setShareContent(Ljava/lang/String;)V
.end method

.method public abstract takeScrShot(Landroid/app/Activity;Lcom/umeng/scrshot/adapter/UMBaseAdapter;Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
.end method

.method public abstract unregisterShakeListener(Landroid/app/Activity;)V
.end method
