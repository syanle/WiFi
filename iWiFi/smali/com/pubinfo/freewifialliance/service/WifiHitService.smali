.class public Lcom/pubinfo/freewifialliance/service/WifiHitService;
.super Landroid/app/Service;
.source "WifiHitService.java"

# interfaces
.implements Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;


# instance fields
.field private ssid:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->timer:Ljava/util/Timer;

    .line 35
    new-instance v0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;-><init>(Lcom/pubinfo/freewifialliance/service/WifiHitService;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->timerTask:Ljava/util/TimerTask;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/service/WifiHitService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public HeartHitErr()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public HeartHitSucc()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public checkWifiType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "c":Ljava/lang/String;
    const-string v1, "chinanet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "ChinaNet"

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "hichinaWifi"

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 69
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 72
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 80
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
