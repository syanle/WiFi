.class public enum Lcom/umeng/socialize/sensor/UMSensor$SensorType;
.super Ljava/lang/Enum;
.source "UMSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/sensor/UMSensor$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

.field private static final synthetic ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$SensorType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType$1;

    const-string v1, "ACCELEROMETER"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/sensor/UMSensor$SensorType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    sget-object v1, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ACCELEROMETER:Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/sensor/UMSensor$SensorType;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/sensor/UMSensor$SensorType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/sensor/UMSensor$SensorType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/sensor/UMSensor$SensorType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensor$SensorType;->ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/sensor/UMSensor$SensorType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
