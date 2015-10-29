.class Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$1;
.super Ljava/lang/Object;
.source "UMShareStrategy.java"

# interfaces
.implements Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActionComplete(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 252
    return-void
.end method

.method public onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V
    .locals 1
    .param p1, "button"    # Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    .prologue
    .line 245
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "eCode"    # I
    .param p3, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;

    .prologue
    .line 237
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 238
    const-string v0, ""

    const-string v1, "#### \u5206\u4eab\u7b56\u7565  onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onStart()V

    .line 232
    :cond_0
    return-void
.end method
