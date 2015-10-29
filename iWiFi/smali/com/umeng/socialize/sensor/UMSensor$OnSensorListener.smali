.class public interface abstract Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
.super Ljava/lang/Object;
.source "UMSensor.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSensorListener"
.end annotation


# virtual methods
.method public abstract onActionComplete(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V
.end method
