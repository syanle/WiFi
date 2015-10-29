.class public abstract Lcom/umeng/socialize/sensor/UMSensor;
.super Ljava/lang/Object;
.source "UMSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;,
        Lcom/umeng/socialize/sensor/UMSensor$SensorType;,
        Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected isNeedSound:Z

.field private volatile isSensorLocked:Z

.field private isStart:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

.field private mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/sensor/UMSensor$SensorType;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    .line 44
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 48
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .line 53
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .line 57
    const-class v0, Lcom/umeng/socialize/sensor/UMSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->TAG:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/umeng/socialize/sensor/UMSensor;->isStart:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isNeedSound:Z

    .line 70
    iput-boolean v1, p0, Lcom/umeng/socialize/sensor/UMSensor;->isSensorLocked:Z

    .line 98
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mActivity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .line 100
    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSensor()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorBaseListener()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    return-object v0
.end method

.method public getSensorStrategy()Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    return-object v0
.end method

.method public getSensorType()Lcom/umeng/socialize/sensor/UMSensor$SensorType;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isSensorLocked:Z

    return v0
.end method

.method public isSoundEnable()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isNeedSound:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isStart:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isSensorLocked:Z

    .line 138
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccuracyChanged -->  accuracy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 315
    return-void
.end method

.method public register()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mActivity:Landroid/app/Activity;

    .line 111
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 110
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    sget-object v1, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 116
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isStart:Z

    .line 126
    :goto_0
    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isStart:Z

    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->TAG:Ljava/lang/String;

    const-string v1, "### \u4f20\u611f\u5668\u521d\u59cb\u5316\u5931\u8d25!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mActivity:Landroid/app/Activity;

    .line 255
    return-void
.end method

.method public setSensor(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensor:Landroid/hardware/Sensor;

    .line 195
    return-void
.end method

.method public setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 206
    return-void
.end method

.method public setSensorStrategy(Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;)V
    .locals 0
    .param p1, "sensorStrategy"    # Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .line 237
    return-void
.end method

.method public setSensorType(Lcom/umeng/socialize/sensor/UMSensor$SensorType;)V
    .locals 0
    .param p1, "sensorType"    # Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorType:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .line 275
    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 0
    .param p1, "sound"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/umeng/socialize/sensor/UMSensor;->isNeedSound:Z

    .line 302
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isSensorLocked:Z

    .line 149
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isSensorLocked:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->isStart:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .line 175
    :cond_0
    return-void
.end method
