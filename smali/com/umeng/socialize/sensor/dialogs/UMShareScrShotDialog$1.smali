.class Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$1;
.super Ljava/lang/Object;
.source "UMShareScrShotDialog.java"

# interfaces
.implements Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActionComplete(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 889
    return-void
.end method

.method public onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V
    .locals 1
    .param p1, "button"    # Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    .prologue
    .line 881
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 884
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "eCode"    # I
    .param p3, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;

    .prologue
    .line 873
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    const-string v0, ""

    const-string v1, "#### \u5206\u4eabDialog  onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 877
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 865
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onStart()V

    .line 868
    :cond_0
    return-void
.end method
