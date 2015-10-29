.class enum Lcom/umeng/socialize/sensor/UMSensor$SensorType$1;
.super Lcom/umeng/socialize/sensor/UMSensor$SensorType;
.source "UMSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensor$SensorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/sensor/UMSensor$SensorType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/sensor/UMSensor$SensorType;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/umeng/socialize/sensor/UMShakeSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
