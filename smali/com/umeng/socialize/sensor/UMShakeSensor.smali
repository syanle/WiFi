.class public Lcom/umeng/socialize/sensor/UMShakeSensor;
.super Lcom/umeng/socialize/sensor/UMSensor;
.source "UMShakeSensor.java"


# static fields
.field public static final DEFAULT_SHAKE_SPEED:I = 0x708

.field private static final UPTATE_INTERVAL_TIME:I = 0x64

.field private static mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;


# instance fields
.field private mLastShakeTime:J

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorShakeListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

.field private mShakeInterval:I

.field private mSpeedShreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    const/16 v0, 0x708

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/sensor/UMShakeSensor;-><init>(Landroid/app/Activity;I)V

    .line 86
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "speedShreshold"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/sensor/UMSensor;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/sensor/UMSensor$SensorType;)V

    .line 45
    const/16 v0, 0x708

    iput v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSpeedShreshold:I

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mShakeInterval:I

    .line 62
    iput v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastX:F

    .line 63
    iput v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastY:F

    .line 64
    iput v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastZ:F

    .line 223
    new-instance v0, Lcom/umeng/socialize/sensor/UMShakeSensor$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/sensor/UMShakeSensor$1;-><init>(Lcom/umeng/socialize/sensor/UMShakeSensor;)V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorShakeListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 96
    iput p2, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSpeedShreshold:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorBaseListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 98
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/UMShakeSensor;->initAudioPlayer()V

    .line 99
    return-void
.end method

.method static synthetic access$0()Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    return-object v0
.end method

.method private initAudioPlayer()V
    .locals 5

    .prologue
    .line 197
    sget-object v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    .line 200
    iget-object v2, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->RAW:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 201
    const-string v4, "shake_sound"

    .line 200
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 199
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mAudioPlayer:Lcom/umeng/socialize/sensor/utils/UMAudioPlayer;

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public getShakeinterval()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mShakeInterval:I

    return v0
.end method

.method public getSpeedShreshold()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSpeedShreshold:I

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    .local v1, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastUpdateTime:J

    sub-long v8, v1, v13

    .line 114
    .local v8, "timeInterval":J
    const-wide/16 v13, 0x64

    cmp-long v13, v8, v13

    if-gez v13, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastUpdateTime:J

    .line 121
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 122
    .local v10, "x":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 123
    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 126
    .local v12, "z":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastX:F

    sub-float v3, v10, v13

    .line 127
    .local v3, "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastY:F

    sub-float v4, v11, v13

    .line 128
    .local v4, "deltaY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastZ:F

    sub-float v5, v12, v13

    .line 131
    .local v5, "deltaZ":F
    move-object/from16 v0, p0

    iput v10, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastX:F

    .line 132
    move-object/from16 v0, p0

    iput v11, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastY:F

    .line 133
    move-object/from16 v0, p0

    iput v12, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastZ:F

    .line 135
    mul-float v13, v3, v3

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    .line 136
    mul-float v14, v5, v5

    .line 135
    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 137
    long-to-double v15, v8

    .line 135
    div-double/2addr v13, v15

    .line 137
    const-wide v15, 0x40c3880000000000L    # 10000.0

    .line 135
    mul-double v6, v13, v15

    .line 139
    .local v6, "speed":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSpeedShreshold:I

    int-to-double v13, v13

    cmpl-double v13, v6, v13

    if-ltz v13, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastShakeTime:J

    sub-long v13, v1, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mShakeInterval:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorShakeListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onActionComplete(Landroid/hardware/SensorEvent;)V

    .line 145
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mLastShakeTime:J

    goto :goto_0
.end method

.method public setSensorStrategy(Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;)V
    .locals 2
    .param p1, "sensorStrategy"    # Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    .line 213
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorStrategy:Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSensorShakeListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;->setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setShakeinterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mShakeInterval:I

    .line 189
    return-void
.end method

.method public setSpeedShreshold(I)V
    .locals 2
    .param p1, "speedShreshold"    # I

    .prologue
    .line 164
    if-gez p1, :cond_0

    .line 165
    const/4 p1, 0x0

    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->TAG:Ljava/lang/String;

    const-string v1, "speedShreshold\u901f\u5ea6\u9600\u503c\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u81ea\u52a8\u91cd\u7f6e\u4e3a0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iput p1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;->mSpeedShreshold:I

    .line 169
    return-void
.end method
