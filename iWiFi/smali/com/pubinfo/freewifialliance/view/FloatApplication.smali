.class public Lcom/pubinfo/freewifialliance/view/FloatApplication;
.super Landroid/app/Application;
.source "FloatApplication.java"


# instance fields
.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatApplication;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 15
    return-void
.end method


# virtual methods
.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatApplication;->windowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/pubinfo/freewifialliance/broadcast/BootBroadcastReceiver;

    invoke-direct {v1}, Lcom/pubinfo/freewifialliance/broadcast/BootBroadcastReceiver;-><init>()V

    .line 22
    .local v1, "receiver":Lcom/pubinfo/freewifialliance/broadcast/BootBroadcastReceiver;
    invoke-virtual {p0, v1, v0}, Lcom/pubinfo/freewifialliance/view/FloatApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    return-void
.end method
