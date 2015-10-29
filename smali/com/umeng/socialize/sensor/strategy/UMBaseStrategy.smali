.class public abstract Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;
.super Ljava/lang/Object;
.source "UMBaseStrategy.java"

# interfaces
.implements Lcom/umeng/socialize/sensor/strategy/UMSensorStrategy;


# static fields
.field protected static mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

.field protected mScreenshotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScreenshotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .line 36
    invoke-static {}, Lcom/umeng/scrshot/UMScrShotController;->getInstance()Lcom/umeng/scrshot/UMScrShotController;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    .line 44
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mActivity:Landroid/app/Activity;

    .line 45
    return-void
.end method


# virtual methods
.method public getScrShotAdapter()Lcom/umeng/scrshot/adapter/UMBaseAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v0}, Lcom/umeng/scrshot/UMScrShotController;->getScrShotAdapter()Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshotListener()Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScreenshotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    return-object v0
.end method

.method public getSensorListener()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    return-object v0
.end method

.method public setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/umeng/scrshot/adapter/UMBaseAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v0, p1}, Lcom/umeng/scrshot/UMScrShotController;->setScrShotAdapter(Lcom/umeng/scrshot/adapter/UMBaseAdapter;)V

    .line 66
    return-void
.end method

.method public setScreenshotListener(Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mScreenshotListener:Lcom/umeng/scrshot/UMScrShotController$OnScreenshotListener;

    .line 102
    return-void
.end method

.method public setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 0
    .param p1, "sensorListener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .prologue
    .line 83
    sput-object p1, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;->mSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 84
    return-void
.end method

.method public abstract shakeComplete()V
.end method
