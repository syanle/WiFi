.class enum Lcom/umeng/socialize/sensor/UMSensor$WhitchButton$1;
.super Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
.source "UMSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;-><init>(Ljava/lang/String;ILcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string v0, "cancel"

    return-object v0
.end method
