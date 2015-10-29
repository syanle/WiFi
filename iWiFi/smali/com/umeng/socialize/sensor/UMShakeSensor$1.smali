.class Lcom/umeng/socialize/sensor/UMShakeSensor$1;
.super Ljava/lang/Object;
.source "UMShakeSensor.java"

# interfaces
.implements Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMShakeSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sensor/UMShakeSensor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->TAG:Ljava/lang/String;

    const-string v2, "####mActivity == null, \u4e0d\u80fd\u622a\u5c4f"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v2, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    instance-of v1, v1, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    check-cast v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    .line 243
    .local v0, "strategy":Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;
    invoke-virtual {v0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    const-string v3, "\u8bf7\u5148\u5173\u95ed\u5f53\u524d\u6447\u4e00\u6447\u5206\u4eab\u7a97\u53e3"

    .line 245
    const/4 v4, 0x0

    .line 244
    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 246
    monitor-exit v2

    goto :goto_0

    .line 238
    .end local v0    # "strategy":Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 250
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-boolean v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->isNeedSound:Z

    if-eqz v1, :cond_3

    .line 251
    # getter for: Lcom/umeng/socialize/sensor/UMShakeSensor;->mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMShakeSensor;->access$0()Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;->start()V

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v1, :cond_5

    .line 256
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v1, p1}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onActionComplete(Landroid/hardware/SensorEvent;)V

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    invoke-interface {v1}, Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;->shakeComplete()V

    .line 238
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v1, v1, Lcom/umeng/socialize/sensor/UMShakeSensor;->TAG:Ljava/lang/String;

    const-string v3, "#### UMShakeSensor mSensorBaseListener == null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V
    .locals 1
    .param p1, "action"    # Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "eCode"    # I
    .param p3, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->TAG:Ljava/lang/String;

    const-string v1, "### \u4f20\u611f\u5668onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;->this$0:Lcom/umeng/socialize/sensor/UMShakeSensor;

    iget-object v0, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onStart()V

    .line 285
    :cond_0
    return-void
.end method
