.class public enum Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
.super Ljava/lang/Enum;
.source "UMSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "WhitchButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUTTON_CANCEL:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

.field public static final enum BUTTON_SHARE:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

.field private static final synthetic ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    new-instance v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton$1;

    const-string v1, "BUTTON_CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_CANCEL:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    .line 355
    new-instance v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton$2;

    const-string v1, "BUTTON_SHARE"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_SHARE:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    .line 348
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    sget-object v1, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_CANCEL:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_SHARE:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->ENUM$VALUES:[Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
